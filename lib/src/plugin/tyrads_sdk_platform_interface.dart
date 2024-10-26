import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:tyrads_sdk/src/plugin/models/tracking_info.dart';

import 'tyrads_sdk_method_channel.dart';

abstract class TyradsSdkPlatform extends PlatformInterface {
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
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<TrackingInfo> getTrackingInfo() {
    throw UnimplementedError('getTrackingInfo() has not been implemented.');
  }
}
