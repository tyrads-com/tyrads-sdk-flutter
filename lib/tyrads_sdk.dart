// ignore_for_file: prefer_typing_uninitialized_variables

library tyrads_sdk;

import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:advertising_id/advertising_id.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tyrads_sdk/src/acmo/core/aes_encrypt.dart';
import 'package:tyrads_sdk/src/acmo/core/app.dart';
import 'package:tyrads_sdk/src/acmo/core/constants/endpoint_name.dart';
import 'package:tyrads_sdk/src/acmo/core/constants/key_names.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/colors.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/platform.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/toasts.dart';
import 'package:tyrads_sdk/src/acmo/core/network/network_common.dart';
import 'package:tyrads_sdk/src/acmo/core/onboarding_check.dart';
import 'package:tyrads_sdk/src/acmo/core/services/localization_service.dart';
import 'package:tyrads_sdk/src/acmo/core/services/notifications/fcm_services.dart';
import 'package:tyrads_sdk/src/acmo/modules/device_details/controller.dart';
import 'package:tyrads_sdk/src/acmo/modules/in_app_notification/controllers.dart';
import 'package:tyrads_sdk/src/acmo/modules/premium_widgets/controller.dart';
import 'package:tyrads_sdk/src/acmo/modules/premium_widgets/top_offers.dart';
import 'package:tyrads_sdk/src/acmo/modules/push-notifications/apns_manager.dart';
import 'package:tyrads_sdk/src/acmo/modules/usage_stats/controller.dart';
import 'package:tyrads_sdk/src/acmo/modules/users/models/init.dart';
import 'package:tyrads_sdk/src/acmo/modules/users/repository.dart';
import 'package:tyrads_sdk/src/acmo/core/extensions/colors.dart';
import 'package:tyrads_sdk/src/plugin/tyrads_sdk_platform_interface.dart';
import 'package:uuid/uuid.dart';

import 'src/acmo/modules/tracking/activities.dart';
import 'src/acmo/modules/tracking/controller.dart';
import 'src/acmo/modules/web_sdk/webview_manager.dart';

part 'src/acmo/core/input_models/media_source_info.dart';
part 'src/acmo/core/input_models/user_info.dart';
part 'src/acmo/core/constants/deep_routes.dart';
part 'src/acmo/core/helpers/callback_types.dart';
part 'src/acmo/modules/premium_widgets/widgets/premium_widget_styles.dart';

class Tyrads {
  static final Tyrads _singleton = Tyrads._internal();

  final navKey = GlobalKey<NavigatorState>();
  var newUser = false;
  var apiKey;
  var apiSecret;
  var publisherUserID;
  var token;
  String? engagementId;

  late AcmoInitModel loginData;
  Color? colorHeaderBg;
  Color? colorHeaderFg;
  Color? colorMain;
  Color? colorPremium;
  Color? colorPremiumFg;
  BuildContext? _parentContext;

  BuildContext? get parentContext => _parentContext;

  set parentContext(BuildContext? value) {
    _parentContext = value;
    if (_parentContext != null) {
      if (_pendingDeepLink != null) {
        final routeToProcess = _pendingDeepLink!;
        _pendingDeepLink = null;
        showOffers(_parentContext!, route: routeToProcess);
      }
      FCMService.checkPendingDeepLink();
    }
  }

  String? _pendingDeepLink;
  final deepLinkNotifier = ValueNotifier<String?>(null);

  late Dio dio;
  int? campaignID;
  String? route;
  Completer initializationWait = Completer();
  TyradsMediaSourceInfo? mediaSourceInfo;
  TyradsUserInfo? userInfo;
  var tracker = AcmoTrackingController();
  var webURI = Uri();
  final _callbacks = <TyradsCallbackType, TyradsCallback>{};

  var _isInitCalled = false;
  var _isLoginCalled = false;
  var isLoginSuccessful = false;
  late SharedPreferences prefs;
  int? launchMode;
  bool _isSecure = false;

  bool get isSecure => _isSecure;

  Tyrads._internal();

  static Tyrads get instance => _singleton;

  late String selectedLanguage;

  Future<void> init({
    required apiKey,
    required apiSecret,
    String? encryptionKey,
    String? engagementId,
    TyradsMediaSourceInfo? mediaSourceInfo,
    TyradsUserInfo? userInfo,
    int? launchMode,
  }) async {
    _isInitCalled = true;
    this.apiKey = apiKey;
    this.apiSecret = apiSecret;
    this.engagementId = engagementId;
    this.userInfo = userInfo;
    this.mediaSourceInfo = mediaSourceInfo;
    this.launchMode = launchMode;

    prefs = await SharedPreferences.getInstance();

    if (AcmoPlatform.isAndroid) {
      final integrityToken =
      await TyradsSdkPlatform.instance.getPlayIntegrityToken();
      await prefs.setString(AcmoKeyNames.PLAY_INTEGRITY_TOKEN, integrityToken);
    }

    await prefs.setString(AcmoKeyNames.API_KEY, apiKey);
    await prefs.setString(AcmoKeyNames.API_SECRET, apiSecret);

    if (encryptionKey != null) {
      await prefs.setString(AcmoKeyNames.ENCRYPTION_KEY, encryptionKey);
      _isSecure = true;
    }

    dio = NetworkCommon().dio;
    selectedLanguage = prefs.getString(AcmoKeyNames.LANGUAGE) ??
        WidgetsBinding.instance.platformDispatcher.locale.languageCode;
    WidgetsFlutterBinding.ensureInitialized();
    log("Selected Language: $selectedLanguage");
    await LocalizationService().init(selectedLanguage);

    if (AcmoPlatform.isAndroid) {
      try {
        await FCMService.initialize();
      } catch (error) {
        log("Failed to init FCM: $error");
      }
    }
    if (AcmoPlatform.isIOS) {
      try {
        ApnsManager.instance.init();
      } catch (e) {
        log("Error initializing APNs: $e");
      }
    }
  }

  Future<bool> loginUser({String? userID = ""}) async {
    try {
      if (!_isInitCalled) {
        log("Make sure init method is called first");
        return false;
      }
      _isLoginCalled = true;
      userID ??= "";

      if (userID.isEmpty) {
        userID = prefs.getString(AcmoKeyNames.USER_ID) ?? "";
      }

      String customAdId = prefs.getString(AcmoKeyNames.CUSTOM_AD_ID) ?? "";
      if (customAdId.isEmpty) {
        customAdId = const Uuid().v4();
        prefs.setString(AcmoKeyNames.CUSTOM_AD_ID, customAdId);
      }

      bool? isLimitAdTrackingEnabled;
      var identifierType = "OTHER";
      if (kIsWeb) {
      } else if (Platform.isAndroid) {
        identifierType = "GAID";
      } else if (Platform.isIOS) {
        identifierType = "IDFA";
      }

      String? advertisingId;
      if (!kIsWeb) {
        try {
          isLimitAdTrackingEnabled =
          await AdvertisingId.isLimitAdTrackingEnabled;
          advertisingId = await AdvertisingId.id(true);
        } on PlatformException {
          debugPrint("Failed to get advertising id");
        }
      }

      final String? fcmToken = prefs.getString(AcmoKeyNames.FCM_TOKEN);
      final String? apnsToken = prefs.getString(AcmoKeyNames.APNS_TOKEN);

      var fd = {
        "publisherUserId": userID,
        "platform": acmoGetPlatformName(),
      };

      if (!kIsWeb) {
        final deviceDetailsController = AcmoDeviceDetailsController();
        final deviceDetails =
        await deviceDetailsController.getDeviceDetails();
        fd["deviceData"] = deviceDetails;

        if (isLimitAdTrackingEnabled == true && AcmoPlatform.isIOS) {
          identifierType = "OTHER";
          advertisingId = deviceDetails["deviceId"];
        }
        if (advertisingId == null || advertisingId.isEmpty) {
          identifierType = "OTHER";
          advertisingId = customAdId;
        }

        if (fcmToken != null && fcmToken.isNotEmpty) {
          fd["devicePushToken"] = fcmToken;
        }
        if (AcmoPlatform.isIOS && apnsToken != null && apnsToken.isNotEmpty) {
          fd["devicePushToken"] = apnsToken;
        }
      }

      final engagementId = this.engagementId;
      fd["engagementId"] = (engagementId != null && engagementId != "")
          ? int.parse(engagementId)
          : null;
      fd["identifierType"] = identifierType;
      fd["identifier"] = advertisingId ?? "NA";

      if (mediaSourceInfo?.sub1 != null) fd["sub1"] = mediaSourceInfo?.sub1;
      if (mediaSourceInfo?.sub2 != null) fd["sub2"] = mediaSourceInfo?.sub2;
      if (mediaSourceInfo?.sub3 != null) fd["sub3"] = mediaSourceInfo?.sub3;
      if (mediaSourceInfo?.sub4 != null) fd["sub4"] = mediaSourceInfo?.sub4;
      if (mediaSourceInfo?.sub5 != null) fd["sub5"] = mediaSourceInfo?.sub5;
      if (mediaSourceInfo?.mediaSourceName != null)
        fd["mediaSourceName"] = mediaSourceInfo?.mediaSourceName;
      if (mediaSourceInfo?.mediaSourceId != null)
        fd["mediaSourceId"] = mediaSourceInfo?.mediaSourceId;
      if (mediaSourceInfo?.mediaSubSourceId != null)
        fd["mediaSubSourceId"] = mediaSourceInfo?.mediaSubSourceId;
      if (mediaSourceInfo?.incentivized != null)
        fd["incentivized"] = mediaSourceInfo?.incentivized;
      if (mediaSourceInfo?.mediaAdsetName != null)
        fd["mediaAdsetName"] = mediaSourceInfo?.mediaAdsetName;
      if (mediaSourceInfo?.mediaAdsetId != null)
        fd["mediaAdsetId"] = mediaSourceInfo?.mediaAdsetId;
      if (mediaSourceInfo?.mediaCreativeName != null)
        fd["mediaCreativeName"] = mediaSourceInfo?.mediaCreativeName;
      if (mediaSourceInfo?.mediaCreativeId != null)
        fd["mediaCreativeId"] = mediaSourceInfo?.mediaCreativeId;
      if (mediaSourceInfo?.mediaCampaignName != null)
        fd["mediaCampaignName"] = mediaSourceInfo?.mediaCampaignName;
      if (userInfo?.email != null) fd["email"] = userInfo?.email;
      if (userInfo?.phoneNumber != null)
        fd["phoneNumber"] = userInfo?.phoneNumber;
      if (userInfo?.userGroup != null) fd["userGroup"] = userInfo?.userGroup;

      final encKey = prefs.getString(AcmoKeyNames.ENCRYPTION_KEY) ?? "";
      final body =
      _isSecure ? await AcmoEncrypt(encKey).encryptDataAESGCM(fd) : fd;

      final response =
      await dio.post(AcmoEndpointNames.INITIALIZE, data: body);

      if (response.statusCode == 200) {
        loginData = AcmoInitModel.fromJson(response.data);

        publisherUserID = loginData.data.user.publisherUserId;
        await prefs.setString(AcmoKeyNames.USER_ID, publisherUserID);

        token = loginData.data.token;
        await prefs.setString(AcmoKeyNames.TOKEN, token);

        newUser = loginData.data.newRegisteredUser;
        colorMain = loginData.data.publisherApp.mainColor.toColor();
        colorHeaderBg = loginData.data.publisherApp.headerColor.toColor();
        colorHeaderFg = acmoGetFontColorForBackground(colorHeaderBg);
        colorPremium =
            loginData.data.publisherApp.premiumColor.toColor() ??
                const Color(0xff02B5BE);
        colorPremiumFg = acmoGetFontColorForBackground(colorPremium);

        final privacyAccepted = prefs.getBool(
            AcmoKeyNames.PRIVACY_ACCEPTED_FOR_USER_ID +
                Tyrads.instance.publisherUserID) ??
            false;
        if (privacyAccepted) {
          AcmoControllerUsageStats().saveUsageStats();
        }

        track(TyradsActivity.initialized);
        isLoginSuccessful = true;
        AcmoInAppNotificationController.instance.init();
        _preloadWebView();
      }
    } catch (e) {
      debugPrint("Error initializing: ${e.toString()}");
      isLoginSuccessful = false;
    } finally {
      if (!initializationWait.isCompleted) {
        initializationWait.complete();
      }
    }
    return isLoginSuccessful;
  }

  Future<void> logoutUser() async {
    await prefs.remove(AcmoKeyNames.USER_ID);
    await prefs.remove(AcmoKeyNames.TOKEN);
    publisherUserID = '';
    isLoginSuccessful = false;
  }

  setLaunchMode(int launchMode) => this.launchMode = launchMode;

  setNewUser(bool newUser) => this.newUser = newUser;

  Future<void> setSkipUserInfo(bool newValue) async {
    final key =
        "${AcmoKeyNames.SKIP_USER_INFO}${Tyrads.instance.publisherUserID}";
    await prefs.setBool(key, newValue);
  }

  bool getSkipUserInfo() {
    final key =
        "${AcmoKeyNames.SKIP_USER_INFO}${Tyrads.instance.publisherUserID}";
    return prefs.getBool(key) ?? false;
  }

  updateUser(String userId, {int? age, int? gender}) async {
    final fd = <String, dynamic>{};
    if (age != null) fd["age"] = age;
    if (gender != null) fd["gender"] = gender;
    await AcmoUsersRepository().updateUser(userId, fd);
  }

  /// Builds a URI for the given route / campaignID.
  Uri getWebUri({int? campaignID, String? route}) {
    final skipUserInfo = getSkipUserInfo();
    final currentRoute = route ?? TyradsDeepRoutes.OFFERS;
    return Uri(
      scheme: 'https',
      host: 'sdk.tyrads.com',
      queryParameters: {
        'to': campaignID == null
            ? currentRoute
            : '$currentRoute/$campaignID',
        'token': token,
        'lang': selectedLanguage,
        'skipUserInfo': skipUserInfo.toString(),
      },
    );
  }

  /// Updates [webURI] and keeps it in sync (used by the notification branch).
  void updateWebUri(String targetRoute, {int? targetCampaignID}) {
    webURI = getWebUri(
      campaignID: targetCampaignID,
      route: targetRoute,
    );
  }

  void _preloadWebView() {
    if (!kIsWeb) {
      webURI = getWebUri();
      WebViewManager.instance.preload(webURI);
    }
  }

  Future<void> showOffers(
      context, {
        int? campaignID,
        String? route,
        int? launchMode,
      }) async {
    FCMService.clearPendingDeepLink();

    try {
      if (!_isLoginCalled) {
        log("Make sure login method is called first");
        return;
      }
      if (await waitAndCheck() == false) return;

      this.campaignID = campaignID;
      this.route = route ?? TyradsDeepRoutes.OFFERS;

      final requestedUri =
      getWebUri(campaignID: campaignID, route: this.route);

      if (webURI.toString() != requestedUri.toString() ||
          (!kIsWeb && WebViewManager.instance.headlessWebView == null)) {
        webURI = requestedUri;
        if (!kIsWeb) {
          WebViewManager.instance.preload(webURI);
        }
      }

      final ready =
      await OnboardingCheck.instance.checkOnboardingStatus(context);
      if (ready == false) {
        log("Onboarding not completed");
        return;
      }

      runZonedGuarded(() {
        parentContext = context;

        if (navKey.currentState != null && navKey.currentState!.mounted) {
          navKey.currentState!.pushReplacementNamed('/');
        } else {
          Navigator.of(_parentContext!)
              .push(MaterialPageRoute(builder: (_) => const AcmoApp()));
        }
      }, (error, stack) {});

      track(TyradsActivity.opened);
    } catch (e) {
      log("Exiting: $e");
    }
  }

  to(Widget page, {bool replace = false}) async {
    if (replace) {
      return await navKey.currentState!
          .pushReplacement(MaterialPageRoute(builder: (_) => page));
    }
    return await navKey.currentState!
        .push(MaterialPageRoute(builder: (_) => page));
  }

  dialog(Widget d) async =>
      await showDialog(context: parentContext!, builder: (_) => d);

  back({result}) {
    final navigator = navKey.currentState;
    if (navigator != null && navigator.canPop()) {
      navigator.pop(result);
      return true;
    }

    if (_parentContext != null) {
      try {
        Navigator.pop(_parentContext!, result);
        track(TyradsActivity.closed);
        _preloadWebView();
        return true;
      } catch (e) {
        return false;
      }
    }
    return false;
  }

  void setPendingDeepLink(String? route) {
    if (route == null) {
      _pendingDeepLink = null;
      return;
    }

    if (_parentContext != null) {
      showOffers(_parentContext!, route: route);
    } else {
      _pendingDeepLink = route;
    }
  }

  track(String activity) => tracker.trackUser(activity);

  Future<bool> waitAndCheck() async {
    if (!initializationWait.isCompleted) {
      acmoSnackbar("Loading...");
    }
    await initializationWait.future;
    if (!isLoginSuccessful) {
      log("initialisation failed");
      acmoSnackbar("Please try back later.");
      return false;
    }
    return true;
  }

  /// Registers a callback for a specific event.
  void setCallback(TyradsCallbackType type, TyradsCallback callback) {
    _callbacks[type] = callback;
  }

  /// Internal use only — triggers a registered callback.
  void triggerCallback(TyradsCallbackType type, Map<String, dynamic> data) {
    _callbacks[type]?.call(data);
  }

  Widget topOffersWidget(
      BuildContext context, {
        PremiumWidgetStyles widgetStyle = PremiumWidgetStyles.list,
      }) {
    parentContext = context;
    return TopOffersWidget(widgetStyle: widgetStyle);
  }

  /// Changes the SDK language and persists the choice.
  ///
  /// Supported codes: en, es, id, ja, ko, zh-Hans-CN.
  Future<void> changeLanguage(String languageCode) async {
    prefs = await SharedPreferences.getInstance();
    selectedLanguage = languageCode;
    await LocalizationService().changeLanguage(selectedLanguage);
    prefs.setString(AcmoKeyNames.LANGUAGE, selectedLanguage);
    AcmoPremiumWidgetsController.instance.refresh(force: true);
  }
}