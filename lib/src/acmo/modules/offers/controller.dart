import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tyrads_sdk/src/acmo/core/constants/key_names.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/common.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/toasts.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/models/offers.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/new_offerwall/models/currency_sale_model.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/repository.dart';
import 'package:tyrads_sdk/src/acmo/modules/tracking/activities.dart';
import 'package:tyrads_sdk/src/acmo/modules/usage_stats/controller.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoOffersController {
  final _repo = AcmoOffersRepository();
  List<AcmoOffersModel> items = [];

  List<AcmoOffersModel> expiringItems = [];
  List<AcmoOffersModel> activeItems = [];
  List<AcmoOffersModel> completedItems = [];

  List<AcmoOffersModel> hotOffers = [];
  List<AcmoOffersModel> allItems = [];

  AcmoOfferCurrencySaleModel currencySales = const AcmoOfferCurrencySaleModel();

  // for dashboard
  bool loading = true;
  List<AcmoOffersModel> newOffers = [];
  var offerLoading = false;
  
  loadOffers() async {
    try {
      var usageStatsController = AcmoControllerUsageStats();
      await usageStatsController.checkUsageStats();
      var responses = await Future.wait([
        _repo.getOffers(),
        _repo.getEngagement(),
      ]);
      currencySales = responses[1] as AcmoOfferCurrencySaleModel;
      var r = responses[0] as AcmoOffersResponseModel;
      hotOffers.clear();
      items.clear();
      items.addAll(r.data);
      items.removeWhere(
          (element) => element.campaignPayout.totalPayoutConverted <= 0);
      hotOffers.addAll(items);
      hotOffers.sort((a, b) {
        // First sort by premium status
        if (a.premium != b.premium) {
          return b.premium ? 1 : -1; // Premium offers go first
        }
        // Then sort by sorting score
        return b.sortingScore.compareTo(a.sortingScore);
      });

      hotOffers = hotOffers.sublist(0, hotOffers.length > 5 ? 5 : hotOffers.length);

      // Remove all offers in hotOffers from items based on their IDs
      var hotOfferIds = hotOffers.map((offer) => offer.campaignId).toSet();
      items.removeWhere((element) => hotOfferIds.contains(element.campaignId));
      allItems = [...items, ...hotOffers];

      Tyrads.instance.track(TyradsActivity.targetedCampaignShown);
      return items;
    } finally {}
  }

  loadActiveOffers() async {
    try {
      var r = await _repo.getActiveOffers();
      items.clear();
      completedItems.clear();
      expiringItems.clear();
      activeItems.clear();
      items.addAll(r.data);

      for (var element in items) {
        if (element.status.toLowerCase() == "suspended") {
          completedItems.add(element);
        } else if (element.status.toLowerCase() == "paused") {
          expiringItems.add(element);
        } else {
          activeItems.add(element);
        }
      }
      return items;
    } finally {}
  }

  saveActivePackages() async {
    try {
      var r = await _repo.getActiveOffers();
      var pkgs = <String>[];
      r.data.forEach((element) {
        pkgs.add(element.app.packageName);
      });
      var prefs = await SharedPreferences.getInstance();
      await prefs.setStringList(AcmoKeyNames.PLAY_PER_MINUTE_PACKAGES, pkgs);
    } finally {}
  }
  Future< List<AcmoOffersModel>>loadTopOffers() async {
    try {
      loading = true;
      if(await Tyrads.instance.waitAndCheck() == false){
        return [];
      }
      var repo = AcmoOffersRepository();
      var response = await repo.getOffers();
      newOffers.clear();
      hotOffers.clear();
      newOffers.addAll(response.data);
      hotOffers.addAll(response.data);
      newOffers.sort((a, b) {
        if (a.createdOn == null && b.createdOn == null) return 0;
        if (a.createdOn == null) return 1;
        if (b.createdOn == null) return -1;
        return b.createdOn!.compareTo(a.createdOn!);
      });

      hotOffers.sort((a, b) {
        // First sort by premium status
        if (a.premium != b.premium) {
          return b.premium ? 1 : -1; // Premium offers go first
        }
        // Then sort by sorting score
        return b.sortingScore.compareTo(a.sortingScore);
      });
      newOffers.removeWhere(
          (element) => element.campaignPayout.totalPayoutConverted <= 0);
      hotOffers.removeWhere(
          (element) => element.campaignPayout.totalPayoutConverted <= 0);
      newOffers = newOffers.sublist(0, newOffers.length > 5 ? 5 : newOffers.length);
      hotOffers = hotOffers.sublist(0, hotOffers.length > 5 ? 5 : hotOffers.length);
      loading = false;
      return hotOffers;
    } catch (e) {
      return [];
    }
  }

  Future<void> openOffer(AcmoOffersModel item) async {
    if (offerLoading) return;
    offerLoading = true;
    String url = item.tracking.clickUrl ?? '';
    if (item.isInstalled) {
      url = item.app.previewUrl;
    } else {
      if (item.isRetryDownload) {
        Tyrads.instance.track(TyradsActivity.campaignActivatedRetry);
      }else{
        Tyrads.instance.track(TyradsActivity.campaignActivated);
      }
      await _repo.activateOffer(id: item.campaignId);
    }
    if(item.tracking.s2sClickUrl != null){
      final res = await Dio().get(item.tracking.s2sClickUrl!);
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
