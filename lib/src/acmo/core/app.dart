import 'dart:io';

import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tyrads_sdk/src/acmo/core/constants/key_names.dart';
import 'package:tyrads_sdk/src/acmo/core/themes/styles.dart';
import 'package:tyrads_sdk/src/acmo/modules/legal/privacy_policy.dart';
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

  late final theme = AcmoStyleThemes.light.copyWith(
      colorScheme: Theme.of(context).colorScheme.copyWith(
            primary:
                Tyrads.instance.colorHeaderBg ?? Theme.of(context).primaryColor,
            secondary: Tyrads.instance.colorMain ??
                Theme.of(context).colorScheme.secondary,
          ),
      appBarTheme: Tyrads.instance.colorHeaderBg == null
          ? Theme.of(context).appBarTheme
          : Theme.of(context).appBarTheme.copyWith(
                backgroundColor: Tyrads.instance.colorHeaderBg,
                foregroundColor: Tyrads.instance.colorHeaderFg,
                surfaceTintColor: Tyrads.instance.colorHeaderFg,
              ));
  Future<SharedPreferences> prefsFuture = SharedPreferences.getInstance();

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb && Platform.isIOS) {
      return SafeArea(child: Theme(data: theme, child: const AcmoWebSdk()));
    } else {
      return FutureBuilder<SharedPreferences>(
          future: prefsFuture,
          builder: (context, snapshot) {
            if (!snapshot.hasData) return Container();
            var prefs = snapshot.data!;
            return SafeArea(
              top: false,
              child: MaterialApp(
                navigatorKey: Tyrads.instance.navKey,
                theme: theme,
                initialRoute: '/',
                onGenerateRoute: (settings) {
                  Widget page;
                  var privacyAccepted = prefs.getBool(
                          AcmoKeyNames.PRIVACY_ACCEPTED_FOR_USER_ID +
                              Tyrads.instance.publisherUserID) ??
                      false;
                  if (!privacyAccepted && !kIsWeb) {
                    page = const AcmoPrivacyPolicyPage();
                  } else {
                    if (Tyrads.instance.newUser) {
                      page = const AcmoUsersUpdatePage();
                    } else {
                      page = const AcmoOffersPage();
                    }
                  }
                  return MaterialPageRoute(builder: (c) => page);
                },
              ),
            );
          });
    }
  }
}
