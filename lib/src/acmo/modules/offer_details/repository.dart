import 'package:tyrads_sdk/src/acmo/core/constants/endpoint_name.dart';
import 'package:tyrads_sdk/src/acmo/core/network/network_common.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/models/offer_details.dart';

class AcmoOfferDetailsRepository {
  Future<AcmoOfferDetailsResponseModel> getOfferDetails(id) async {
    var response =
        await NetworkCommon().dio.get("${AcmoEndpointNames.OFFERS}/$id");
    //  log(response.toString());
    return AcmoOfferDetailsResponseModel.fromJson(response.data);
  }

  activateOffer({required id}) async {
    await NetworkCommon().dio.post("${AcmoEndpointNames.OFFERS}/active/$id");
  }
}
