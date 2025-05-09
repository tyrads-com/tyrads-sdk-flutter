import 'package:tyrads_sdk/src/acmo/core/aes_encrypt.dart';
import 'package:tyrads_sdk/src/acmo/core/constants/endpoint_name.dart';
import 'package:tyrads_sdk/src/acmo/core/constants/key_names.dart';
import 'package:tyrads_sdk/src/acmo/core/network/network_common.dart';
import 'package:tyrads_sdk/src/app_config.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoUsersRepository {
  Future<void> updateUser(id, fd) async {
    final encKey = Tyrads.instance.prefs.getString(AcmoKeyNames.ENCRYPTION_KEY) ?? "";
    final encData = await AcmoEncrypt(encKey).encryptDataAESGCM(fd);
    await NetworkCommon().dio.put(AcmoEndpointNames.UPDATE_USER, data: AcmoConfig.SECURE ? encData : fd);
  }
}
