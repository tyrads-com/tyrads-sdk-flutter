import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:tyrads_sdk/src/acmo/core/constants/key_names.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';
import 'package:tyrads_sdk/src/plugin/tyrads_sdk_platform_interface.dart';

class FCMManager {
  static StreamSubscription<Map<String, dynamic>>? _notificationSubscription;
  static String? _pendingDeepLink;

  static void handleDeepLink(String deeplink) {
    debugPrint("Tyrads SDK Deep link received: $deeplink");
    if (deeplink.isEmpty) {
      debugPrint("Tyrads SDK Deep link is empty, ignoring.");
      return;
    }

    final tyrads = Tyrads.instance;

    if (tyrads.offerwallKey.currentState != null && tyrads.offerwallKey.currentState!.mounted) {
      debugPrint("Tyrads SDK is already open. Updating internal state for deep link.");
      tyrads.updateWebUri(deeplink);
      tyrads.deepLinkNotifier.value = deeplink;
      return;
    }

    final context = tyrads.navKey.currentContext;
    if (context != null && context.mounted) {
      debugPrint("Tyrads SDK Valid context found. Executing showOffers for deep link.");
      _pendingDeepLink = null;
      Future.microtask(() {
        tyrads.showOffers(route: deeplink);
      });
    } else {
      debugPrint("Tyrads SDK Context is null or unmounted. Marking deep link as pending.");
      _pendingDeepLink = deeplink;
      _startRetryLoop(deeplink);
    }
  }

  static void _startRetryLoop(String deeplink) async {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      if (_pendingDeepLink != deeplink) break;
      
      debugPrint("Tyrads SDK Retrying pending deep link check (attempt ${i + 1})...");
      final context = Tyrads.instance.navKey.currentContext;
      if (context != null && context.mounted) {
        checkPendingDeepLink();
        break;
      }
    }
  }

  static void checkPendingDeepLink() {
    final tyrads = Tyrads.instance;
    final context = tyrads.navKey.currentContext;
    debugPrint("Tyrads SDK Checking pending deep link. Link: $_pendingDeepLink, Context: $context");
    
    if (_pendingDeepLink != null && context != null && context.mounted) {
      final link = _pendingDeepLink!;
      debugPrint("Tyrads SDK Executing pending deep link: $link");
      _pendingDeepLink = null;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (context.mounted) {
          tyrads.showOffers(route: link);
        } else {
          debugPrint("Tyrads SDK Context unmounted before post-frame callback execution.");
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

