import 'package:dio/dio.dart';
import 'package:tyrads_sdk/src/acmo/modules/tickets/model/tickets.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

import '../../core/constants/endpoint_name.dart';
import '../../core/network/network_common.dart';

class AcmoTicketsRepository {
  Future<AcmoTicketsResponseModel> getTickets(id) async {
    final currentLanguage = Tyrads.instance.selectedLanguage;
    var response = await NetworkCommon()
        .dio
        .get("${AcmoEndpointNames.OFFERS}/$id/tickets", queryParameters: {
          "lang": currentLanguage,
        });
    var responseData = response.data;
    return AcmoTicketsResponseModel.fromJson(responseData);
  }

  submitTicket({offerID, eventID, Map<String, dynamic>? fd}) async {
    var response = await NetworkCommon()
        .dio
        .post("${AcmoEndpointNames.OFFERS}/$offerID/tickets/$eventID", data: FormData.fromMap(fd ?? {}));
    var temp = response.data;
    return temp['data'];
  }
}
