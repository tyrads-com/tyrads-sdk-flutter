// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class AcmoConfig {
  static const API_VERSION = "3.0";
  static const BUILD_VERSION = "0";
  static const AV = "4";
  static const SDK_VERSION = "3.2.0";
  static const SDK_PLATFORM = "Flutter";
  static const BASE_URL = "https://api.tyrads.com/v$API_VERSION/";
  static const PRIMARY_COLOR =
      Color.fromARGB(255, 0, 36, 51); // Color(0xFF149CD4);
  static const PRIMARY_COLOR_LIGHT =
      Color.fromARGB(255, 153, 145, 145); // Color(0xFFDCF0F9);
  static const PRIMARY_COLOR_DARK =
      Color.fromARGB(255, 0, 0, 0); //  Color(0xCC149CD4);

  // static const SECONDARY_COLOR = Color.fromARGB(255, 44, 179, 136);
  static const SECONDARY_COLOR = Color(0xFF02B5BE);
  static const SECONDARY_COLOR_LIGHT = Color.fromARGB(255, 203, 235, 207);
  static const SIDEBAR_BACKGROUND_COLOR_LIGHT = Colors.white54;
  static const SIDEBAR_BACKGROUND_COLOR_DARK = Color.fromRGBO(17, 45, 30, 1);
  static const APPBAR_BG =
      Color.fromRGBO(0, 33, 48, 1); //;  Color(0;xCC149CD4);
  static const THEME_MODE = ThemeMode.light;
  static const PRIVACY_POLICY = "https://tyrads.com/tyrsdk-privacy-policy/";
  static const TERMS_OF_SERVICE = "https://tyrads.com/tyrsdk-terms-of-service/";
}
