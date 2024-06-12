import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tyrads_sdk/src/app_config.dart';
  var appbarNBg = Colors.red;

class AcmoStyleThemes {
  static final light = ThemeData.light().copyWith(
      scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      primaryColor: AcmoConfig.PRIMARY_COLOR,
      primaryColorLight: AcmoConfig.PRIMARY_COLOR_LIGHT,
      primaryColorDark: AcmoConfig.PRIMARY_COLOR_DARK,
      inputDecorationTheme: const InputDecorationTheme(
          focusColor: AcmoConfig.SECONDARY_COLOR,
          //contentPadding: EdgeInsets.zero,
          isDense: true,
          isCollapsed: true,
          border: OutlineInputBorder()),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
        foregroundColor: Colors.black87,
        minimumSize: const Size(88, 36),
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
      )),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black87,
        backgroundColor: AcmoConfig.SECONDARY_COLOR,
        minimumSize: const Size(88, 36),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
      )),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black38,
                  minimumSize: const Size(88, 36),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  ),
                  backgroundColor: Colors.white70)
              .copyWith(
        textStyle: MaterialStateProperty.resolveWith<TextStyle>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return const TextStyle(
              color: AcmoConfig.SECONDARY_COLOR,
            );
          }
          return const TextStyle(
            color: Colors.black38,
          ); //
        }),
        side: MaterialStateProperty.resolveWith<BorderSide>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return const BorderSide(
                color: AcmoConfig.SECONDARY_COLOR,
                width: 2,
              );
            }
            return const BorderSide(
              color: Colors.black38,
              width: 2,
            ); // Defer to the widget's default.
          },
        ),
      )),
      cardTheme: ThemeData.light().cardTheme.copyWith(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
              surfaceTintColor: Colors.white
              ),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: AcmoConfig.PRIMARY_COLOR,
        secondary: AcmoConfig.SECONDARY_COLOR,
        background: AcmoConfig.SECONDARY_COLOR,
        onBackground: Colors.black,
      ),
      appBarTheme:  const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        color: AcmoConfig.APPBAR_BG,
        foregroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle(
          //<-- SEE HERE
          // Status bar color
          statusBarColor: AcmoConfig.APPBAR_BG,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark,
        ),
      ));
}
