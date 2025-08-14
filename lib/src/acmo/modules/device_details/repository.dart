
import 'package:dio/dio.dart';

import '../../core/constants/endpoint_name.dart';
import '../../core/network/network_common.dart';

class AcmoDeviceDetailsRepository {
  save(Map<String, dynamic> fd) async {
     await NetworkCommon()
        .dio
        .post(AcmoEndpointNames.DEVICE_DETAILS, data: FormData.fromMap(fd));
  }
}
