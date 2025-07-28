import 'dart:developer';

import 'package:tyrads_sdk/src/acmo/core/constants/endpoint_name.dart';
import 'package:tyrads_sdk/src/acmo/core/network/network_common.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/models/active_offers/active_offers.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/models/offers.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/new_offerwall/models/currency_sale_model.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoOffersRepository {
  Future<AcmoOffersResponseModel> getOffers() async {
    final currentLanguage = Tyrads.instance.selectedLanguage;
    var response = await NetworkCommon()
        .dio
        .get(AcmoEndpointNames.OFFERS, queryParameters: {
      "lang": currentLanguage,
    });
    // log(response.toString());
    return AcmoOffersResponseModel.fromJson(response.data);
  }

  Future<AcmoActiveOffersModel> getActiveOffers() async {
    final currentLanguage = Tyrads.instance.selectedLanguage;
    var response = await NetworkCommon()
        .dio
        .get(AcmoEndpointNames.ACTIVE_OFFERS, queryParameters: {
      "lang": currentLanguage,
    });
    return AcmoActiveOffersModel.fromJson(response.data);
  }

  Future<AcmoOfferCurrencySaleModel> getEngagement() async {
    // final data = {
    //   "data": {
    //     "CurrencySales": {
    //       "name": "Ramadhan Karem",
    //       "multiplier": 1.5,
    //       "bannerUrl": "",
    //       "dateStart": "2025-03-10T00:00:00.000Z",
    //       "dateEnd": "2025-03-10T23:59:59.000Z"
    //     }
    //   },
    //   "message": "OK"
    // };
    final currentLanguage = Tyrads.instance.selectedLanguage;
    var response = await NetworkCommon()
        .dio
        .get(AcmoEndpointNames.ENGAGEMENT, queryParameters: {
      "lang": currentLanguage,
    });
    log("Engagements: ${response.data.toString()}");
    return AcmoOfferCurrencySaleModel.fromJson(response.data);
  }

  Future<int> getActivatedOfferSummary() async {
    final currentLanguage = Tyrads.instance.selectedLanguage;
    var response = await NetworkCommon().dio.get(
        "${AcmoEndpointNames.ACTIVE_OFFERS}/${AcmoEndpointNames.OFFER_SUMMARY}",
        queryParameters: {
          "lang": currentLanguage,
        });
    return response.data['data']['activeCampaignCount'];
  }

  activateOffer({required id}) async {
    await NetworkCommon().dio.post("${AcmoEndpointNames.OFFERS}/active/$id");
  }
}
