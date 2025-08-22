import 'dart:convert';
import 'dart:developer';
import 'package:tyrads_sdk/src/acmo/core/network/network_common.dart';
import 'package:tyrads_sdk/src/app_config.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class LocalizationService {
  static final LocalizationService _instance = LocalizationService._();
  factory LocalizationService() => _instance;
  LocalizationService._();

  final _dio = NetworkCommon().dio;

  Map<String, dynamic> _translations = {};
  final _prefs = Tyrads.instance.prefs;

  Future<void> init(String locale) async {
    final hasUpdate = await _checkForUpdate(locale);

    if (!hasUpdate) {
      final cachedData = _prefs.getString('translations_$locale');
      if (cachedData != null) {
        _translations = jsonDecode(cachedData);
        return;
      }
    }

    await _fetchTranslations(locale);
  }

  Future<void> _fetchTranslations(String locale, [bool force = false]) async {
    try {
      final response = await _dio.get(
        "${AcmoConfig.BASE_URL}translations/$locale",
        queryParameters: {
          "force": force,
          "format": "nested",
        },
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = response.data;
        _translations = jsonResponse;

        await _prefs.setString(
            'translations_$locale', jsonEncode(response.data));
      } else {
        log('Failed to load translations: ${response.statusCode}');
      }
    } catch (e) {
      log('Network error fetching translations: $e');
    }
  }

  Future<bool> _checkForUpdate(String locale, [bool force = false]) async {
    try {
      final response = await _dio.get(
        "${AcmoConfig.BASE_URL}translations/version",
        queryParameters: {
          "force": force,
        },
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = response.data;

        final List<dynamic> data = jsonResponse['data'];
        final String? currentLocaleSha256 = data.firstWhere(
          (element) => element['code'] == locale,
          orElse: () => null,
        )['sha256'];
        final String? cachedVersion = _prefs.getString('cached_version_$locale');
        if (currentLocaleSha256 != cachedVersion) {
          await _prefs.remove('cached_version_$locale');
          await _prefs.setString('cached_version_$locale', currentLocaleSha256!);
          return true;
        }
      }
    } catch (e) {
      log('Error checking for update: $e');
    }
    return false;
  }

  String translate(
    String key, {
    Map<String, dynamic>? args,
  }) {
    List<String> keys = key.split('.');
    dynamic currentMap = _translations;

    for (int i = 0; i < keys.length; i++) {
      final k = keys[i];
      if (currentMap is Map && currentMap.containsKey(k)) {
        currentMap = currentMap[k];
      } else {
        return key;
      }
    }

    if (currentMap is String) {
      if (args != null) {
        for (final entry in args.entries) {
          currentMap = currentMap.replaceAll(
            RegExp('{${entry.key}}', caseSensitive: false),
            entry.value.toString(),
          );
        }
      }

      return currentMap;
    } else {
      return key;
    }
  }

  Future<void> changeLanguage(String locale, [bool force = false]) async {
    final hasUpdate = await _checkForUpdate(locale);

    if (!hasUpdate) {
      final cachedData = _prefs.getString('translations_$locale');
      if (cachedData != null) {
        _translations = jsonDecode(cachedData);
        return;
      }
    }

    await _fetchTranslations(locale, force);
  }
}
