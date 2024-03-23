import 'package:tyrads_sdk/src/acmo/core/constants/endpoint_name.dart';
import 'package:tyrads_sdk/src/acmo/core/network/network_common.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/models/offers.dart';

class AcmoOffersRepository {
  Future<AcmoOffersResponseModel> getOffers() async {
    var response = await NetworkCommon().dio.get(AcmoEndpointNames.OFFERS);
    //log(response.toString());
    return AcmoOffersResponseModel.fromJson(response.data);
  }

  Future<AcmoOffersResponseModel> getActiveOffers() async {
    var response =
        await NetworkCommon().dio.get(AcmoEndpointNames.ACTIVE_OFFERS);
    return AcmoOffersResponseModel.fromJson(response.data);
  }
}
