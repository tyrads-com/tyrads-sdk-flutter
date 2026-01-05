import 'dart:developer';

import 'package:tyrads_sdk/src/acmo/core/constants/key_names.dart';
import 'package:tyrads_sdk/src/plugin/tyrads_sdk_platform_interface.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class ApnsManager {
  ApnsManager._();
  static final ApnsManager _instance = ApnsManager._();
  static ApnsManager get instance => _instance;

  final _platform = TyradsSdkPlatform.instance;

  Future<void> init() async {
    _requestPushPermission();
    _fetchTokenSafely();
    _onPushEvent();
  }

  void _fetchTokenSafely() async {
    try {
      final apnsToken =
          await _platform.getApnsToken().timeout(const Duration(seconds: 8));
      if (apnsToken != null && apnsToken.isNotEmpty) {
        Tyrads.instance.prefs.setString(AcmoKeyNames.APNS_TOKEN, apnsToken);
        log("APNs token fetched: $apnsToken");
      }
    } catch (e) {
      log("APNs token not available yet: $e");
    }
  }

  Future<void> _requestPushPermission() async {
    try {
      await _platform.requestPushPermission();
    } catch (e) {
      log("Error requesting push permission: $e");
    }
  }

  _onPushEvent() {
    _platform.onPushEvent().listen((event) {
      log("Push event: $event");
    }).onError((e) {
      log("Error listening to push events: $e");
    });
  }
}
