import '../../core/constants/endpoint_name.dart';
import '../../core/network/network_common.dart';

class AcmoRepositoryUsageStat {
  saveUsageStats(fd) async {
    var response = await NetworkCommon()
        .dio
        .post(AcmoEndpointNames.USAGE_STATS, data: fd);
    var responseData = response.data;
    return responseData;
  }
}
