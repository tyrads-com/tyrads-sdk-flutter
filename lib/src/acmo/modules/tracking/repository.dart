import 'package:tyrads_sdk/src/acmo/core/constants/endpoint_name.dart';
import 'package:tyrads_sdk/src/acmo/core/network/network_common.dart';

class AcmoTrackingRepository {
  Future<void> updateUser( fd) async {
    await NetworkCommon().dio.post(AcmoEndpointNames.USER_ACTIVITIES, data: fd);
  }
}
