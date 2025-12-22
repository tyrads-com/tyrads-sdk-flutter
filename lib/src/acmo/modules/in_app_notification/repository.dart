import 'dart:developer';

import 'package:tyrads_sdk/src/acmo/core/constants/endpoint_name.dart';
import 'package:tyrads_sdk/src/acmo/core/network/network_common.dart';
import 'package:tyrads_sdk/src/acmo/modules/in_app_notification/models/limited_time_offer/limited_time_offer.dart';
import 'package:tyrads_sdk/src/acmo/modules/premium_widgets/models/currency_sale_model/currency_sale_model.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoInAppNotificationRepository {
  Future<AcmoActiveOffersModel> getActiveOffers() async {
    try {
      final mockData = {
        "data": [
          {
            "groupName": "hotdeals",
            "campaigns": [
              {
                "campaignId": 3831,
                "campaignName": "Ocean Match Blast / Android / WW / CPE",
                "campaignDescription": null,
                "createdOn": "2025-03-11T03:42:08.000Z",
                "sortingScore": 0.01,
                "status": "paused",
                "expiredOn": "2025-05-09T07:08:53.958Z",
                "app": {
                  "id": 1354,
                  "title": "Ocean Match Blast: Puzzle Game",
                  "packageName": "com.augustgame.ocean.match.blast",
                  "rating": 0,
                  "shortDescription":
                      "Match 3 blocks that lookalike to solve the board. Let's explore the ocean NOW",
                  "store": "googlePlay",
                  "storeCategory": "Casual",
                  "previewUrl":
                      "https://play.google.com/store/apps/details?id=com.augustgame.ocean.match.blast",
                  "thumbnail":
                      "https://play-lh.googleusercontent.com/xePuI7WS0hu5UvEZ3RILmqhpLjlse-dCfBJCHF248A7LNg9_BWXN5TTpVJxoZtfCWUA",
                  "confidenceScore": 0,
                  "securityLabel": "True"
                },
                "currency": {
                  "name": "USD",
                  "symbol": "\$",
                  "adUnitName": "Offerwall BelandaGames Android",
                  "adUnitCurrencyName": "Coins",
                  "adUnitCurrencyConversion": 100000,
                  "adUnitCurrencyIcon":
                      "https://tyrads-public-files.s3.us-east-1.amazonaws.com/sdk/BelandaGames_Coin.png"
                },
                "isRetryDownload": false,
                "capReached": false,
                "group": "UrgentTask",
                "premium": false,
                "isOldUser": false,
                "isInstalled": true,
                "campaignEventSummary": {
                  "playableEventCountAvailable": 8,
                  "playableEventCountCompleted": 0,
                  "playableEventCountTotal": 8
                },
                "limitedTimeEvents": [
                  {
                    "id": 160208,
                    "conversionStatus": "approved",
                    "identifier": "event_identifier_2",
                    "eventName": "Complete Level 1 Area 1",
                    "eventDescription": null,
                    "eventCategory": "Easy",
                    "payoutAmount": 0.007,
                    "payoutAmountConverted": 14700,
                    "payoutTypeId": 2,
                    "payoutType": "CPA",
                    "allowDuplicateEvents": false,
                    "maxTime": 30,
                    "maxTimeMetric": "days",
                    "maxTimeRemainSeconds": 2589632.788,
                    "enforceMaxTimeCompletion": true,
                    "isLimitedTimeEvent": true,
                    "limitedTimeEventRemainingSeconds": 2592000,
                    "isTicketSubmitted": false,
                    "dailyCount": 0,
                    "dailyLimit": 3,
                    "count": 1,
                    "limit": 1
                  },
                  {
                    "id": 980164,
                    "conversionStatus": "rejected",
                    "identifier": "event_identifier_3",
                    "eventName": "Complete Level Area 1",
                    "eventDescription": null,
                    "eventCategory": "Easy",
                    "payoutAmount": 1.05,
                    "payoutAmountConverted": 2205000,
                    "payoutTypeId": 2,
                    "payoutType": "CPA",
                    "allowDuplicateEvents": false,
                    "maxTime": 30,
                    "maxTimeMetric": "days",
                    "maxTimeRemainSeconds": 2589632.787,
                    "enforceMaxTimeCompletion": true,
                    "isLimitedTimeEvent": true,
                    "limitedTimeEventRemainingSeconds": 432000,
                    "isTicketSubmitted": false,
                    "dailyCount": 0,
                    "dailyLimit": 3,
                    "count": 0,
                    "limit": 1
                  },
                  {
                    "id": 160236,
                    "conversionStatus": null,
                    "identifier": "event_identifier_13",
                    "eventName": "Rewarded Ads Watched 10 Times",
                    "eventDescription": null,
                    "eventCategory": "Ad Watch",
                    "payoutAmount": 0.007,
                    "payoutAmountConverted": 14700,
                    "payoutTypeId": 2,
                    "payoutType": "CPA",
                    "allowDuplicateEvents": true,
                    "maxTime": 0,
                    "maxTimeMetric": null,
                    "maxTimeRemainSeconds": null,
                    "enforceMaxTimeCompletion": false,
                    "isLimitedTimeEvent": true,
                    "limitedTimeEventRemainingSeconds": 864,
                    "isTicketSubmitted": false,
                    "dailyCount": 1,
                    "dailyLimit": 3,
                    "count": 5,
                    "limit": 9
                  },
                  {
                    "id": 160237,
                    "conversionStatus": null,
                    "identifier": "event_identifier_14",
                    "eventName": "Rewarded Ads Watched 10 Times",
                    "eventDescription": null,
                    "eventCategory": "Ad Watch",
                    "payoutAmount": 0.007,
                    "payoutAmountConverted": 14700,
                    "payoutTypeId": 2,
                    "payoutType": "CPA",
                    "allowDuplicateEvents": true,
                    "maxTime": 0,
                    "maxTimeMetric": null,
                    "maxTimeRemainSeconds": null,
                    "enforceMaxTimeCompletion": false,
                    "isLimitedTimeEvent": true,
                    "limitedTimeEventRemainingSeconds": 864000,
                    "isTicketSubmitted": false,
                    "dailyCount": 2,
                    "dailyLimit": 3,
                    "count": 7,
                    "limit": 9
                  }
                ]
              }
            ]
          },
          {
            "groupName": "hotdeals",
            "campaigns": [
              {
                "campaignId": 4468,
                "campaignName": "Captain prosper Testing - Tyr Rewards",
                "campaignDescription": null,
                "createdOn": "2025-03-26T11:28:10.000Z",
                "sortingScore": 0,
                "status": "paused",
                "expiredOn": "2025-05-09T07:08:53.958Z",
                "app": {
                  "id": 587,
                  "title": "Captain Prosper: Compare&Save",
                  "packageName": "captain.prosper",
                  "rating": 0,
                  "shortDescription":
                      "Find the perfect service. Compare, review, and choose with Captain Prosper.",
                  "store": "googlePlay",
                  "storeCategory": "Lifestyle",
                  "previewUrl":
                      "https://play.google.com/store/apps/details?id=captain.prosper",
                  "thumbnail":
                      "https://play-lh.googleusercontent.com/oaqszKJoVYcG7G3iIZ9DdRPEkTeBmEasm0I71QI_PFxARN8AgqYzZetC6_WFyTQdvDY",
                  "confidenceScore": 0.66,
                  "securityLabel": "True"
                },
                "currency": {
                  "name": "USD",
                  "symbol": "\$",
                  "adUnitName": "Offerwall BelandaGames Android",
                  "adUnitCurrencyName": "Coins",
                  "adUnitCurrencyConversion": 100000,
                  "adUnitCurrencyIcon":
                      "https://tyrads-public-files.s3.us-east-1.amazonaws.com/sdk/BelandaGames_Coin.png"
                },
                "isRetryDownload": false,
                "capReached": false,
                "group": null,
                "premium": false,
                "isOldUser": false,
                "isInstalled": true,
                "campaignEventSummary": {
                  "playableEventCountAvailable": 3,
                  "playableEventCountCompleted": 0,
                  "playableEventCountTotal": 3
                },
                "limitedTimeEvents": [
                  {
                    "id": 160208,
                    "conversionStatus": null,
                    "identifier": "event_identifier_2",
                    "eventName": "Complete Level Area",
                    "eventDescription": null,
                    "eventCategory": "Easy",
                    "payoutAmount": 0.007,
                    "payoutAmountConverted": 14700,
                    "payoutTypeId": 2,
                    "payoutType": "CPA",
                    "allowDuplicateEvents": false,
                    "maxTime": 30,
                    "maxTimeMetric": "days",
                    "maxTimeRemainSeconds": 2589632.788,
                    "enforceMaxTimeCompletion": true,
                    "isLimitedTimeEvent": true,
                    "limitedTimeEventRemainingSeconds": 2592000,
                    "isTicketSubmitted": false,
                    "dailyCount": 0,
                    "dailyLimit": 3,
                    "count": 0,
                    "limit": 1
                  },
                  {
                    "id": 980164,
                    "conversionStatus": null,
                    "identifier": "event_identifier_3",
                    "eventName": "Complete Level Area",
                    "eventDescription": null,
                    "eventCategory": "Easy",
                    "payoutAmount": 1.05,
                    "payoutAmountConverted": 2205000,
                    "payoutTypeId": 2,
                    "payoutType": "CPA",
                    "allowDuplicateEvents": false,
                    "maxTime": 30,
                    "maxTimeMetric": "days",
                    "maxTimeRemainSeconds": 2589632.787,
                    "enforceMaxTimeCompletion": true,
                    "isLimitedTimeEvent": true,
                    "limitedTimeEventRemainingSeconds": 432000,
                    "isTicketSubmitted": false,
                    "dailyCount": 1,
                    "dailyLimit": 3,
                    "count": 0,
                    "limit": 1
                  },
                  {
                    "id": 160236,
                    "conversionStatus": null,
                    "identifier": "event_identifier_13",
                    "eventName": "Rewarded Ads Watched 10 Times",
                    "eventDescription": null,
                    "eventCategory": "Ad Watch",
                    "payoutAmount": 0.007,
                    "payoutAmountConverted": 14700,
                    "payoutTypeId": 2,
                    "payoutType": "CPA",
                    "allowDuplicateEvents": true,
                    "maxTime": 0,
                    "maxTimeMetric": null,
                    "maxTimeRemainSeconds": null,
                    "enforceMaxTimeCompletion": false,
                    "isLimitedTimeEvent": true,
                    "limitedTimeEventRemainingSeconds": 864,
                    "isTicketSubmitted": false,
                    "dailyCount": 0,
                    "dailyLimit": 3,
                    "count": 2,
                    "limit": 9
                  },
                  {
                    "id": 160237,
                    "conversionStatus": null,
                    "identifier": "event_identifier_13",
                    "eventName": "Rewarded Ads Watched 10 Times",
                    "eventDescription": null,
                    "eventCategory": "Ad Watch",
                    "payoutAmount": 0.007,
                    "payoutAmountConverted": 14700,
                    "payoutTypeId": 2,
                    "payoutType": "CPA",
                    "allowDuplicateEvents": true,
                    "maxTime": 0,
                    "maxTimeMetric": null,
                    "maxTimeRemainSeconds": null,
                    "enforceMaxTimeCompletion": false,
                    "isLimitedTimeEvent": true,
                    "limitedTimeEventRemainingSeconds": 864000,
                    "isTicketSubmitted": false,
                    "dailyCount": 0,
                    "dailyLimit": 3,
                    "count": 2,
                    "limit": 9
                  }
                ]
              },
              {
                "campaignId": 2566,
                "campaignName": "Solo Shooter / Android / WW / Test TopG",
                "campaignDescription": null,
                "createdOn": "2024-06-27T00:00:00.000Z",
                "sortingScore": 1.01,
                "status": "active",
                "expiredOn": null,
                "app": {
                  "id": 982,
                  "title": "Solo Shooter: Adventure",
                  "packageName": "com.Belandagames.BadGuys",
                  "rating": 0,
                  "shortDescription":
                      "Shooter mobile game, defeat waves of enemies",
                  "store": "googlePlay",
                  "storeCategory": "Action",
                  "previewUrl":
                      "https://play.google.com/store/apps/details?id=com.Belandagames.BadGuys",
                  "thumbnail":
                      "https://play-lh.googleusercontent.com/WPJPWCP4CbMgqEc95CmDc-8us5bTo-uaAYwXr7fI6SUUYZ0x5ZfLJbSqGR9UK18dZuhP",
                  "confidenceScore": 0.48,
                  "securityLabel": "True"
                },
                "currency": {
                  "name": "USD",
                  "symbol": "\$",
                  "adUnitName": "Offerwall BelandaGames Android",
                  "adUnitCurrencyName": "Coins",
                  "adUnitCurrencyConversion": 100000,
                  "adUnitCurrencyIcon":
                      "https://tyrads-public-files.s3.us-east-1.amazonaws.com/sdk/BelandaGames_Coin.png"
                },
                "isRetryDownload": true,
                "capReached": false,
                "group": null,
                "premium": true,
                "isOldUser": false,
                "isInstalled": true,
                "campaignEventSummary": {
                  "playableEventCountAvailable": 5,
                  "playableEventCountCompleted": 1,
                  "playableEventCountTotal": 6
                },
                "limitedTimeEvents": []
              }
            ]
          }
        ],
        "message": "OK"
      };

      final response = await NetworkCommon().dio.get(
        AcmoEndpointNames.ACTIVE_OFFERS,
        queryParameters: {
          "lang": Tyrads.instance.selectedLanguage,
        },
      );
      if (response.statusCode == 200) {
        // return AcmoActiveOffersModel.fromJson(response.data);
        return AcmoActiveOffersModel.fromJson(mockData);
      }
      return const AcmoActiveOffersModel();
    } catch (e, stackTrace) {
      log(
        'Error fetching active offers',
        error: e,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  Future<AcmoOfferCurrencySaleModel> getEngagement() async {
    try {
      final mockData = {
        "data": {
          "CurrencySales": {
            "name": "Ramadhan Karem",
            "multiplier": 1.9,
            "bannerUrl": "",
            "dateStart": "2025-12-01T00:00:00.000Z",
            "dateEnd": "2025-12-31T23:59:59.000Z",
            "remainingTimeSeconds": 86400
          }
        },
        "message": "OK"
      };

      final response = await NetworkCommon().dio.get(
        AcmoEndpointNames.ENGAGEMENT,
        queryParameters: {
          "lang": Tyrads.instance.selectedLanguage,
        },
      );
      if (response.statusCode == 200) {
        // return AcmoOfferCurrencySaleModel.fromJson(response.data);
        return AcmoOfferCurrencySaleModel.fromJson(mockData);
      }

      return const AcmoOfferCurrencySaleModel();
    } catch (e, stackTrace) {
      log(
        'Error fetching engagement data',
        error: e,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }
}
