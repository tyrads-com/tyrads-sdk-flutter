import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/common.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/toasts.dart';
import 'package:tyrads_sdk/src/acmo/modules/premium_widgets/models/currency_sale_model/currency_sale_model.dart';
import 'package:tyrads_sdk/src/acmo/modules/premium_widgets/models/offers_model/offers.dart';
import 'package:tyrads_sdk/src/acmo/modules/premium_widgets/repository.dart';
import 'package:tyrads_sdk/src/acmo/modules/tracking/activities.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoPremiumWidgetsController {
  AcmoPremiumWidgetsController._();
  static final AcmoPremiumWidgetsController instance =
      AcmoPremiumWidgetsController._();

  void Function()? _refreshData;

  void attach(void Function() fn) {
    _refreshData = fn;
  }

  void detach() {
    _refreshData = null;
  }

  void refresh() {
    _refreshData?.call();
  }

  final _repo = AcmoOffersRepository();

  bool loading = true;
  Future<List<AcmoOffersModel>>? _ongoing;

  List<AcmoOffersModel> hotOffers = [];
  final ValueNotifier<int> activatedCount = ValueNotifier<int>(0);
  AcmoOfferCurrencySaleModel currencySales = const AcmoOfferCurrencySaleModel();
  var offerLoading = false;
  bool reloadAfterOfferActivation = false;
  bool redirectToActivePage = false;

  DateTime? _lastFetchTime;
  Duration cacheTTL = const Duration(minutes: 5);
  Duration minRefreshInterval = const Duration(seconds: 60);

  bool get isCacheValid {
    if (_lastFetchTime == null) return false;
    return DateTime.now().difference(_lastFetchTime!) < cacheTTL;
  }

  bool get isRecentlyRefreshed {
    if (_lastFetchTime == null) return false;
    return DateTime.now().difference(_lastFetchTime!) < minRefreshInterval;
  }

  Future<List<AcmoOffersModel>> loadTopOffers({bool force = false}) async {
    if (!force && isCacheValid && hotOffers.isNotEmpty) {
      return hotOffers;
    }
    if (_ongoing != null) return _ongoing!;
    if (!force && isRecentlyRefreshed) {
      return hotOffers;
    }
    loading = true;
    _ongoing = _fetchOffers().whenComplete(() {
      _ongoing = null;
    });
    return _ongoing!;
  }

  Future<List<AcmoOffersModel>> _fetchOffers() async {
    try {
      final waitFuture = Tyrads.instance.waitAndCheck();
      if (!(await waitFuture)) return hotOffers;

      final apiFuture = Future.wait([
        _repo.getOffers(),
        _repo.getEngagement(),
        _repo.getActivatedOfferSummary(),
      ]);

      final apiResults = await apiFuture;

      final offers = apiResults[0] as AcmoOffersResponseModel;
      currencySales = apiResults[1] as AcmoOfferCurrencySaleModel;
      activatedCount.value = apiResults[2] as int;

      final sortedOffers = await compute(_sortAndPrepareOffers, offers.data);

      hotOffers = sortedOffers;
      _lastFetchTime = DateTime.now();
      loading = false;
      
      return hotOffers;
    } catch (e) {
      return hotOffers;
    }
  }

  Future<void> openOffer({required AcmoOffersModel item}) async {
    final campaignId = item.campaignId;
    final clickUrl = item.tracking.clickUrl;
    final s2sClickUrl = item.tracking.s2sClickUrl;
    final previewUrl = item.app.previewUrl;
    final isInstalled = item.isInstalled;
    final isRetryDownload = item.isRetryDownload;

    if (offerLoading) return;
    offerLoading = true;
    String url = clickUrl ?? '';
    if (isInstalled) {
      url = previewUrl;
    } else {
      if (isRetryDownload) {
        Tyrads.instance.track(TyradsActivity.campaignActivatedRetry);
      } else {
        Tyrads.instance.track(TyradsActivity.campaignActivated);
      }
      await _repo.activateOffer(id: campaignId);
      reloadAfterOfferActivation = true;
      redirectToActivePage = true;
      Tyrads.instance.triggerCallback(TyradsCallbackType.campaignActivated, {
        'campaignId': campaignId,
        'campaignName': item.campaignName,
        'appId': item.app.id,
        'appName': item.app.title,
        'appCategory': item.app.storeCategory,
        'clickUrl': clickUrl,
        's2sClickUrl': s2sClickUrl,
      });
    }
    if (s2sClickUrl != null) {
      final res = await Dio().get(s2sClickUrl);
      if (res.statusCode != 200) {
        acmoSnackbar("Error while sending click");
        offerLoading = false;
        return;
      }
    }
    await acmoLaunchURLForce(url);
    offerLoading = false;
  }
}

List<AcmoOffersModel> _sortAndPrepareOffers(List<AcmoOffersModel> data) {
  final list =
      data.where((e) => e.campaignPayout.totalPayoutConverted > 0).toList();
  list.sort((a, b) {
    if (a.premium != b.premium) return b.premium ? 1 : -1;
    return b.sortingScore.compareTo(a.sortingScore);
  });
  return list.length > 5 ? list.sublist(0, 5) : list;
}
