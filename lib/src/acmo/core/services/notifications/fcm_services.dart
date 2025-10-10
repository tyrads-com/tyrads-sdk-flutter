import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';
import 'package:tyrads_sdk/src/acmo/core/constants/key_names.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';
import 'firebase_config.dart';
import 'fcm_notifications.dart';

class FCMService {
  static final FirebaseMessaging _firebaseMessaging =
      FirebaseMessaging.instance;

  static bool _useNativeImplementation = false;
  static StreamSubscription<RemoteMessage>? _messageSubscription;
  static StreamSubscription<RemoteMessage>? _messageOpenedAppSubscription;

  static Future<void> initialize() async {
    try {
      debugPrint('Initializing FCM service...');
      await FCMNotifications.initialize();

      await _initializeStandardFirebase();
      _setupMessageHandlers();
      debugPrint('FCM service initialized successfully');
    } catch (error) {
      debugPrint('Standard FCM failed, trying native fallback...');
    }
  }

  static Future<void> _initializeStandardFirebase() async {
    try {
      await Firebase.initializeApp(
        options: FirebaseOptions(
          apiKey: FirebaseConfig.apiKey,
          appId: FirebaseConfig.appId,
          messagingSenderId: FirebaseConfig.messagingSenderId,
          projectId: FirebaseConfig.projectId,
          storageBucket: FirebaseConfig.storageBucket,
        ),
      );

      await _firebaseMessaging.requestPermission();
      await _handleToken();
      _useNativeImplementation = false;
      debugPrint('Standard Firebase initialization successful');
    } catch (error) {
      debugPrint('Standard Firebase initialization failed $error');
      rethrow;
    }
  }

  static Future<void> _handleToken() async {
    try {
      final String? token = await _firebaseMessaging.getToken();
      if (token != null) {
        debugPrint('FCM Token: $token');
        await _saveToken(token);
      }
    } catch (error) {
      debugPrint('Failed to get FCM token $error');
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
    if (_useNativeImplementation) {
      debugPrint('Using native message handlers');
      return;
    }

    _messageSubscription = FirebaseMessaging.onMessage.listen(
      _handleForegroundMessage,
    );
    _messageOpenedAppSubscription = FirebaseMessaging.onMessageOpenedApp.listen(
      _handleBackgroundMessage,
    );

    FirebaseMessaging.instance.getInitialMessage().then((message) {
      if (message != null) {
        _handleBackgroundMessage(message);
      }
    });

    debugPrint('Standard message handlers setup complete');
  }

  static Future<void> _handleForegroundMessage(RemoteMessage message) async {
    debugPrint('Foreground message received: ${message.messageId}');

    if (message.notification != null) {
      await FCMNotifications.showNotification(
        title: message.notification?.title ?? 'TyrAds Notification',
        body: message.notification?.body ?? '',
        imageUrl: message.notification?.android?.imageUrl,
        payload: message.data,
      );
    }

    _handleMessageData(message.data);
  }

  static Future<void> _handleBackgroundMessage(RemoteMessage message) async {
    debugPrint('Background message received: ${message.messageId}');
    _handleMessageData(message.data);
  }

  static void _handleMessageData(Map<String, dynamic> data) {
    debugPrint('Message data: $data');
  }

  static Future<void> dispose() async {
    await _messageSubscription?.cancel();
    await _messageOpenedAppSubscription?.cancel();
    _messageSubscription = null;
    _messageOpenedAppSubscription = null;
    debugPrint('FCM service disposed');
  }

  static bool get useNativeImplementation => _useNativeImplementation;
}
