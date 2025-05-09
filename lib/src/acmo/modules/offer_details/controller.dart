import 'dart:io';
import 'package:dio/dio.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/toasts.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/models/microcharge/microcharge.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/models/offer_details.dart' hide MicroCharge;
import 'package:tyrads_sdk/src/acmo/modules/offer_details/repository.dart';
import 'package:tyrads_sdk/src/acmo/modules/tickets/page.dart';
import 'package:tyrads_sdk/src/acmo/modules/tracking/activities.dart';
import 'package:tyrads_sdk/src/acmo/modules/usage_stats/controller.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

import '../../core/helpers/common.dart';
import 'models/microcharge/microcharge_data.dart';

class AcmoOffersDetailsController {
  AcmoOffersDetailsController(this.id);
  var allCompletedEvents = <PayoutEvents>[];
  var allActiveEvents = <PayoutEvents>[];
  var purchaseEvents = <MicroChargeEvents>[];
  var duplicateEvents = <MicroChargeEvents>[];
  var dailyPurchaseEvents = <MicroChargeEvents>[];
  var allPayoutEvents = <PayoutEvents>[];
  var maxPoints = 0;
  var maxPurchasePoints = 0;
  var earnedPurchasePoints = 0;
  var playClicked = false;
  var launched = false;
  var offerLoading = false;
  var fd = <String, dynamic>{};
  late MicroCharge microCharge;
  late int id;
  final _repo = AcmoOfferDetailsRepository();
  late AcmoOfferDetailsModel item;
  var isPlaytimeEvent = false;
  PayoutEvents? playtimeEvent;

  loadOfferDetails(id) async {
    try {
      var r = await _repo.getOfferDetails(id);
      item = r.data;
      if (Tyrads.instance.route == TyradsDeepRoutes.CAMPAIGN_TICKETS) {
        if (item.isInstalled) {
          Tyrads.instance.to(AcmoTicketsPage(
            id: Tyrads.instance.campaignID!,
          ));
        } else {
          acmoSnackbar(
              "campaign not installed or tracked for the user");
        }
        Tyrads.instance.route = null;
        Tyrads.instance.campaignID = null;
      }
      maxPoints = 0;
      maxPurchasePoints = 0;
      earnedPurchasePoints = 0;
      allCompletedEvents.clear();
      allActiveEvents.clear();
      purchaseEvents.clear();
      duplicateEvents.clear();
      dailyPurchaseEvents.clear();
      allPayoutEvents = item.payoutEvents;
      microCharge = microChargeData;
      playtimeEvent = null;
      item.payoutEvents.forEach((element) async {
        if (element.payoutAmount == 0) return;
        if (element.identifier.toLowerCase() == 'install') return;
        if (element.conversionStatus.toLowerCase() == "approved"
            || element.conversionStatus.toLowerCase() == "rejected"
            || element.conversionStatus.toLowerCase() == "pending"
        ) {
          allCompletedEvents.add(element);
        } else {
          allActiveEvents.add(element);
        }
      });
      item.microChargeEvents.forEach((element) async {
        if (element.payoutAmount == 0) return;
        maxPoints += element.payoutAmountConverted.toInt();
        maxPurchasePoints += element.payoutAmountConverted.toInt();
        if (element.conversionStatus.isNotEmpty) {
          earnedPurchasePoints += element.payoutAmountConverted.toInt();
        }
        if (element.allowDuplicateEvents) {
          if (element.eventCategory.toLowerCase() == "purchase") {
            dailyPurchaseEvents.add(element);
          } else {
            duplicateEvents.add(element);
          }
        } else {
          purchaseEvents.add(element);
        }
      });
      item.playtimeEvents.forEach((e) {
        if (e.payoutAmountConverted <= 0) {
          return;
        }
        isPlaytimeEvent = true;
        int totalMinutes = e.timePlayedSeconds ~/ 60;
        var element = PayoutEvents(
            id: e.id,
            conversionStatus: e.conversionStatus,
            payoutAmount: e.payoutAmount,
            payoutAmountConverted: e.payoutAmountConverted,
            totalPlaytime: totalMinutes,
            eventName: "$totalMinutes minute${totalMinutes == 1 ? '' : 's'}",
            isPlaytime: true);
        if (element.conversionStatus.toLowerCase() == "approved") {
          allCompletedEvents.add(element);
        } else {
          if (playtimeEvent == null) {
            playtimeEvent = element;
            allActiveEvents.insert(0, element);
          }
        }
      });
      Tyrads.instance.track(TyradsActivity.targetedCampaignDetailShown);
      return item;
    } finally {
      var usageStatsController = AcmoControllerUsageStats();
      usageStatsController.saveUsageStats();
    }
  }

  openOffer() async {
    if (offerLoading) return;
    offerLoading = true;

    // Commented out code for playtime event handling
    // if (isPlaytimeEvent && Platform.isAndroid) {
    //   var prefs = await SharedPreferences.getInstance();
    //   var pkgs =
    //       prefs.getStringList(AcmoKeyNames.PLAY_PER_MINUTE_PACKAGES) ?? [];
    //   if (!pkgs.contains(item.app.packageName)) {
    //     pkgs.add(item.app.packageName);
    //     await prefs.setStringList(AcmoKeyNames.PLAY_PER_MINUTE_PACKAGES, pkgs);
    //   }
    //   var playPerMinutesController = AcmoControllerPlayPerMinute();
    //   var permissionsEnabled =
    //       await playPerMinutesController.startForegroundServices();
    //   if (!permissionsEnabled) {
    //     acmoSnackbar("Please provide permissions to continue");
    //     offerLoading = false;
    //     return;
    //   }
    // }

    String url = item.tracking.clickUrl ?? '';
    if (item.isInstalled || launched) {
      url = item.app.previewUrl;
    } else {
      if (item.isRetryDownload) {
        Tyrads.instance.track(TyradsActivity.campaignActivatedRetry);
      }else{
        Tyrads.instance.track(TyradsActivity.campaignActivated);
      }
      await _repo.activateOffer(id: id);
    }
    if(item.tracking.s2sClickUrl != null){
      final res = await Dio().get(item.tracking.s2sClickUrl!);
      if (res.statusCode != 200) {
        acmoSnackbar("Error while sending click");
        offerLoading = false;
        return;
      }
    }

    launched = true;
    await acmoLaunchURLForce(url);
    offerLoading = false;
  }
}
