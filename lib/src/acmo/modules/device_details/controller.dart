import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_security_checker/flutter_security_checker.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:platform_device_id_plus/platform_device_id.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/platform.dart';
import 'package:tyrads_sdk/src/acmo/modules/device_details/device_metrics.dart';
import 'package:tyrads_sdk/src/acmo/modules/usage_stats/controller.dart';
import 'package:tyrads_sdk/src/app_config.dart';
import 'package:tyrads_sdk/src/acmo/modules/device_details/network_details.dart';
import '../../../plugin/tyrads_sdk_platform_interface.dart';

class AcmoDeviceDetailsController {
  final _networkController = AcmoNetworkDetailsController();
  final _deviceMetricsController = AcmoDeviceMetricsController();

  getDeviceDetails() {
    if (Platform.isAndroid) {
      return _getAndroidDeviceDetails();
    } else {
      return _getIosDeviceDetails();
    }
  }

  _getAndroidDeviceDetails() async {
    var fd = <String, dynamic>{};
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
    var usageController = AcmoControllerUsageStats();
    var networkDetails = await _networkController.getNetworkDetails();
    var trackingInfo = await TyradsSdkPlatform.instance.getTrackingInfo();
    final deviceMetrics = await _deviceMetricsController.getDeviceMetrics();

    fd['deviceAge'] = await usageController.getDeviceAgeTime();
    fd['deviceId'] = await PlatformDeviceId.getDeviceId;
    fd['androidId'] = fd['deviceId'];
    fd['device'] = acmoIsTablet ? "tablet" : "phone";
    fd['brand'] = androidInfo.brand;
    fd['model'] = androidInfo.model;
    fd['manufacturer'] = androidInfo.manufacturer;
    fd['product'] = androidInfo.product;
    fd['host'] = androidInfo.host;
    fd['hardware'] = androidInfo.hardware;
    fd['serialNumber'] = androidInfo.serialNumber;
    fd['display'] = androidInfo.display;
    // fd['heightInches'] = androidInfo.displayMetrics.heightInches;
    // fd['widthInches'] = androidInfo.displayMetrics.widthInches;
    // fd['heightPx'] = androidInfo.displayMetrics.heightPx;
    // fd['widthPx'] = androidInfo.displayMetrics.widthPx;
    // fd['xdpi'] = androidInfo.displayMetrics.xDpi;
    // fd['ydpi'] = androidInfo.displayMetrics.yDpi;
    fd['baseOs'] = androidInfo.version.baseOS;
    fd['codename'] = androidInfo.version.codename;
    fd['sdkVersion'] = androidInfo.version.sdkInt;
    fd['releaseVersion'] = androidInfo.version.release;
    fd['type'] = androidInfo.type;
    fd['tags'] = androidInfo.tags;
    fd["fingerprint"] = androidInfo.fingerprint;
    fd["build"] = packageInfo.buildNumber;
    fd["buildSign"] = packageInfo.buildSignature;
    fd["version"] = packageInfo.version;
    fd["package"] = packageInfo.packageName;
    fd["platform"] = acmoGetPlatformName();
    fd['apiVersion'] = AcmoConfig.API_VERSION;
    fd["installerStore"] = packageInfo.installerStore;
    fd["osLang"] = Platform.localeName.toString().split('_')[0];
    fd['rooted'] = await FlutterSecurityChecker.isRooted;
    fd['virtual'] = !(await FlutterSecurityChecker.isRealDevice);
    fd['sdkVersion'] = AcmoConfig.SDK_VERSION;
    fd['sdkPlatform'] = 'Flutter';

    fd['carrierName'] = trackingInfo.carrierName;
    fd['mccMnc'] = trackingInfo.mccMnc;
    fd['mcc'] = trackingInfo.mcc;
    fd['mnc'] = trackingInfo.mnc;
    fd['countryIso'] = trackingInfo.countryIso;
    fd['isRoaming'] = trackingInfo.isRoaming;
    fd['simOperatorName'] = trackingInfo.simOperatorName;
    fd['simOperator'] = trackingInfo.simOperator;
    fd['simCountryIso'] = trackingInfo.simCountryIso;
    fd['phoneType'] = trackingInfo.phoneType;

    // CPU Information
    fd['supportedAbis'] = trackingInfo.supportedAbis;
    fd['cpuType'] =
        trackingInfo.supportedAbis.split(',').firstOrNull ?? 'unknown';
    fd['cpuCores'] = trackingInfo.cpuCores;
    fd['supported32BitAbis'] = trackingInfo.supported32BitAbis;
    fd['supported64BitAbis'] = trackingInfo.supported64BitAbis;
    fd['cpuHardware'] = trackingInfo.cpuHardware;
    fd['cpuModel'] = trackingInfo.cpuModel;
    fd['maxMemory'] = trackingInfo.maxMemory;
    fd['totalMemory'] = trackingInfo.totalMemory;
    fd['freeMemory'] = trackingInfo.freeMemory;
    fd['osArch'] = trackingInfo.osArch;

    // Device Information
    fd['deviceManufacturer'] = trackingInfo.deviceManufacturer;
    fd['deviceModel'] = trackingInfo.deviceModel;
    fd['deviceBrand'] = trackingInfo.deviceBrand;
    fd['deviceBoard'] = trackingInfo.deviceBoard;
    fd['deviceHardware'] = trackingInfo.deviceHardware;
    fd['deviceFingerprint'] = trackingInfo.deviceFingerprint;
    fd['androidVersion'] = trackingInfo.androidVersion;
    fd['androidSdkInt'] = trackingInfo.androidSdkInt;
    fd['buildType'] = trackingInfo.buildType;
    fd['buildTags'] = trackingInfo.buildTags;

    // Screen Metrics
    fd['screenDensity'] = trackingInfo.screenDensity;
    fd['screenWidth'] = trackingInfo.screenWidth;
    fd['screenHeight'] = trackingInfo.screenHeight;

    // Network Details
    fd['connectionType'] = networkDetails['connectionType'];
    fd['networkSpeed'] = networkDetails['networkSpeed'];
    fd['isVpnActive'] = networkDetails['isVpnActive'];

    // Device Metrics
    fd['deviceUpTime'] = deviceMetrics.uptime;
    fd['deviceBootTime'] = deviceMetrics.bootTime;
    fd['timeZone'] = DateTime.now().timeZoneName;
    fd['timeZoneOffset'] = DateTime.now().timeZoneOffset.inSeconds;
    fd['systemTime'] = DateTime.now().millisecondsSinceEpoch.toString();

    // User Interaction Metrics - All properly typed as int (from TrackingInfo._parseToInt())
    fd['keyboardNumEvents'] = trackingInfo.keyboardNumEvents;
    fd['keyboardScore'] = trackingInfo.keyboardScore;
    fd['clipboardNumEvents'] = trackingInfo.clipboardNumEvents;
    fd['clipboardScore'] = trackingInfo.clipboardScore;
    fd['clickNumEvents'] = trackingInfo.clickNumEvents;
    fd['mouseNumEvents'] = trackingInfo.mouseNumEvents;
    fd['touchNumEvents'] = trackingInfo.touchNumEvents;

    // Device Capabilities
    fd['gpu'] = trackingInfo.gpu ?? 'Unknown';
    fd['bluetooth'] = trackingInfo.bluetooth ?? 'Unknown';
    fd['touchSupport'] = trackingInfo.touchSupport ?? 'Unknown';

    // Device Identification
    fd['googleAppSetID'] = trackingInfo.googleAppSetID ?? 'Unknown';

    return fd;
  }

  // Device/app/security/memory fields come from native TyradsIosDeviceInfo, a port of
  // TyradsSDKIOS's provider, so both SDKs send identical iOS deviceData.
  _getIosDeviceDetails() async {
    var fd = await TyradsSdkPlatform.instance.getIosDeviceDetails();
    var networkDetails = await _networkController.getNetworkDetails();

    fd['apiVersion'] = AcmoConfig.API_VERSION;
    fd['connectionType'] = networkDetails['connectionType'];
    fd['sdkVersion'] = AcmoConfig.SDK_VERSION;
    fd['sdkPlatform'] = 'Flutter';

    // iOS does not expose these natively; same placeholders as TyradsSDKIOS
    fd['keyboardNumEvents'] = 0;
    fd['keyboardScore'] = 0;
    fd['clipboardNumEvents'] = 0;
    fd['clipboardScore'] = 0;
    fd['clickNumEvents'] = 0;
    fd['mouseNumEvents'] = 0;
    fd['touchNumEvents'] = 0;
    fd['gpu'] = 'Unknown';
    fd['bluetooth'] = 'Unknown';
    fd['touchSupport'] = 'Unknown';
    fd['googleAppSetID'] = 'Unknown';

    return fd;
  }
}
