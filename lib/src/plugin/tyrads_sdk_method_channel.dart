import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'models/tracking_info.dart';
import 'tyrads_sdk_platform_interface.dart';

/// An implementation of [TyradsSdkPlatform] that uses method channels.
class MethodChannelTyradsSdk extends TyradsSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('tyrads_sdk');

  @override
  Future<TrackingInfo> getTrackingInfo() async {
    final info = await methodChannel.invokeMethod<Map>('getTrackingInfo');
    return TrackingInfo.fromMap((info as Map<Object?, Object?>?)?.cast<String, dynamic>() ?? {});
  }
}