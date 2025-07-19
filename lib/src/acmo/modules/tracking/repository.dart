import 'package:tyrads_sdk/src/acmo/core/aes_encrypt.dart';
import 'package:tyrads_sdk/src/acmo/core/constants/endpoint_name.dart';
import 'package:tyrads_sdk/src/acmo/core/constants/key_names.dart';
import 'package:tyrads_sdk/src/acmo/core/network/network_common.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoTrackingRepository {
  Future<void> updateUser(fd) async {
    final encKey =
        Tyrads.instance.prefs.getString(AcmoKeyNames.ENCRYPTION_KEY) ?? "";
    final encData = Tyrads.instance.isSecure
        ? await AcmoEncrypt(encKey).encryptDataAESGCM(fd)
        : {};
    await NetworkCommon().dio.post(AcmoEndpointNames.USER_ACTIVITIES,
        data: Tyrads.instance.isSecure ? encData : fd);
  }
}
