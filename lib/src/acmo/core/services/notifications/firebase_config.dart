import 'package:tyrads_sdk/src/acmo/core/helpers/platform.dart';

class FirebaseConfig {
  static const String projectId = 'tyrsdk-32c6e';
  static const String appIdiOS = '1:365439351599:ios:f87d6ef553487fd2b87fda';
  static const String appIdAndroid = '1:365439351599:android:f4d793b204e29feab87fda';
  static String appId = AcmoPlatform.isAndroid ? appIdAndroid : appIdiOS;
  static const String apiKeyiOS = 'AIzaSyAlCr4bs4x5aiKOVzPrQMfhcRgpBVBkPOA';
  static const String apiKeyAndroid = 'AIzaSyCD_nKOf9iDluRLi4El9XU3joaCzlU9zgc';
  static String apiKey = AcmoPlatform.isAndroid ? apiKeyAndroid : apiKeyiOS;
  static const String messagingSenderId = '365439351599';
  static const String storageBucket = 'tyrsdk-32c6e.firebasestorage.app';

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
