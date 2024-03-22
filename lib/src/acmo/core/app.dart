import 'dart:io';

import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/core/themes/styles.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/pages/offers.dart';
import 'package:tyrads_sdk/src/acmo/modules/users/pages/age_gender.dart';
import 'package:tyrads_sdk/src/acmo/modules/web_sdk/web_sdk.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoApp extends StatefulWidget {
  const AcmoApp({super.key});

  @override
  State<AcmoApp> createState() => _AcmoAppState();
}

class _AcmoAppState extends State<AcmoApp> {
  @override
  void initState() {
    super.initState();
    BackButtonInterceptor.add(myInterceptor);
  }

  @override
  void dispose() {
    BackButtonInterceptor.remove(myInterceptor);
    super.dispose();
  }

  bool myInterceptor(bool stopDefaultButtonEvent, RouteInfo info) {
    return Tyrads.instance.back();
  }

  @override
  Widget build(BuildContext context) {
    if (kIsWeb || Platform.isIOS) {
      return AcmoWebSdk();
    } else {
      return MaterialApp(
        navigatorKey: Tyrads.instance.navKey,
        theme: AcmoStyleThemes.light,
        initialRoute: '/',
        onGenerateRoute: (settings) {
          Widget page;
          if (Tyrads.instance.newUser) {
            page = const AcmoUsersUpdatePage();
          } else {
            page = const AcmoOffersPage();
          }

          return MaterialPageRoute(builder: (c) => page);
        },
      );
    }
  }
}
