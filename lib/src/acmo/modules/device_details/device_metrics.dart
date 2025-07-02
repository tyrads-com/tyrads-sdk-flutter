import 'dart:async';
import 'package:tyrads_sdk/src/plugin/models/device_metrics.dart';
import 'package:tyrads_sdk/src/plugin/tyrads_sdk_platform_interface.dart';

class AcmoDeviceMetricsController {
  

  Future<DeviceMetrics> getDeviceMetrics()async{
    final DeviceMetrics metrics = await TyradsSdkPlatform.instance.getDeviceMetrics();
    return metrics;
  }

  
}
