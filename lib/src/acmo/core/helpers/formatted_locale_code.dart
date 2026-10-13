import 'package:flutter/widgets.dart';

String getFormattedLocaleCode() {
  final locale = WidgetsBinding.instance.platformDispatcher.locale;
  final languageCode = locale.languageCode;
  debugPrint('[Tyrads SDK] getFormattedLocaleCode: languageCode=$languageCode locale=$locale');

  if (languageCode != 'zh') {
    return languageCode;
  }
  final tag = locale.toLanguageTag();
  debugPrint('[Tyrads SDK] getFormattedLocaleCode: returning full tag=$tag');
  return tag;
}
