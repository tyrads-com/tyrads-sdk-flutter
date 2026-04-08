import 'dart:developer';

import 'package:tyrads_sdk/src/acmo/core/constants/endpoint_name.dart';
import 'package:tyrads_sdk/src/acmo/core/network/network_common.dart';
import 'package:tyrads_sdk/src/acmo/modules/in_app_notification/models/limited_time_offer/limited_time_offer.dart';
import 'package:tyrads_sdk/src/acmo/modules/premium_widgets/models/currency_sale_model/currency_sale_model.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoInAppNotificationRepository {
  Future<AcmoActiveOffersModel> getActiveOffers() async {
    try {
      final response = await NetworkCommon().dio.get(
        AcmoEndpointNames.ACTIVE_OFFERS,
        queryParameters: {
          "lang": Tyrads.instance.selectedLanguage,
        },
      );
      if (response.statusCode == 200) {
        return AcmoActiveOffersModel.fromJson(response.data);
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
      final response = await NetworkCommon().dio.get(
        AcmoEndpointNames.ENGAGEMENT,
        queryParameters: {
          "lang": Tyrads.instance.selectedLanguage,
        },
      );
      if (response.statusCode == 200) {
        return AcmoOfferCurrencySaleModel.fromJson(response.data);
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
