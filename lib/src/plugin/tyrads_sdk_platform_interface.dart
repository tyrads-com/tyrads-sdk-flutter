import 'package:plugin_platform_interface/plugin_platform_interface.dart'
    as platform_interface;
import 'package:tyrads_sdk/src/plugin/models/device_metrics.dart';
import 'package:tyrads_sdk/src/plugin/models/tracking_info.dart';

import 'tyrads_sdk_method_channel.dart';

abstract class TyradsSdkPlatform extends platform_interface.PlatformInterface {
  /// Constructs a TyradsSdkPlatform.
  TyradsSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static TyradsSdkPlatform _instance = MethodChannelTyradsSdk();

  /// The default instance of [TyradsSdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelTyradsSdk].
  static TyradsSdkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TyradsSdkPlatform] when
  /// they register themselves.
  static set instance(TyradsSdkPlatform instance) {
    platform_interface.PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<TrackingInfo> getTrackingInfo() {
    throw UnimplementedError('getTrackingInfo() has not been implemented.');
  }

  /// Uptime and boot time
  Future<DeviceMetrics> getDeviceMetrics() {
    throw UnimplementedError('getDeviceMetrics() has not been implemented.');
  }

  /// Vpn details
  Future<bool> isVpnActive() {
    throw UnimplementedError('isVpnActive() has not been implemented.');
  }

  /// Network type details
  Future<String> getNetworkType() {
    throw UnimplementedError('isVpnActive() has not been implemented.');
  }

  /// Get play integrity token
  Future<String> getPlayIntegrityToken() {
    throw UnimplementedError('getPlayIntegrityToken() has not been implemented.');
  }

  Stream<String> onNetworkStatusChange() {
    throw UnimplementedError(
        'onNetworkStatusChange() has not been implemented.');
  }

  Stream<bool> onVpnStatusChange() {
    throw UnimplementedError('onVpnStatusChange() has not been implemented.');
  }
}
