import 'package:tyrads_sdk/src/acmo/modules/tickets/model/tickets.dart';

import '../../core/constants/endpoint_name.dart';
import '../../core/network/network_common.dart';

class AcmoTicketsRepository {
  Future<AcmoTicketsResponseModel> getTickets(id) async {
    var response = await NetworkCommon()
        .dio
        .get("${AcmoEndpointNames.OFFERS}/$id/tickets");
    var responseData = response.data;
    return AcmoTicketsResponseModel.fromJson(responseData);
  }

  submitTicket({offerID, eventID}) async {
    var response = await NetworkCommon()
        .dio
        .post("${AcmoEndpointNames.OFFERS}/$offerID/tickets/$eventID");
    var temp = response.data;
    return temp['data'];
  }
}
