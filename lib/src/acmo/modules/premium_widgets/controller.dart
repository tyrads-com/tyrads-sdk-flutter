import 'package:dio/dio.dart';
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

  void Function()? _refresh;

  void attach(void Function() fn) {
    _refresh = fn;
  }

  void detach() {
    _refresh = null;
  }

  void refresh() {
    _refresh?.call();
  }

  final _repo = AcmoOffersRepository();

  bool loading = true;
  List<AcmoOffersModel> hotOffers = [];
  final ValueNotifier<int> activatedCount = ValueNotifier<int>(0);
  AcmoOfferCurrencySaleModel currencySales = const AcmoOfferCurrencySaleModel();
  var offerLoading = false;
  bool redirectToActivePage = false;

  Future<List<AcmoOffersModel>> loadTopOffers() async {
    try {
      loading = true;
      if (await Tyrads.instance.waitAndCheck() == false) {
        return [];
      }
      var responses = await Future.wait([
        _repo.getOffers(),
        _repo.getEngagement(),
        _repo.getActivatedOfferSummary(),
      ]);
      var response = responses[0] as AcmoOffersResponseModel;
      currencySales = responses[1] as AcmoOfferCurrencySaleModel;
      activatedCount.value = responses[2] as int;
      hotOffers.clear();
      hotOffers.addAll(response.data);
      hotOffers.sort((a, b) {
        if (a.premium != b.premium) {
          return b.premium ? 1 : -1;
        }
        return b.sortingScore.compareTo(a.sortingScore);
      });
      hotOffers.removeWhere(
          (element) => element.campaignPayout.totalPayoutConverted <= 0);
      hotOffers =
          hotOffers.sublist(0, hotOffers.length > 5 ? 5 : hotOffers.length);
      loading = false;
      return hotOffers;
    } catch (e) {
      return [];
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
