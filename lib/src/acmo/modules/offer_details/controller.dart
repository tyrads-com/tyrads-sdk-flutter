import 'package:dio/dio.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/toasts.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/models/offer_details.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/repository.dart';
import 'package:tyrads_sdk/src/acmo/modules/tickets/page.dart';
import 'package:tyrads_sdk/src/acmo/modules/tracking/activities.dart';
import 'package:tyrads_sdk/src/acmo/modules/usage_stats/controller.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

import '../../core/helpers/common.dart';

class AcmoOffersDetailsController {
  AcmoOffersDetailsController(this.id);
  var allCompletedEvents = <PayoutEvents>[];
  var allActiveEvents = <PayoutEvents>[];
  var purchaseEvents = <MicroChargeEvents>[];
  var duplicateEvents = <MicroChargeEvents>[];
  var dailyPurchaseEvents = <MicroChargeEvents>[];
  var dailyRewards = <MicroChargeEvents>[];
  var quickRewards = <MicroChargeEvents>[];
  var allPayoutEvents = <PayoutEvents>[];
  var currencyDetails = Currency();
  var maxPoints = 0;
  var maxPurchasePoints = 0;
  var earnedPurchasePoints = 0;
  var playClicked = false;
  var launched = false;
  var offerLoading = false;
  var fd = <String, dynamic>{};
  late int id;
  final _repo = AcmoOfferDetailsRepository();
  late AcmoOfferDetailsModel item;
  var isPlaytimeEvent = false;
  PayoutEvents? playtimeEvent;
  double totalEarnedConverted = 0.0;
  double totalPossibleEarning = 1.0;
  double totalPlayTimePoints = 0.0;
  int totalPlayTimeSeconds = 0;
  List<PlaytimeEvents> playtimeEvents = [];

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
          acmoSnackbar("campaign not installed or tracked for the user");
        }
        Tyrads.instance.route = null;
        Tyrads.instance.campaignID = null;
      }
      maxPoints = 0;
      maxPurchasePoints = 0;
      earnedPurchasePoints = 0;
      Tyrads.instance.triggerCallback(TyradsCallbackType.campaignDetail, {
        'campaignId': item.campaignId,
        'campaignName': item.campaignName,
        'appId': item.app.id,
        'appName': item.app.title,
        'appCategory': item.app.storeCategory,
        'clickUrl': item.tracking.clickUrl,
        's2sClickUrl': item.tracking.s2sClickUrl,
      });
      allCompletedEvents.clear();
      allActiveEvents.clear();
      purchaseEvents.clear();
      dailyRewards.clear();
      quickRewards.clear();
      duplicateEvents.clear();
      dailyPurchaseEvents.clear();
      allPayoutEvents = item.payoutEvents
          .where((item) => item.identifier.toLowerCase() != 'install')
          .toList();
      currencyDetails = item.currency;
      playtimeEvent = null;
      item.payoutEvents.forEach((element) async {
        if (element.payoutAmount == 0) return;
        if (element.identifier.toLowerCase() == 'install') return;
        if (element.conversionStatus?.toLowerCase() == "approved" ||
            element.conversionStatus?.toLowerCase() == "rejected" ||
            element.conversionStatus?.toLowerCase() == "pending") {
          allCompletedEvents.add(element);
        } else {
          allActiveEvents.add(element);
        }
      });
      item.microChargeEvents.forEach((element) async {
        (element.allowDuplicateEvents ? dailyRewards : quickRewards)
            .add(element);
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
        if (element.conversionStatus?.toLowerCase() == "approved") {
          allCompletedEvents.add(element);
        } else {
          if (playtimeEvent == null) {
            playtimeEvent = element;
            allActiveEvents.insert(0, element);
          }
        }
      });
      totalPossibleEarning = item.engagementOverride.currencySales != null
          ? (item.engagementOverride.currencySales?.multiplier ?? 1) *
              item.campaignPayout.totalPayoutConverted
          : item.campaignPayout.totalPayoutConverted;
      totalEarnedConverted = item.earnedPayout.earnedPlayablePayoutConverted +
          item.earnedPayout.earnedMicrochargePayoutConverted +
          item.earnedPayout.earnedPlaytimePayoutConverted;

      if (item.hasPlaytimeEvents && item.playtimeEvents.isNotEmpty) {
        playtimeEvents = filterPlaytimeEvents(item.playtimeEvents);
        totalPlayTimePoints = item.playtimeEvents.fold(
            0.0,
            (previousValue, element) =>
                previousValue + element.payoutAmountConverted);
        totalPlayTimeSeconds = item.playtimeEvents.fold(
            0,
            (previousValue, element) =>
                previousValue + element.timePlayedSeconds);
      }
      Tyrads.instance.track(TyradsActivity.targetedCampaignDetailShown);
      return item;
    } finally {
      var usageStatsController = AcmoControllerUsageStats();
      usageStatsController.saveUsageStats();
    }
  }

  PayoutEvents? getCurrentActiveEvent(
    List<PayoutEvents> events,
    bool isInstalled,
  ) {
    try {
      if (isInstalled) {
        return events.firstWhere(
          (e) => e.conversionStatus == null,
        );
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  List<PayoutEvents> getPayoutEventsToShow(bool showAll) {
    return showAll
        ? allPayoutEvents
        : (allPayoutEvents.length > 1 &&
                allActiveEvents.any((e) => e.conversionStatus == null))
            ? allPayoutEvents.sublist(
                allPayoutEvents.indexWhere((e) => e.conversionStatus == null) -
                    (allPayoutEvents.first.conversionStatus == null ? 0 : 1),
                allPayoutEvents.indexWhere((e) => e.conversionStatus == null) +
                    (allPayoutEvents.first.conversionStatus == null ? 2 : 1))
            : allPayoutEvents.take(2).toList();
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
      } else {
        Tyrads.instance.track(TyradsActivity.campaignActivated);
      }
      await _repo.activateOffer(id: id);
      Tyrads.instance.triggerCallback(TyradsCallbackType.campaignActivated, {
        'campaignId': item.campaignId,
        'campaignName': item.campaignName,
        'appId': item.app.id,
        'appName': item.app.title,
        'appCategory': item.app.storeCategory,
        'clickUrl': item.tracking.clickUrl,
        's2sClickUrl': item.tracking.s2sClickUrl,
      });
    }
    if (item.tracking.s2sClickUrl != null) {
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

  List<PlaytimeEvents> filterPlaytimeEvents(List<PlaytimeEvents> events) {
    if (events.isEmpty) return [];

    for (int i = 0; i < events.length; i++) {
      final current = events[i];
      final status = current.conversionStatus.toLowerCase();

      if (status.isEmpty) {
        List<PlaytimeEvents> result = [];

        int collected = 0;
        for (int j = i - 1; j >= 0 && collected < 2; j--) {
          final prevStatus = events[j].conversionStatus.toLowerCase();
          if (prevStatus == 'approved') {
            result.insert(0, events[j]);
            collected++;
          }
        }

        result.add(current);
        return result;
      }
    }

    return events
        .where((e) => e.conversionStatus.toLowerCase() == 'approved')
        .take(3)
        .toList();
  }
}
