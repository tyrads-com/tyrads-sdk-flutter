// ignore_for_file: constant_identifier_names

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:tyrads_sdk/src/acmo/core/constants/endpoint_name.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/toasts.dart';
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
      if (!options.path.endsWith(AcmoEndpointNames.INITIALIZE)) {
        options.headers["X-User-ID"] = Tyrads.instance.publisherUserID;
      }
      options.headers["X-API-Key"] = Tyrads.instance.apiKey;
      options.headers["X-API-Secret"] = Tyrads.instance.apiSecret;
      debugPrint(
          "Pre request:${options.method},${options.baseUrl}${options.path}${options.queryParameters}");
      debugPrint("Pre request:${options.headers.toString()}");
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
    }, onError: (DioError e, handler) {
      if (e.error.toString().toLowerCase().contains('socketexception')) {
        // if (!isDialogOpen) {
        //   isDialogOpen = true;
        //   Get.dialog(AcmoDialogNoInternet())
        //       .then((value) => isDialogOpen = false);
        // }
        if (!isDialogOpen) {
          isDialogOpen = true;
          acmoSnackbar(
              "Connectivity problem, kindly connect to a stable internet connection.");
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
