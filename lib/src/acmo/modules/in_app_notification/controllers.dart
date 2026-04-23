import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/modules/in_app_notification/models/limited_time_offer/limited_time_offer.dart';
import 'package:tyrads_sdk/src/acmo/modules/in_app_notification/repository.dart';
import 'package:tyrads_sdk/src/acmo/core/constants/key_names.dart';
import 'package:tyrads_sdk/src/acmo/modules/premium_widgets/models/currency_sale_model/currency_sale_model.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoInAppNotificationController {
  AcmoInAppNotificationController._();
  static final AcmoInAppNotificationController instance =
      AcmoInAppNotificationController._();

  Future<void> init() async {
    await Future.wait([
      loadActiveOffers(),
      loadEngagement(),
    ]);
  }

  final _repo = AcmoInAppNotificationRepository();

  List<ActiveCampaign> activeOffers = [];

  CurrencySales? currencySales;
  double? currencySaleMultiplier;
  int currencySaleRemainingSeconds = 0;

  Future<void> loadActiveOffers() async {
    try {
      final result = await _repo.getActiveOffers();
      final filteredOffers = filterLimitedOffersWithEvents(result.data);
      activeOffers = filteredOffers.toList();
    } catch (e) {
      debugPrint("[Active Offers]: ${e.toString()}");
    }
  }

  Set<ActiveCampaign> filterLimitedOffersWithEvents(
    List<AcmoActiveOffers> activeOffers,
  ) {
    final filteredCampaigns = activeOffers
        .where((offer) => offer.groupName.toLowerCase() == "hotdeals")
        .expand((offer) {
          return offer.campaigns;
        })
        .where((campaign) {
          return campaign.limitedTimeEvents.isNotEmpty;
        })
        .where((e) => e.status.toLowerCase() != 'suspended' && e.isInstalled)
        .where((e) => e.limitedTimeEvents
            .any((e) => e.conversionStatus?.toLowerCase() != "approved"))
        .toSet();
    return filteredCampaigns;
  }

  Future<void> loadEngagement() async {
    try {
      final result = await _repo.getEngagement();
      currencySales = result.data?.currencySales;
      currencySaleMultiplier = result.data?.currencySales?.multiplier;
      currencySaleRemainingSeconds =
          result.data?.currencySales?.remainingTimeSeconds ?? 0;
    } catch (e) {
      debugPrint("[Engagement]: ${e.toString()}");
    }
  }

  void clear() {
    activeOffers.clear();
    currencySales = null;
  }

  Future<bool> hasShownCurrencySalesNotification(String saleId) async {
    if (saleId.isEmpty) return false;
    final String key =
        '${AcmoKeyNames.HAS_SHOWN_CURRENCY_SALES_NOTIFICATION}${Tyrads.instance.publisherUserID}';
    final String? data = Tyrads.instance.prefs.getString(key);
    if (data == null) return false;

    try {
      final Map<String, dynamic> json = jsonDecode(data);
      final String today = DateTime.now().toIso8601String().split('T')[0];
      final String? lastShown = json[saleId];
      return lastShown == today;
    } catch (e) {
      return false;
    }
  }

  Future<void> markCurrencySalesNotificationAsShown(String saleId) async {
    if (saleId.isEmpty) return;
    final String key =
        '${AcmoKeyNames.HAS_SHOWN_CURRENCY_SALES_NOTIFICATION}${Tyrads.instance.publisherUserID}';
    final String? data = Tyrads.instance.prefs.getString(key);
    Map<String, dynamic> json = {};
    if (data != null) {
      try {
        json = jsonDecode(data);
      } catch (_) {}
    }

    final String today = DateTime.now().toIso8601String().split('T')[0];
    json[saleId] = today;
    await Tyrads.instance.prefs.setString(key, jsonEncode(json));
  }

  Future<bool> hasShownLimitedTimeOfferNotification(List<int> campaignIds) async {
    if (campaignIds.isEmpty) return false;
    final String key =
        '${AcmoKeyNames.HAS_SHOWN_LIMITED_TIME_OFFER_NOTIFICATION}${Tyrads.instance.publisherUserID}';
    final String? data = Tyrads.instance.prefs.getString(key);
    if (data == null) return false;

    try {
      final Map<String, dynamic> json = jsonDecode(data);
      final String today = DateTime.now().toIso8601String().split('T')[0];

      for (final id in campaignIds) {
        final String? lastShown = json[id.toString()];
        if (lastShown != today) return false;
      }
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<void> markLimitedTimeOfferNotificationAsShown(List<int> campaignIds) async {
    if (campaignIds.isEmpty) return;
    final String key =
        '${AcmoKeyNames.HAS_SHOWN_LIMITED_TIME_OFFER_NOTIFICATION}${Tyrads.instance.publisherUserID}';
    final String? data = Tyrads.instance.prefs.getString(key);
    Map<String, dynamic> json = {};
    if (data != null) {
      try {
        json = jsonDecode(data);
      } catch (_) {}
    }

    final String today = DateTime.now().toIso8601String().split('T')[0];
    for (final id in campaignIds) {
      json[id.toString()] = today;
    }
    await Tyrads.instance.prefs.setString(key, jsonEncode(json));
  }

  bool showCountdown(PayoutEvents event) {
    final allowDuplicateEvents = event.allowDuplicateEvents;
    final conversionStatus = event.conversionStatus;
    final dailyCount = event.dailyCount;
    final dailyLimit = event.dailyLimit;

    final isDailyLimitIncomplete =
        dailyCount == 0 || dailyLimit == 0 || dailyCount < dailyLimit;

    if (!allowDuplicateEvents) {
      return conversionStatus == null;
    }
    if (isDailyLimitIncomplete) {
      return true;
    }
    return false;
  }

  String getFinalStatusString(PayoutEvents event) {
    final allowDuplicateEvents = event.allowDuplicateEvents;
    final conversionStatus = event.conversionStatus;
    final dailyCount = event.dailyCount;
    final dailyLimit = event.dailyLimit;

    if (!allowDuplicateEvents) {
      if (conversionStatus == 'approved') return 'Completed';
      if (conversionStatus == 'rejected') return 'Rejected';
    }

    final isDailyLimitComplete =
        dailyCount != 0 && dailyLimit != 0 && dailyCount == dailyLimit;

    if (allowDuplicateEvents && isDailyLimitComplete) {
      return 'Completed';
    }
    return '';
  }

  String formatTimer(double? remainingSeconds) {
    if (remainingSeconds == null || remainingSeconds <= 0) return '';

    final int days = (remainingSeconds / 86400).floor();
    final int hours = ((remainingSeconds % 86400) / 3600).floor();
    final int minutes = ((remainingSeconds % 3600) / 60).floor();
    final int seconds = (remainingSeconds % 60).floor();

    String pad(int value) => value.toString().padLeft(2, '0');

    if (days > 0) {
      return '${pad(days)}d ${pad(hours)}h';
    }
    return '${pad(hours)}:${pad(minutes)}:${pad(seconds)}';
  }
}
