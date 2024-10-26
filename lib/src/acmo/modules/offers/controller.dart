import 'package:shared_preferences/shared_preferences.dart';
import 'package:tyrads_sdk/src/acmo/core/constants/key_names.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/models/offers.dart';
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

  loadOffers() async {
    try {
      var usageStatsController = AcmoControllerUsageStats();
      await usageStatsController.checkUsageStats();
      var r = await _repo.getOffers();
      items.clear();
      items.addAll(r.data);
      items.removeWhere(
          (element) => element.campaignPayout.totalPayoutConverted <= 0);
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
}
