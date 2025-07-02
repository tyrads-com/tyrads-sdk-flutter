// ignore_for_file: must_be_immutable

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/core/components/loading.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/common.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

// Conditional imports
import 'web_sdk_web.dart' if (dart.library.io) 'web_sdk_mobile.dart';

class AcmoWebSdk extends StatefulWidget {
  const AcmoWebSdk({super.key});

  @override
  State<AcmoWebSdk> createState() => _AcmoWebSdkState();
}

class _AcmoWebSdkState extends State<AcmoWebSdk> {
  var isLoading = true;
  late WebSdkPlatform _platform;

  void _handleJSMessage(String message) {
    try {
      final Map<String, dynamic> jsonMessage = jsonDecode(message);
      final action = jsonMessage['action'];

      switch (action) {
        case 'closeWebview':
          Tyrads.instance.back();
          break;
        case 'changeLanguage':
          final langCode = jsonMessage['languageCode'];
          if (langCode != null && langCode is String) {
            Tyrads.instance.changeLanguage(langCode);
          }
          break;
        case 'campaignDetailsCallback':
          final data = jsonMessage['data'];
          if (data != null) {
            Tyrads.instance.triggerCallback(
              TyradsCallbackType.campaignDetail,
              data,
            );
          }
          break;
        case 'campaignActivatedCallback':
          final data = jsonMessage['data'];
          if (data != null) {
            Tyrads.instance.triggerCallback(
              TyradsCallbackType.campaignActivated,
              data,
            );
          }
          break;
        default:
          debugPrint('Unknown action: $action');
      }
    } catch (e) {
      debugPrint('Failed to parse JS message: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    _platform = createWebSdkPlatform();
    _platform.initialize(
      url: Tyrads.instance.webUrl,
      onMessageReceived: _handleJSMessage,
      onPageFinished: () {
        if (mounted) {
          setState(() {
            isLoading = false;
          });
        }
      },
      onNavigationRequest: (String url) {
        if (url.contains("acmo-cmd")) {
          // Handle custom commands if needed
          return true;
        } else {
          if (url.contains('websdk.tyrads.com')) {
            return true;
          } else {
            acmoLaunchURLForce(url);
            return false;
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: _platform.buildWebView(),
                ),
              ],
            ),
            if (isLoading) const AcmoComponentLoading(),
          ],
        ),
      ),
    );
  }
}
