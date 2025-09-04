// ignore_for_file: constant_identifier_names

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tyrads_sdk/src/acmo/core/constants/endpoint_name.dart';
import 'package:tyrads_sdk/src/acmo/core/constants/key_names.dart';
import 'package:tyrads_sdk/src/app_config.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class NetworkCommon {
  NetworkCommon._internal();

  static final NetworkCommon _singleton = NetworkCommon._internal();

  factory NetworkCommon() {
    return _singleton;
  }

  static const String DIO_CACHE_DB_NAME = "acmo_dio_cache";

  // static final DioCacheManagerCustom dioCacheManager = DioCacheManagerCustom(CacheConfig(
  //     databaseName: DIO_CACHE_DB_NAME,
  //     defaultMaxAge: Duration(days: 1),
  //     defaultMaxStale: Duration(days: 7),
  //     skipMemoryCache: true
  // ));
  var isDialogOpen = false;

  // global configration
  Dio get dio {
    // set base url

    Dio dio = Dio(BaseOptions(
        baseUrl: AcmoConfig.BASE_URL,
        receiveTimeout: const Duration(seconds: 300),
        sendTimeout: const Duration(seconds: 100),
        followRedirects: false,
        maxRedirects: 0,
        //  validateStatus: (status) { return status! < 500; },
        contentType: Headers.jsonContentType));
    dio.interceptors.add(
        InterceptorsWrapper(onRequest: (RequestOptions options, handler) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      if (!options.path.endsWith(AcmoEndpointNames.INITIALIZE) &&
          !options.path.contains("translations")) {
        options.headers["X-User-ID"] = prefs.getString(AcmoKeyNames.USER_ID)!;
      }
      options.headers["X-API-Key"] = prefs.getString(AcmoKeyNames.API_KEY);
      options.headers["X-API-Secret"] =
          prefs.getString(AcmoKeyNames.API_SECRET);
      options.headers["X-SDK-Platform"] = AcmoConfig.SDK_PLATFORM;
      options.headers["X-SDK-Version"] = AcmoConfig.SDK_VERSION;
      options.headers["X-Secure-Mode"] =
          Tyrads.instance.isSecure ? "BASIC" : "PLAIN";
      options.headers["X-Play-Integrity"] =
          prefs.getString(AcmoKeyNames.PLAY_INTEGRITY_TOKEN);
      debugPrint(
          "Pre request:${options.method},${options.baseUrl}${options.path}${options.queryParameters}");
      debugPrint("Pre request:${options.headers.toString()}");
      debugPrint("Pre request data:${options.data}");
      return handler.next(options); //continue
      //return options;
    }, onResponse: (Response response, handler) async {
      try {
        debugPrint(response.toString());
        final int statusCode = response.statusCode ?? 0;

        response.data;
        if (statusCode == 200 || statusCode == 201) {
          return handler.next(response);
        }

        throw HttpStatus.networkConnectTimeoutError;
      } catch (e) {
        rethrow;
      }
    }, onError: (DioException e, handler) {
      if (e.error.toString().toLowerCase().contains('socketexception')) {
        // if (!isDialogOpen) {
        //   isDialogOpen = true;
        //   Get.dialog(AcmoDialogNoInternet())
        //       .then((value) => isDialogOpen = false);
        // }
        if (!isDialogOpen) {
          isDialogOpen = true;
          // acmoSnackbar(
          //     "Connectivity problem, kindly connect to a stable internet connection. ");
          Future.delayed(const Duration(seconds: 5))
              .then((value) => isDialogOpen = false);
        }
      } else {
        return handler.next(e); //continue
      }
    }));

    return dio;
  }
}
