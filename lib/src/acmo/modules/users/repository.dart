import 'package:tyrads_sdk/src/acmo/core/constants/endpoint_name.dart';
import 'package:tyrads_sdk/src/acmo/core/network/network_common.dart';

class AcmoUsersRepository {
  Future<void> updateUser(id, fd) async {
    await NetworkCommon().dio.put(AcmoEndpointNames.UPDATE_USER, data: fd);
  }
}
