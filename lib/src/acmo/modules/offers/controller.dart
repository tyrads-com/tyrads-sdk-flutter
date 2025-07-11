import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tyrads_sdk/src/acmo/core/constants/key_names.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/common.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/toasts.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/models/offer_details.dart'
    show AcmoOfferDetailsModel;
import 'package:tyrads_sdk/src/acmo/modules/offer_details/repository.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/models/active_offers/active_offers.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/models/offers.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/new_offerwall/models/currency_sale_model.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/repository.dart';
import 'package:tyrads_sdk/src/acmo/modules/tracking/activities.dart';
import 'package:tyrads_sdk/src/acmo/modules/usage_stats/controller.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoOffersController {
  final _repo = AcmoOffersRepository();
  final _offersDetailsRepo = AcmoOfferDetailsRepository();
  List<AcmoOffersModel> items = [];

  List<AcmoOffersModel> expiringItems = [];
  List<AcmoOffersModel> activeItems = [];
  List<AcmoOffersModel> completedItems = [];

  List<AcmoOffersModel> hotOffers = [];
  List<AcmoOffersModel> allItems = [];

  AcmoOfferCurrencySaleModel currencySales = const AcmoOfferCurrencySaleModel();

  final isActiveOffersLoading = ValueNotifier(false);
  final ValueNotifier<AcmoOfferDetailsModel?> currentCampaignDetails =
      ValueNotifier<AcmoOfferDetailsModel?>(null);
  int? tabIndex;
  final ValueNotifier<bool> isFetchingDetails = ValueNotifier<bool>(false);
  final ValueNotifier<List<ActiveCampaign>> allDeals =
      ValueNotifier<List<ActiveCampaign>>([]);
  final ValueNotifier<List<ActiveCampaign>> hotDeals =
      ValueNotifier<List<ActiveCampaign>>([]);
  final ValueNotifier<List<ActiveCampaign>> urgentTasks =
      ValueNotifier<List<ActiveCampaign>>([]);
  final ValueNotifier<int> activatedCount = ValueNotifier<int>(0);
  bool redirectToActivePage = false;

  final ValueNotifier<Set<ActiveCampaign>> activeOffersWithLimitedTimeEvents =
      ValueNotifier<Set<ActiveCampaign>>({});

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
        _repo.getActivatedOfferSummary(),
        _repo.getActiveOffers(),
      ]);
      currencySales = responses[1] as AcmoOfferCurrencySaleModel;
      var r = responses[0] as AcmoOffersResponseModel;
      activatedCount.value = responses[2] as int;
      final activeOffers = responses[3] as AcmoActiveOffersModel;
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

      hotOffers =
          hotOffers.sublist(0, hotOffers.length > 5 ? 5 : hotOffers.length);

      // Remove all offers in hotOffers from items based on their IDs
      var hotOfferIds = hotOffers.map((offer) => offer.campaignId).toSet();
      items.removeWhere((element) => hotOfferIds.contains(element.campaignId));
      allItems = [...items, ...hotOffers];

      activeOffersWithLimitedTimeEvents.value =
          filterLimitedOffersWithEvents(activeOffers.data);

      Tyrads.instance.track(TyradsActivity.targetedCampaignShown);
      return items;
    } finally {}
  }

  loadActiveOffers() async {
    try {
      isActiveOffersLoading.value = true;
      var r = await _repo.getActiveOffers();
      hotDeals.value.clear();
      urgentTasks.value.clear();
      allDeals.value.clear();

      allDeals.value = r.data
          .where((element) => element.groupName.toLowerCase() == 'all')
          .expand((element) => element.campaigns)
          .toList()
          .reversed
          .toList();
      hotDeals.value = r.data
          .where((element) => element.groupName.toLowerCase() == 'hotdeals')
          .expand((element) => element.campaigns)
          .toList()
          .reversed
          .toList();
      urgentTasks.value = r.data
          .where((element) => element.groupName.toLowerCase() == 'urgenttask')
          .expand((element) => element.campaigns)
          .toList()
          .reversed
          .toList();
      isActiveOffersLoading.value = false;
      if (hotDeals.value.isNotEmpty && tabIndex == null) {
        fetchOfferDetails(hotDeals.value.first.campaignId);
      } else if (urgentTasks.value.isNotEmpty && tabIndex == null) {
        fetchOfferDetails(urgentTasks.value.first.campaignId);
      } else if (allDeals.value.isNotEmpty) {
        fetchOfferDetails(allDeals.value.first.campaignId);
      }
      return r.data;
    } catch (e) {
      isActiveOffersLoading.value = false;
      return [];
    }
  }

  Future<void> fetchOfferDetails(int campaignId) async {
    try {
      isFetchingDetails.value = true;
      final data = await _offersDetailsRepo.getOfferDetails(campaignId);
      currentCampaignDetails.value = data.data;
    } catch (e) {
      currentCampaignDetails.value = null;
      log('Error fetching game details: $e');
    } finally {
      isFetchingDetails.value = false;
    }
  }

  saveActivePackages() async {
    try {
      var r = await _repo.getActiveOffers();
      var pkgs = <String>[];
      r.data.forEach((element) {
        element.campaigns.forEach((campaign) {
          pkgs.add(campaign.app.packageName);
        });
      });
      log(pkgs.toString());
      var prefs = await SharedPreferences.getInstance();
      await prefs.setStringList(AcmoKeyNames.PLAY_PER_MINUTE_PACKAGES, pkgs);
    } finally {}
  }

  Future<List<AcmoOffersModel>> loadTopOffers() async {
    try {
      loading = true;
      if (await Tyrads.instance.waitAndCheck() == false) {
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
      newOffers =
          newOffers.sublist(0, newOffers.length > 5 ? 5 : newOffers.length);
      hotOffers =
          hotOffers.sublist(0, hotOffers.length > 5 ? 5 : hotOffers.length);
      loading = false;
      return hotOffers;
    } catch (e) {
      return [];
    }
  }

  Future<void> openOffer({
    required String? clickUrl,
    required String? s2sClickUrl,
    required bool isRetryDownload,
    required bool isInstalled,
    required String previewUrl,
    required int campaignId,
  }) async {
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

  Set<ActiveCampaign> filterLimitedOffersWithEvents(
    List<AcmoActiveOffers> activeOffers,
  ) {
    final filteredCampaigns = activeOffers
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
}
