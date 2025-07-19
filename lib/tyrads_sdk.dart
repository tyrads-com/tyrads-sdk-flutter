// ignore_for_file: prefer_typing_uninitialized_variables

library tyrads_sdk;

import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:advertising_id/advertising_id.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tyrads_sdk/src/acmo/core/aes_encrypt.dart';
import 'package:tyrads_sdk/src/acmo/core/app.dart';
import 'package:tyrads_sdk/src/acmo/core/constants/endpoint_name.dart';
import 'package:tyrads_sdk/src/acmo/core/constants/key_names.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/colors.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/common.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/platform.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/toasts.dart';
import 'package:tyrads_sdk/src/acmo/core/network/network_common.dart';
import 'package:tyrads_sdk/src/acmo/modules/device_details/controller.dart';
import 'package:tyrads_sdk/src/acmo/modules/usage_stats/controller.dart';
import 'package:tyrads_sdk/src/acmo/modules/users/models/init.dart';
import 'package:tyrads_sdk/src/acmo/modules/users/repository.dart';
import 'package:tyrads_sdk/src/acmo/core/extensions/colors.dart';
import 'package:tyrads_sdk/src/app_config.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';
import 'package:tyrads_sdk/src/plugin/tyrads_sdk_platform_interface.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uuid/uuid.dart';

import 'src/acmo/modules/dashboard/top_offers.dart';
import 'src/acmo/modules/tracking/activities.dart';
import 'src/acmo/modules/tracking/controller.dart';

part 'src/acmo/core/input_models/media_source_info.dart';
part 'src/acmo/core/input_models/user_info.dart';
part 'src/acmo/core/constants/deep_routes.dart';
part 'src/acmo/core/helpers/callback_types.dart';

class Tyrads {
  static final Tyrads _singleton = Tyrads._internal();

  final navKey = GlobalKey<NavigatorState>();
  var newUser = false;
  var apiKey;
  var apiSecret;
  var publisherUserID;
  late AcmoInitModel loginData;
  Color? colorHeaderBg;
  Color? colorHeaderFg;
  Color? colorMain;
  Color? colorPremium;
  Color? colorPremiumFg;
  BuildContext? parentContext;
  late Dio dio;
  int? campaignID;
  String? route;
  Completer initializationWait = Completer();
  TyradsMediaSourceInfo? mediaSourceInfo;
  TyradsUserInfo? userInfo;
  var tracker = AcmoTrackingController();
  var webUrl = "";
  var _isInitCalled = false;
  var _isLoginCalled = false;
  var isLoginSuccessful = false;
  late SharedPreferences prefs;
  int? launchMode;
  bool _isSecure = false;

  bool get isSecure => _isSecure;

  Tyrads._internal();
  static Tyrads get instance {
    return _singleton;
  }

  late String selectedLanguage;
  final _callbacks = <TyradsCallbackType, TyradsCallback>{};

  Future<void> init({
    required apiKey,
    required apiSecret,
    String? encryptionKey,
    TyradsMediaSourceInfo? mediaSourceInfo,
    TyradsUserInfo? userInfo,
    int? launchMode,
  }) async {
    _isInitCalled = true;
    this.apiKey = apiKey;
    this.apiSecret = apiSecret;
    this.userInfo = userInfo;
    this.mediaSourceInfo = mediaSourceInfo;
    this.launchMode = launchMode;
    prefs = await SharedPreferences.getInstance();
    if (Platform.isAndroid) {
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
    //LocaleSettings.useDeviceLocale();
    LocaleSettings.setLocaleRaw(selectedLanguage, listenToDeviceLocale: true);
  }

  Future<bool> loginUser({String? userID = ""}) async {
    try {
      if (!_isInitCalled) {
        log("Make sure init method is called first");
        return false;
      }
      _isLoginCalled = true;
      userID ??= "";
      SharedPreferences prefs = await SharedPreferences.getInstance();
      if (userID.isEmpty) {
        userID = prefs.getString(AcmoKeyNames.USER_ID) ?? "";
      }
      String customAdId = prefs.getString(AcmoKeyNames.CUSTOM_AD_ID) ?? "";
      if (customAdId.isEmpty) {
        customAdId = const Uuid().v4();
        prefs.setString(AcmoKeyNames.CUSTOM_AD_ID, customAdId);
      }

      var identifierType = "OTHER";
      if (kIsWeb) {
      } else if (Platform.isAndroid) {
        identifierType = "GAID";
      } else if (Platform.isIOS) {
        identifierType = "IDFA";
      }
      String? advertisingId;
      try {
        advertisingId = await AdvertisingId.id(true);
      } finally {}
      var fd = {
        "publisherUserId": userID,
        "platform": acmoGetPlatformName(),
      };
      if (!kIsWeb) {
        var deviceDetailsController = AcmoDeviceDetailsController();
        var deviceDetails = await deviceDetailsController.getDeviceDetails();
        fd["deviceData"] = deviceDetails;
        if (advertisingId == null || advertisingId.isEmpty) {
          identifierType = "OTHER";
          advertisingId = customAdId;
        }
      }
      fd["identifierType"] = identifierType;
      fd["identifier"] = advertisingId;
      if (mediaSourceInfo?.sub1 != null) {
        fd["sub1"] = mediaSourceInfo?.sub1;
      }
      if (mediaSourceInfo?.sub2 != null) {
        fd["sub2"] = mediaSourceInfo?.sub2;
      }
      if (mediaSourceInfo?.sub3 != null) {
        fd["sub3"] = mediaSourceInfo?.sub3;
      }
      if (mediaSourceInfo?.sub4 != null) {
        fd["sub4"] = mediaSourceInfo?.sub4;
      }
      if (mediaSourceInfo?.sub5 != null) {
        fd["sub5"] = mediaSourceInfo?.sub5;
      }
      if (mediaSourceInfo?.mediaSourceName != null) {
        fd["mediaSourceName"] = mediaSourceInfo?.mediaSourceName;
      }
      if (mediaSourceInfo?.mediaSourceId != null) {
        fd["mediaSourceId"] = mediaSourceInfo?.mediaSourceId;
      }
      if (mediaSourceInfo?.mediaSubSourceId != null) {
        fd["mediaSubSourceId"] = mediaSourceInfo?.mediaSubSourceId;
      }
      if (mediaSourceInfo?.incentivized != null) {
        fd["incentivized"] = mediaSourceInfo?.incentivized;
      }
      if (mediaSourceInfo?.mediaAdsetName != null) {
        fd["mediaAdsetName"] = mediaSourceInfo?.mediaAdsetName;
      }
      if (mediaSourceInfo?.mediaAdsetId != null) {
        fd["mediaAdsetId"] = mediaSourceInfo?.mediaAdsetId;
      }
      if (mediaSourceInfo?.mediaCreativeName != null) {
        fd["mediaCreativeName"] = mediaSourceInfo?.mediaCreativeName;
      }
      if (mediaSourceInfo?.mediaCreativeId != null) {
        fd["mediaCreativeId"] = mediaSourceInfo?.mediaCreativeId;
      }
      if (mediaSourceInfo?.mediaCampaignName != null) {
        fd["mediaCampaignName"] = mediaSourceInfo?.mediaCampaignName;
      }
      if (userInfo?.email != null) {
        fd["email"] = userInfo?.email;
      }
      if (userInfo?.phoneNumber != null) {
        fd["phoneNumber"] = userInfo?.phoneNumber;
      }
      if (userInfo?.userGroup != null) {
        fd["userGroup"] = userInfo?.userGroup;
      }
      final encKey = prefs.getString(AcmoKeyNames.ENCRYPTION_KEY) ?? "";
      final encData = _isSecure
        ? await AcmoEncrypt(encKey).encryptDataAESGCM(fd)
        : {};
      var response = await dio.post(AcmoEndpointNames.INITIALIZE,
          data: _isSecure ? encData : fd);
      if (response.statusCode == 200) {
        loginData = AcmoInitModel.fromJson(response.data);
        publisherUserID = loginData.data.user.publisherUserId;
        await prefs.setString(AcmoKeyNames.USER_ID, publisherUserID);
        newUser = loginData.data.newRegisteredUser;
        colorMain = loginData.data.publisherApp.mainColor.toColor();

        colorHeaderBg = loginData.data.publisherApp.headerColor.toColor();
        colorHeaderFg = acmoGetFontColorForBackground(colorHeaderBg);

        colorPremium = loginData.data.publisherApp.premiumColor.toColor() ??
            const Color(0xff02B5BE);
        colorPremiumFg = acmoGetFontColorForBackground(colorPremium);

        var privacyAccepted = prefs.getBool(
                AcmoKeyNames.PRIVACY_ACCEPTED_FOR_USER_ID +
                    Tyrads.instance.publisherUserID) ??
            false;
        if (privacyAccepted) {
          var usageStatsController = AcmoControllerUsageStats();
          usageStatsController.saveUsageStats();
        }
        track(TyradsActivity.initialized);
        isLoginSuccessful = true;
      }
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      if (!initializationWait.isCompleted) {
        initializationWait.complete();
      }
    }
    return isLoginSuccessful;
  }

  Future<void> logoutUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(AcmoKeyNames.USER_ID);
    publisherUserID = '';
    isLoginSuccessful = false;
  }

  setLaunchMode(int launchMode) {
    this.launchMode = launchMode;
  }

  setNewUser(bool newUser) {
    this.newUser = newUser;
  }

  updateUser(String userId, {int? age, int? gender}) async {
    var fd = <String, dynamic>{};
    var repo = AcmoUsersRepository();
    if (age != null) {
      fd["age"] = age;
    }
    if (gender != null) {
      fd["gender"] = gender;
    }
    await repo.updateUser(userId, fd);
  }

  Future<void> showOffers(context,
      {int? campaignID, String? route, int? launchMode}) async {
    try {
      if (_isLoginCalled) {
        log("Make sure login method is called first");
      }
      if (await waitAndCheck() == false) {
        return;
      }
      final encryptionKey = prefs.getString(AcmoKeyNames.ENCRYPTION_KEY) ?? "";
      this.campaignID = campaignID;
      this.route = route ?? TyradsDeepRoutes.CAMPAIGNS;
      webUrl =
          'https://websdk.tyrads.com/?apiKey=${Tyrads.instance.apiKey}&apiSecret=${Tyrads.instance.apiSecret}&encKey=$encryptionKey&userID=${Tyrads.instance.publisherUserID}&newUser=${Tyrads.instance.newUser}&platform=${acmoGetPlatformName()}&hc=${loginData.data.publisherApp.headerColor}&mc=${loginData.data.publisherApp.mainColor}&launchMode=2&route=$route&campaignID=$campaignID&av=${AcmoConfig.AV}&sdkVersion=${AcmoConfig.SDK_VERSION}&pc=${loginData.data.publisherApp.premiumColor}&lang=${Tyrads.instance.selectedLanguage}';
      if (launchMode == null) {
        if (this.launchMode == null) {
          if (Platform.isIOS) {
            launchMode = 3;
          } else {
            launchMode = 1;
          }
        } else {
          launchMode = this.launchMode;
        }
      }
      this.launchMode = launchMode;
      if (launchMode != 2 || launchMode != 3) {
        log("launchMode must be 2 or 3");
      }
      if (launchMode != 1) {
        Tyrads.instance.newUser =
            false; //to be sure that browser would not show it again
      }

      if (Platform.isIOS && launchMode != 2) {
        var mode = LaunchMode.externalApplication;
        acmoLaunchURLForce(webUrl, mode: mode);
      } else {
        runZonedGuarded(() {
          parentContext = context;
          Navigator.of(parentContext!)
              .push(MaterialPageRoute(builder: (context) => const AcmoApp()));
        }, (error, stack) {});
      }
      track(TyradsActivity.opened);
    } catch (e) {
      log("Exiting");
    }
  }

  to(Widget page, {bool replace = false}) async {
    dynamic result;
    if (replace) {
      result = await navKey.currentState!
          .pushReplacement(MaterialPageRoute(builder: (context) => page));
    } else {
      result = await navKey.currentState!
          .push(MaterialPageRoute(builder: (context) => page));
    }
    return result;
  }

  dialog(Widget dialog) async {
    return await showDialog(context: parentContext!, builder: (c) => dialog);
  }

  back({result}) {
    var navigator = navKey.currentState;
    if (navigator != null) {
      if (navigator.canPop()) {
        navigator.pop(result);
        return true;
      } else if (parentContext != null) {
        Navigator.pop(parentContext!, result);
        track(TyradsActivity.closed);
        parentContext = null; //important for memory management
        return true;
      }
    }
    if (parentContext != null) {
      Navigator.pop(parentContext!, result);
      track(TyradsActivity.closed);
    }
    return false;
  }

  track(String activity) {
    tracker.trackUser(activity);
  }

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
  ///
  /// The callback will be called when the corresponding event happens.
  ///
  /// Supported events are:
  ///
  /// - [TyradsCallbackType.campaignDetail]: Called when the offer detail page is opened.
  /// - [TyradsCallbackType.campaignActivated]: Called when a campaign is activated.
  /// - [TyradsCallbackType.campaignInstalled]: Called when a campaign is installed.
  ///
  /// The `callback` parameter is a function that takes a single argument,
  /// which is a [Map<String, dynamic>] containing the event data.
  void setCallback(TyradsCallbackType type, TyradsCallback callback) {
    _callbacks[type] = callback;
  }

  /// Triggers a callback that has been registered via [setCallback].
  ///
  /// This is used internally to trigger callbacks when certain events happen.
  /// You should not need to call this method directly.
  void triggerCallback(TyradsCallbackType type, Map<String, dynamic> data) {
    _callbacks[type]?.call(data);
  }

  Widget topOffersWidget(BuildContext context,
      {showMore = true,
      showMyOffers = true,
      showMyOffersEmptyView = false,
      widgetStyle = 4}) {
    parentContext = context;
    return TopOffersWidget(
      key: TopOffersWidget.globalKey,
      showMore: showMore,
      showMyOffers: showMyOffers,
      showMyOffersEmptyView: showMyOffersEmptyView,
      widgetStyle: widgetStyle,
    );
  }

  Future<void> changeLanguage(String languageCode) async {
    prefs = await SharedPreferences.getInstance();
    if (languageCode == "device") {
      selectedLanguage =
          WidgetsBinding.instance.platformDispatcher.locale.languageCode;
      LocaleSettings.useDeviceLocale();
      prefs.remove(AcmoKeyNames.LANGUAGE);
    } else {
      selectedLanguage = languageCode;
      LocaleSettings.setLocaleRaw(selectedLanguage, listenToDeviceLocale: true);
      prefs.setString(AcmoKeyNames.LANGUAGE, selectedLanguage);
    }
    TopOffersWidget.globalKey.currentState?.forceRebuild();
  }
}
