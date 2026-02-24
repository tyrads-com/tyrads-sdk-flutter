import 'package:tyrads_sdk/src/acmo/core/helpers/security_utils.dart';

class FirebaseConfig {

  static const pId = [71, 75, 71, 65, 0, 8, 72, 3, 86, 6, 4, 92];
  static const aId = [2, 8, 6, 4, 81, 87, 86, 9, 87, 80, 3, 12, 15, 91, 2, 86, 93, 86, 71, 93, 13, 7, 95, 81, 5, 4, 1, 11, 3, 80, 92, 84, 86, 2, 81, 87, 86, 90, 83, 82, 92, 82, 84, 93, 87];
  static const kId = [114, 123, 79, 83, 55, 26, 36, 95, 61, 6, 94, 82, 111, 16, 114, 15, 3, 99, 71, 68, 54, 15, 19, 64, 39, 33, 115, 115, 101, 4, 11, 111, 71, 101, 69, 64, 20, 85, 85];
  static const sId = [0, 4, 0, 6, 87, 90, 86, 5, 85, 80, 11, 0];
  static const bId = [71, 75, 71, 65, 0, 8, 72, 3, 86, 6, 4, 92, 24, 4, 81, 69, 86, 80, 84, 65, 1, 16, 17, 95, 22, 4, 85, 92, 24, 3, 72, 71];


  static String get projectId  => SecurityUtils.deobfuscate(pId);
  static String get appId => SecurityUtils.deobfuscate(aId);
  static String get apiKey => SecurityUtils.deobfuscate(kId);
  static String get messagingSenderId => SecurityUtils.deobfuscate(sId);
  static String get storageBucket => SecurityUtils.deobfuscate(bId);
  
  static Map<String, dynamic> toMap() {
    return {
      'projectId': projectId,
      'appId': appId,
      'apiKey': apiKey,
      'messagingSenderId': messagingSenderId,
      'storageBucket': storageBucket,
    };
  }
}
