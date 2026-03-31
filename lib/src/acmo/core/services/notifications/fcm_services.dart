import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:tyrads_sdk/src/acmo/core/constants/key_names.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';
import 'package:tyrads_sdk/src/plugin/tyrads_sdk_platform_interface.dart';

class FCMService {
  static StreamSubscription<Map<String, dynamic>>? _notificationSubscription;
  static String? _pendingDeepLink;

  static void handleDeepLink(String deeplink) {
    if (deeplink.isEmpty) return;

    final tyrads = Tyrads.instance;

    if (tyrads.navKey.currentState != null) {
      tyrads.updateWebUri(deeplink);
      tyrads.deepLinkNotifier.value = deeplink;
      return;
    }

    final context = tyrads.parentContext;
    if (context != null && context.mounted) {
      _pendingDeepLink = null;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        tyrads.showOffers(context, route: deeplink);
      });
    } else {
      _pendingDeepLink = deeplink;
      if (context != null) {
        Future.delayed(const Duration(milliseconds: 500), () {
          if (_pendingDeepLink == deeplink) {
            checkPendingDeepLink();
          }
        });
      }
    }
  }

  static void checkPendingDeepLink() {
    final tyrads = Tyrads.instance;
    if (_pendingDeepLink != null && tyrads.parentContext != null) {
      final link = _pendingDeepLink!;
      _pendingDeepLink = null;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (tyrads.parentContext != null && tyrads.parentContext!.mounted) {
          tyrads.showOffers(tyrads.parentContext!, route: link);
        }
      });
    }
  }

  static void clearPendingDeepLink() {
    _pendingDeepLink = null;
  }

  static Future<void> initialize() async {
    try {
      debugPrint('Initializing Native FCM service...');
      
      final String? token = await TyradsSdkPlatform.instance.initializeFCM();
      if (token != null) {
        debugPrint('Native FCM Token: $token');
        await _saveToken(token);
      }
      
      _setupMessageHandlers();
      debugPrint('Native FCM service initialized successfully');
    } catch (error) {
      debugPrint('Native FCM initialization failed: $error');
    }
  }

  static Future<void> _saveToken(String token) async {
    debugPrint('Saving FCM token: $token');
    try {
      await Tyrads.instance.prefs.setString(AcmoKeyNames.FCM_TOKEN, token);
    } catch (error) {
      debugPrint('Failed to save FCM token $error');
    }
  }

  static void _setupMessageHandlers() {
    _notificationSubscription?.cancel();
    _notificationSubscription = TyradsSdkPlatform.instance.onPushEvent().listen((event) {
      final type = event['type'];
      final data = Map<String, dynamic>.from(event['data'] ?? {});
      
      debugPrint('Notification Event Received: $type');
      debugPrint('Notification Data: $data');
      
      if (type == 'onClick') {
        _handleMessageData(data);
      }
    });

    debugPrint('Native message handlers setup complete');
  }

  static void _handleMessageData(Map<String, dynamic> data) {
    debugPrint('Message data :$data');
    final deeplink = data['deepLink'] ?? data['deeplink'];
    if (deeplink != null && deeplink != '') {
      handleDeepLink(deeplink.toString());
    }
  }

  static Future<void> dispose() async {
    await _notificationSubscription?.cancel();
    _notificationSubscription = null;
    debugPrint('FCM service disposed');
  }
}

