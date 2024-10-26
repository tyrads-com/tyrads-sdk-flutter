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
import 'package:uuid/uuid.dart';

import 'src/acmo/modules/tracking/activities.dart';
import 'src/acmo/modules/tracking/controller.dart';

part 'src/acmo/core/input_models/media_source_info.dart';
part 'src/acmo/core/input_models/user_info.dart';
part 'src/acmo/core/constants/deep_routes.dart';

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

  Tyrads._internal();
  static Tyrads get instance {
    return _singleton;
  }

  init(
      {required apiKey,
      required apiSecret,
      TyradsMediaSourceInfo? mediaSourceInfo,
      TyradsUserInfo? userInfo}) async {
    _isInitCalled = true;
    this.apiKey = apiKey;
    this.apiSecret = apiSecret;
    this.userInfo = userInfo;
    this.mediaSourceInfo = mediaSourceInfo;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(AcmoKeyNames.API_KEY, apiKey);
    await prefs.setString(AcmoKeyNames.API_SECRET, apiSecret);
    dio = NetworkCommon().dio;
  }

  Future<bool> loginUser({String? userID = ""}) async {
    try {
      if(!_isInitCalled){
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

      var response = await dio.post(AcmoEndpointNames.INITIALIZE, data: fd);

      if (response.statusCode == 200) {
        loginData = AcmoInitModel.fromJson(response.data);
        publisherUserID = loginData.data.user.publisherUserId;
        await prefs.setString(AcmoKeyNames.USER_ID, publisherUserID);
        newUser = loginData.data.newRegisteredUser;
        colorHeaderBg = loginData.data.publisherApp.headerColor.toColor();
        colorMain = loginData.data.publisherApp.mainColor.toColor();
        colorHeaderFg = acmoGetFontColorForBackground(colorHeaderBg);

        var privacyAccepted = prefs.getBool(
                AcmoKeyNames.PRIVACY_ACCEPTED_FOR_USER_ID +
                    Tyrads.instance.publisherUserID) ?? false;
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

  logoutUser() async {
    publisherUserID = '';
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(AcmoKeyNames.USER_ID, publisherUserID);
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

  showOffers(context, {int? campaignID, String? route}) async {
   
    if (!_isLoginCalled) {
      log("Make sure loginUser method is called first");
      return;
    }

    if (!initializationWait.isCompleted) {
      acmoSnackbar("Loading...");
    }
    await initializationWait.future;
    if(!isLoginSuccessful){
      log("initialisation failed");
      acmoSnackbar("Please try back later.");
      return;
    }
    this.campaignID = campaignID;
    this.route = route ?? TyradsDeepRoutes.CAMPAIGNS;
    webUrl =
          'https://websdk.tyrads.com/?apiKey=${Tyrads.instance.apiKey}&apiSecret=${Tyrads.instance.apiSecret}&userID=${Tyrads.instance.publisherUserID}&newUser=${Tyrads.instance.newUser}&platform=${acmoGetPlatformName()}&hc=${loginData.data.publisherApp.headerColor}&mc=${loginData.data.publisherApp.mainColor}&launchMode=3&route=$route&campaignID=$campaignID';
    if (Platform.isIOS) {
      acmoLaunchURLForce(webUrl);
    } else {
      runZonedGuarded(() {
        parentContext = context;
        Navigator.of(parentContext!)
            .push(MaterialPageRoute(builder: (context) => const AcmoApp()));
      }, (error, stack) {});
    }
    track(TyradsActivity.opened);
  }

  to(Widget page, {bool replace = false}) {
    if (replace) {
      navKey.currentState!
          .pushReplacement(MaterialPageRoute(builder: (context) => page));
    } else {
      navKey.currentState!.push(MaterialPageRoute(builder: (context) => page));
    }
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
}
