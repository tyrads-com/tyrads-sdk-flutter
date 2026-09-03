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
            "groupName": "HotDeals",
            "availableCurrencies": {
              "0": {
                "currencyId": 0,
                "currencyIcon": "https://tyrads-public-files.s3.us-east-1.amazonaws.com/sdk/BelandaGames_Coin.png",
                "currencyName": "Coins"
              }
            },
            "campaigns": [
              {
                "campaignId": 2566,
                "campaignName": "Solo Shooter / Android / WW / Test TopG",
                "campaignDescription": "1. Play and enjoy Solo Shooter: Adventure!\n2. Complete the tasks listed to collect your points!\n3. Each task has a time limit! Complete the event on time to be able to collect the points!\n4. You must be a new player to get rewarded",
                "campaignType": "app",
                "campaignPremium": true,
                "validity": {
                  "isRetryDownload": false,
                  "isActivated": true,
                  "isOldUser": false,
                  "activeCurrencyId": 0,
                  "expiredOn": null,
                  "expiredInSeconds": null,
                  "isInstalled": true,
                  "capReached": false
                },
                "availableCurrencies": {
                  "0": {
                    "currencyId": 0,
                    "currencyIcon": "https://tyrads-public-files.s3.us-east-1.amazonaws.com/sdk/BelandaGames_Coin.png",
                    "currencyName": "Coins"
                  }
                },
                "app": {
                  "id": 982,
                  "title": "Solo Shooter: Adventure",
                  "packageName": "com.Belandagames.BadGuys",
                  "rating": 0,
                  "previewUrl": "https://play.google.com/store/apps/details?id=com.Belandagames.BadGuys",
                  "shortDescription": "Shooter mobile game, defeat waves of enemies",
                  "store": "googlePlay",
                  "storeCategory": "Action",
                  "thumbnail": "https://play-lh.googleusercontent.com/WPJPWCP4CbMgqEc95CmDc-8us5bTo-uaAYwXr7fI6SUUYZ0x5ZfLJbSqGR9UK18dZuhP"
                },
                "campaignStatus": "active",
                "group": "HotDeals",
                "stage": null,
                "eventSummary": {
                  "playableEventCountAvailable": 6,
                  "playableEventCountCompleted": 0,
                  "playableEventCountTotal": 6,
                  "microchargeEventCountAvailable": 6,
                  "microchargeEventCountCompleted": 0,
                  "microchargeEventCountTotal": 6
                },
                "limitedTimeEvents": [
                  {
                    "appEventId": 7186,
                    "conversionStatus": null,
                    "identifier": "event_identifier_30",
                    "eventName": "Ad Watch",
                    "eventDescription": null,
                    "eventCategory": "Ad Watch",
                    "payoutInfo": {
                      "0": {
                        "currencyId": 0,
                        "currencyName": "Coins",
                        "currencyIcon": "https://tyrads-public-files.s3.us-east-1.amazonaws.com/sdk/BelandaGames_Coin.png",
                        "currencyConversionRate": 50000,
                        "payoutAmountConverted": 4000
                      }
                    },
                    "allowDuplicateEvents": true,
                    "maxTime": 0,
                    "maxTimeMetric": null,
                    "maxTimeRemainSeconds": null,
                    "enforceMaxTimeCompletion": false,
                    "isLimitedTimeEvent": true,
                    "limitedTimeEventRemainingSeconds": 8773,
                    "isTicketSubmitted": false,
                    "ticketStatus": null,
                    "lockEventRule": null,
                    "hideEventRule": null,
                    "shorterMaxTimeRule": null,
                    "specialCompletionReason": null,
                    "dailyCount": 0,
                    "dailyLimit": 3,
                    "count": 0,
                    "limit": 9,
                    "totalDailyUniqueCount": 0,
                    "totalDailyUniqueLimit": null,
                    "dailyUniqueTodayExist": false
                  },
                  {
                    "appEventId": 7185,
                    "conversionStatus": null,
                    "identifier": "event_identifier_31",
                    "eventName": "In App Purchase",
                    "eventDescription": null,
                    "eventCategory": "Purchase",
                    "payoutInfo": {
                      "0": {
                        "currencyId": 0,
                        "currencyName": "Coins",
                        "currencyIcon": "https://tyrads-public-files.s3.us-east-1.amazonaws.com/sdk/BelandaGames_Coin.png",
                        "currencyConversionRate": 50000,
                        "payoutAmountConverted": 4000
                      }
                    },
                    "allowDuplicateEvents": false,
                    "maxTime": 30,
                    "maxTimeMetric": "days",
                    "maxTimeRemainSeconds": 2589907.453,
                    "enforceMaxTimeCompletion": true,
                    "isLimitedTimeEvent": true,
                    "limitedTimeEventRemainingSeconds": 41173,
                    "isTicketSubmitted": false,
                    "ticketStatus": null,
                    "lockEventRule": null,
                    "hideEventRule": null,
                    "shorterMaxTimeRule": null,
                    "specialCompletionReason": null,
                    "dailyCount": 0,
                    "dailyLimit": null,
                    "count": 0,
                    "limit": null,
                    "totalDailyUniqueCount": 0,
                    "totalDailyUniqueLimit": null,
                    "dailyUniqueTodayExist": false
                  },
                  {
                    "appEventId": 20065,
                    "conversionStatus": null,
                    "identifier": "event_identifier_33",
                    "eventName": "Purchase \$10",
                    "eventDescription": null,
                    "eventCategory": "Purchase",
                    "payoutInfo": {
                      "0": {
                        "currencyId": 0,
                        "currencyName": "Coins",
                        "currencyIcon": "https://tyrads-public-files.s3.us-east-1.amazonaws.com/sdk/BelandaGames_Coin.png",
                        "currencyConversionRate": 50000,
                        "payoutAmountConverted": 4000
                      }
                    },
                    "allowDuplicateEvents": false,
                    "maxTime": 10,
                    "maxTimeMetric": "days",
                    "maxTimeRemainSeconds": 861907.453,
                    "enforceMaxTimeCompletion": true,
                    "isLimitedTimeEvent": true,
                    "limitedTimeEventRemainingSeconds": 41173,
                    "isTicketSubmitted": false,
                    "ticketStatus": null,
                    "lockEventRule": null,
                    "hideEventRule": null,
                    "shorterMaxTimeRule": null,
                    "specialCompletionReason": null,
                    "dailyCount": 0,
                    "dailyLimit": null,
                    "count": 0,
                    "limit": null,
                    "totalDailyUniqueCount": 0,
                    "totalDailyUniqueLimit": 10,
                    "dailyUniqueTodayExist": false
                  }
                ],
                "shorterMaxTimeEvents": []
              }
            ]
          },
          {
            "groupName": "All",
            "availableCurrencies": {
              "0": {
                "currencyId": 0,
                "currencyIcon": "https://tyrads-public-files.s3.us-east-1.amazonaws.com/sdk/BelandaGames_Coin.png",
                "currencyName": "Coins"
              }
            },
            "campaigns": [
              {
                "campaignId": 2566,
                "campaignName": "Solo Shooter / Android / WW / Test TopG",
                "campaignDescription": "1. Play and enjoy Solo Shooter: Adventure!\n2. Complete the tasks listed to collect your points!\n3. Each task has a time limit! Complete the event on time to be able to collect the points!\n4. You must be a new player to get rewarded",
                "campaignType": "app",
                "campaignPremium": true,
                "validity": {
                  "isRetryDownload": false,
                  "isActivated": true,
                  "isOldUser": false,
                  "activeCurrencyId": 0,
                  "expiredOn": null,
                  "expiredInSeconds": null,
                  "isInstalled": true,
                  "capReached": false
                },
                "availableCurrencies": {
                  "0": {
                    "currencyId": 0,
                    "currencyIcon": "https://tyrads-public-files.s3.us-east-1.amazonaws.com/sdk/BelandaGames_Coin.png",
                    "currencyName": "Coins"
                  }
                },
                "app": {
                  "id": 982,
                  "title": "Solo Shooter: Adventure",
                  "packageName": "com.Belandagames.BadGuys",
                  "rating": 0,
                  "previewUrl": "https://play.google.com/store/apps/details?id=com.Belandagames.BadGuys",
                  "shortDescription": "Shooter mobile game, defeat waves of enemies",
                  "store": "googlePlay",
                  "storeCategory": "Action",
                  "thumbnail": "https://play-lh.googleusercontent.com/WPJPWCP4CbMgqEc95CmDc-8us5bTo-uaAYwXr7fI6SUUYZ0x5ZfLJbSqGR9UK18dZuhP"
                },
                "campaignStatus": "active",
                "group": "HotDeals",
                "stage": null,
                "eventSummary": {
                  "playableEventCountAvailable": 6,
                  "playableEventCountCompleted": 0,
                  "playableEventCountTotal": 6,
                  "microchargeEventCountAvailable": 6,
                  "microchargeEventCountCompleted": 0,
                  "microchargeEventCountTotal": 6
                },
                "limitedTimeEvents": [
                  {
                    "appEventId": 7186,
                    "conversionStatus": null,
                    "identifier": "event_identifier_30",
                    "eventName": "Ad Watch",
                    "eventDescription": null,
                    "eventCategory": "Ad Watch",
                    "payoutInfo": {
                      "0": {
                        "currencyId": 0,
                        "currencyName": "Coins",
                        "currencyIcon": "https://tyrads-public-files.s3.us-east-1.amazonaws.com/sdk/BelandaGames_Coin.png",
                        "currencyConversionRate": 50000,
                        "payoutAmountConverted": 4000
                      }
                    },
                    "allowDuplicateEvents": true,
                    "maxTime": 0,
                    "maxTimeMetric": null,
                    "maxTimeRemainSeconds": null,
                    "enforceMaxTimeCompletion": false,
                    "isLimitedTimeEvent": true,
                    "limitedTimeEventRemainingSeconds": 8773,
                    "isTicketSubmitted": false,
                    "ticketStatus": null,
                    "lockEventRule": null,
                    "hideEventRule": null,
                    "shorterMaxTimeRule": null,
                    "specialCompletionReason": null,
                    "dailyCount": 0,
                    "dailyLimit": 3,
                    "count": 0,
                    "limit": 9,
                    "totalDailyUniqueCount": 0,
                    "totalDailyUniqueLimit": null,
                    "dailyUniqueTodayExist": false
                  },
                  {
                    "appEventId": 7185,
                    "conversionStatus": null,
                    "identifier": "event_identifier_31",
                    "eventName": "In App Purchase",
                    "eventDescription": null,
                    "eventCategory": "Purchase",
                    "payoutInfo": {
                      "0": {
                        "currencyId": 0,
                        "currencyName": "Coins",
                        "currencyIcon": "https://tyrads-public-files.s3.us-east-1.amazonaws.com/sdk/BelandaGames_Coin.png",
                        "currencyConversionRate": 50000,
                        "payoutAmountConverted": 4000
                      }
                    },
                    "allowDuplicateEvents": false,
                    "maxTime": 30,
                    "maxTimeMetric": "days",
                    "maxTimeRemainSeconds": 2589907.453,
                    "enforceMaxTimeCompletion": true,
                    "isLimitedTimeEvent": true,
                    "limitedTimeEventRemainingSeconds": 41173,
                    "isTicketSubmitted": false,
                    "ticketStatus": null,
                    "lockEventRule": null,
                    "hideEventRule": null,
                    "shorterMaxTimeRule": null,
                    "specialCompletionReason": null,
                    "dailyCount": 0,
                    "dailyLimit": null,
                    "count": 0,
                    "limit": null,
                    "totalDailyUniqueCount": 0,
                    "totalDailyUniqueLimit": null,
                    "dailyUniqueTodayExist": false
                  },
                  {
                    "appEventId": 20065,
                    "conversionStatus": null,
                    "identifier": "event_identifier_33",
                    "eventName": "Purchase \$10",
                    "eventDescription": null,
                    "eventCategory": "Purchase",
                    "payoutInfo": {
                      "0": {
                        "currencyId": 0,
                        "currencyName": "Coins",
                        "currencyIcon": "https://tyrads-public-files.s3.us-east-1.amazonaws.com/sdk/BelandaGames_Coin.png",
                        "currencyConversionRate": 50000,
                        "payoutAmountConverted": 4000
                      }
                    },
                    "allowDuplicateEvents": false,
                    "maxTime": 10,
                    "maxTimeMetric": "days",
                    "maxTimeRemainSeconds": 861907.453,
                    "enforceMaxTimeCompletion": true,
                    "isLimitedTimeEvent": true,
                    "limitedTimeEventRemainingSeconds": 41173,
                    "isTicketSubmitted": false,
                    "ticketStatus": null,
                    "lockEventRule": null,
                    "hideEventRule": null,
                    "shorterMaxTimeRule": null,
                    "specialCompletionReason": null,
                    "dailyCount": 0,
                    "dailyLimit": null,
                    "count": 0,
                    "limit": null,
                    "totalDailyUniqueCount": 0,
                    "totalDailyUniqueLimit": 10,
                    "dailyUniqueTodayExist": false
                  }
                ],
                "shorterMaxTimeEvents": []
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
            "dateStart": "2026-08-01T00:00:00.000Z",
            "dateEnd": "2026-09-30T23:59:59.000Z",
            "remainingTimeSeconds": 4060800
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
        return AcmoOfferCurrencySaleModel.fromJson(mockData);
        // return AcmoOfferCurrencySaleModel.fromJson(response.data);
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