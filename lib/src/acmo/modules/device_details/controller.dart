import 'dart:io';

import 'package:custom_platform_device_id/platform_device_id.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:safe_device/safe_device.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/platform.dart';

class AcmoDeviceDetailsController {
  //
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
    fd['deviceId'] = await PlatformDeviceId.getDeviceId;
    fd['androidId'] = fd['deviceId'];
    fd['device'] = androidInfo.device;
    fd['brand'] = androidInfo.brand;
    fd['model'] = androidInfo.model;
    fd['manufacturer'] = androidInfo.manufacturer;
    fd['product'] = androidInfo.product;
    fd['host'] = androidInfo.host;
    fd['hardware'] = androidInfo.hardware;
    fd['serialNumber'] = androidInfo.serialNumber;
    fd['display'] = androidInfo.display;
    fd['heightInches'] = androidInfo.displayMetrics.heightInches;
    fd['widthInches'] = androidInfo.displayMetrics.widthInches;
    fd['heightPx'] = androidInfo.displayMetrics.heightPx;
    fd['widthPx'] = androidInfo.displayMetrics.widthPx;
    fd['xdpi'] = androidInfo.displayMetrics.xDpi;
    fd['ydpi'] = androidInfo.displayMetrics.yDpi;
    fd['baseOs'] = androidInfo.version.baseOS;
    fd['codename'] = androidInfo.version.codename;
    fd['sdkVersion'] = androidInfo.version.sdkInt;
    fd['releaseVersion'] = androidInfo.version.release;
    fd['type'] = androidInfo.type;
    fd['tags'] = androidInfo.tags;
    fd["build"] = packageInfo.buildNumber;
    fd["buildSign"] = packageInfo.buildSignature;
    fd["version"] = packageInfo.version;
    fd["package"] = packageInfo.packageName;
    fd["platform"] = acmoGetPlatformName();
    fd["installerStore"] = packageInfo.installerStore;
    fd["osLang"] = Platform.localeName.toString().split('_')[0];
    fd['rooted'] = await SafeDevice.isJailBroken;
    fd['virtual'] = !await SafeDevice.isRealDevice;
    return fd;
  }

  _getIosDeviceDetails() async {
    var fd = <String, dynamic>{};

    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    IosDeviceInfo iosInfo = await deviceInfoPlugin.iosInfo;
    fd['deviceId'] = await PlatformDeviceId.getDeviceId;
    fd['device'] =
        (iosInfo.model != null && iosInfo.model!.toLowerCase().contains("ipad"))
            ? "iPad"
            : "iPhone";
    fd['brand'] = "Apple";
    fd['model'] = iosInfo.model;
    fd['product'] = iosInfo.utsname.sysname;
    fd['baseOs'] = iosInfo.systemName;
    fd['releaseVersion'] = iosInfo.systemVersion;
    fd["build"] = packageInfo.buildNumber;
    fd["version"] = packageInfo.version;
    fd["package"] = packageInfo.packageName;
    fd["platform"] = acmoGetPlatformName();
    fd["installerStore"] = packageInfo.installerStore;
    fd["osLang"] = Platform.localeName.toString().split('_')[0];
    fd['rooted'] = await SafeDevice.isJailBroken;
    fd['virtual'] = !await SafeDevice.isRealDevice;
    return fd;
  }
}
