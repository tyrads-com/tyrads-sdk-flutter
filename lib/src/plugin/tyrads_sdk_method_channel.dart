import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:tyrads_sdk/src/plugin/models/device_metrics.dart';

import 'models/tracking_info.dart';
import 'tyrads_sdk_platform_interface.dart';

/// An implementation of [TyradsSdkPlatform] that uses method channels.
class MethodChannelTyradsSdk extends TyradsSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('tyrads_sdk');
  static const EventChannel _networkEventChannel =
      EventChannel('tyrads_sdk/networkType');
  static const EventChannel _vpnEventChannel =
      EventChannel('tyrads_sdk/vpnCheck');

  @override
  Future<TrackingInfo> getTrackingInfo() async {
    final info = await methodChannel.invokeMethod<Map>('getTrackingInfo');
    return TrackingInfo.fromMap(
        (info as Map<Object?, Object?>?)?.cast<String, dynamic>() ?? {});
  }

  @override
  Future<bool> isVpnActive() async {
    final result = await methodChannel.invokeMethod<bool>('checkVpnStatus');
    return result ?? false;
  }

  @override
  Future<DeviceMetrics> getDeviceMetrics() async {
    final metrics = await methodChannel.invokeMethod<Map>('getDeviceMetrics');
    return DeviceMetrics.fromMap(
        (metrics as Map<Object?, Object?>?)?.cast<String, dynamic>() ?? {});
  }

  @override
  Future<String> getNetworkType() async {
    final networkType = await methodChannel.invokeMethod<String>(
      'getNetworkType',
    );
    return networkType ?? "Unknown";
  }

  @override
  Future<String> getPlayIntegrityToken() async {
    String token = "";
    try {
      token = await methodChannel.invokeMethod<String>(
            'getPlayIntegrityToken',
          ) ??
          "";
    } on PlatformException catch (e) {
      debugPrint("Error getting play integrity token $e");
    }
    return token;
  }

  @override
  Stream<String> onNetworkStatusChange() {
    String? lastNetworkType;
    return _networkEventChannel
        .receiveBroadcastStream('networkType')
        .cast<String>()
        .where((networkType) {
      if (networkType != lastNetworkType) {
        lastNetworkType = networkType;
        return true;
      }
      return false;
    });
  }

  @override
  Stream<bool> onVpnStatusChange() {
    return _vpnEventChannel.receiveBroadcastStream("vpnCheck").cast<bool>();
  }
}
