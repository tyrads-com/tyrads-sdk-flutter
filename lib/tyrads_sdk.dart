// ignore_for_file: prefer_typing_uninitialized_variables

library tyrads_sdk;

import 'dart:async';
import 'dart:io';

import 'package:advertising_id/advertising_id.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tyrads_sdk/src/acmo/core/app.dart';
import 'package:tyrads_sdk/src/acmo/core/constants/endpoint_name.dart';
import 'package:tyrads_sdk/src/acmo/core/constants/key_names.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/platform.dart';
import 'package:tyrads_sdk/src/acmo/core/network/network_common.dart';
import 'package:tyrads_sdk/src/acmo/modules/device_details/controller.dart';
import 'package:tyrads_sdk/src/acmo/modules/users/repository.dart';

class Tyrads {
  static final Tyrads _singleton = Tyrads._internal();

  final navKey = GlobalKey<NavigatorState>();
  var newUser = false;
  var apiKey;
  var apiSecret;
  var publisherUserID;
  BuildContext? parentContext;
  late Dio dio;

  Tyrads._internal();
  static Tyrads get instance {
    return _singleton;
  }

  init({
    required apiKey,
    required apiSecret,
  }) async {
    this.apiKey = apiKey;
    this.apiSecret = apiSecret;
    dio = NetworkCommon().dio;
  }

  loginUser({
    String? userID = "",
  }) async {
    userID ??= "";
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (userID.isEmpty) {
      userID = prefs.getString(AcmoKeyNames.USER_ID) ?? "";
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
      advertisingId = await AdvertisingId.id();
    } catch (e) {
      advertisingId = '';
    }

    var fd = {
      "publisherUserId": userID,
      "platform": acmoGetPlatformName(),
      "identifierType": identifierType,
      "identifier": advertisingId,
    };
    if (!kIsWeb) {
      var deviceDetailsController = AcmoDeviceDetailsController();
      var deviceDetails = await deviceDetailsController.getDeviceDetails();
      fd["deviceData"] = deviceDetails;
    }
    var response = await dio.post(AcmoEndpointNames.INITIALIZE, data: fd);

    if (response.statusCode == 200) {
      var result = response.data;
      publisherUserID = result["data"]["user"]["publisherUserId"].toString();
      prefs.setString(AcmoKeyNames.USER_ID, publisherUserID);
      newUser = result["data"]["newRegisteredUser"];
    }
  }

  logoutUser() async {
    publisherUserID = '';
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(AcmoKeyNames.USER_ID, publisherUserID);
  }

  updateUser(String userId,{int? age , int? gender }) async {
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

  showOffers(context) {
    runZonedGuarded(() {
      parentContext = context;
      Navigator.of(parentContext!)
          .push(MaterialPageRoute(builder: (context) => const AcmoApp()));
    }, (error, stack) {});
  }

  to(Widget page, {bool replace = false}) {
    if (replace) {
      navKey.currentState!
          .pushReplacement(MaterialPageRoute(builder: (context) => page));
    } else {
      navKey.currentState!.push(MaterialPageRoute(builder: (context) => page));
    }
  }

  back() {
    var navigator = navKey.currentState;
    if (navigator != null) {
      if (navigator.canPop()) {
        navigator.pop();
      } else {
        Navigator.pop(parentContext!);
        parentContext = null; //important for memory management
      }
      return true;
    }
    Navigator.pop(parentContext!);
    return false;
  }
}
