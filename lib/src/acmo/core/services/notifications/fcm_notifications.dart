import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

class FCMNotifications {
  static final FlutterLocalNotificationsPlugin _notifications =
  FlutterLocalNotificationsPlugin();

  static final Dio _dio = Dio();

  static Future<void> initialize() async {
    const AndroidInitializationSettings androidSettings =
    AndroidInitializationSettings('@mipmap/ic_launcher');

    const DarwinInitializationSettings iosSettings =
    DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    const InitializationSettings settings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _notifications.initialize(
      settings,
      onDidReceiveNotificationResponse: (NotificationResponse response) {
        if (response.payload != null) {
          log("Notification tapped with payload: ${response.payload}");
        }
      },
    );

    if (Platform.isAndroid) {
      await _setupAndroidChannel();
    }

    _dio.options.connectTimeout = const Duration(seconds: 15);
    _dio.options.receiveTimeout = const Duration(seconds: 15);
  }

  static Future<void> _setupAndroidChannel() async {
    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'tyrads_channel',
      'TyrAds Notifications',
      description: 'Notifications from TyrAds SDK',
      importance: Importance.high,
      enableVibration: true,
      playSound: true,
    );

    final androidImplementation = _notifications
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();

    if (androidImplementation != null) {
      await androidImplementation.createNotificationChannel(channel);
      await androidImplementation.requestNotificationsPermission();
    }
  }

  static Future<void> showNotification({
    required String title,
    required String body,
    String? imageUrl,
    Map<String, dynamic>? payload,
  }) async {
    final notificationId = DateTime.now().millisecondsSinceEpoch ~/ 1000;

    String? imagePath;
    if (imageUrl != null && imageUrl.isNotEmpty) {
      imagePath = await _downloadAndCacheImage(imageUrl, notificationId);
    }

    final androidDetails = AndroidNotificationDetails(
      'tyrads_channel',
      'TyrAds Notifications',
      channelDescription: 'Notifications from TyrAds SDK',
      importance: Importance.high,
      priority: Priority.high,
      showWhen: true,
      ticker: title,
      largeIcon: imagePath != null ? FilePathAndroidBitmap(imagePath) : null,
      styleInformation: imagePath != null
          ? BigPictureStyleInformation(
        FilePathAndroidBitmap(imagePath),
        hideExpandedLargeIcon: true,
        contentTitle: title,
        summaryText: body,
      )
          : BigTextStyleInformation(
        body,
        contentTitle: title,
      ),
    );

    final iosDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
      attachments: imagePath != null
          ? [DarwinNotificationAttachment(imagePath)]
          : null,
    );

    final platformDetails = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    await _notifications.show(
      notificationId,
      title,
      body,
      platformDetails,
      payload: payload != null ? json.encode(payload) : null,
    );
  }

  static Future<String?> _downloadAndCacheImage(String imageUrl, int notificationId) async {
    try {
      final response = await _dio.get(
        imageUrl,
        options: Options(
          responseType: ResponseType.bytes,
          headers: {
            'User-Agent': 'TyrAds-Flutter-SDK',
          },
        ),
      );

      if (response.statusCode != 200) return null;

      final directory = await getTemporaryDirectory();
      final extension = _getFileExtension(imageUrl, response);
      final fileName = 'notification_image_$notificationId$extension';
      final file = File('${directory.path}/$fileName');

      await file.writeAsBytes(response.data);
      return file.path;
    } catch (e) {
      log('Failed to download notification image: $e');
      return null;
    }
  }

  static String _getFileExtension(String url, Response response) {
    final contentType = response.headers['content-type']?.first;
    if (contentType != null) {
      if (contentType.contains('png')) return '.png';
      if (contentType.contains('jpeg') || contentType.contains('jpg')) return '.jpg';
      if (contentType.contains('gif')) return '.gif';
      if (contentType.contains('webp')) return '.webp';
    }

    if (url.toLowerCase().contains('.png')) return '.png';
    if (url.toLowerCase().contains('.jpg') || url.toLowerCase().contains('.jpeg')) return '.jpg';
    if (url.toLowerCase().contains('.gif')) return '.gif';
    if (url.toLowerCase().contains('.webp')) return '.webp';

    return '.jpg';
  }

  static Future<void> clearCachedImages() async {
    try {
      final directory = await getTemporaryDirectory();
      final files = directory.listSync();
      for (final file in files) {
        if (file is File && file.path.contains('notification_image_')) {
          await file.delete();
        }
      }
    } catch (e) {
      log('Failed to clear cached images: $e');
    }
  }

  static Future<void> showTextNotification({
    required String title,
    required String body,
    Map<String, dynamic>? payload,
  }) async {
    await showNotification(
      title: title,
      body: body,
      payload: payload,
    );
  }

  static Future<void> showImageNotification({
    required String title,
    required String body,
    required String imageUrl,
    Map<String, dynamic>? payload,
  }) async {
    await showNotification(
      title: title,
      body: body,
      imageUrl: imageUrl,
      payload: payload,
    );
  }

  static void dispose() {
    _dio.close();
  }
}