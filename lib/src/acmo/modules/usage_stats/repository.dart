import 'package:tyrads_sdk/src/acmo/core/aes_encrypt.dart';
import 'package:tyrads_sdk/src/acmo/core/constants/key_names.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

import '../../core/constants/endpoint_name.dart';
import '../../core/network/network_common.dart';

class AcmoRepositoryUsageStat {
  saveUsageStats(fd) async {
    final encKey =
        Tyrads.instance.prefs.getString(AcmoKeyNames.ENCRYPTION_KEY) ?? "";
    final encData = Tyrads.instance.isSecure
        ? AcmoEncrypt(encKey).encryptDataAESGCM(fd)
        : {};
    var response = await NetworkCommon().dio.post(AcmoEndpointNames.USAGE_STATS,
        data: Tyrads.instance.isSecure ? encData : fd);
    var responseData = response.data;
    return responseData;
  }
}
