import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';
import 'webview_mobile.dart' if (dart.library.html) 'webview_web.dart';

class AcmoWebSdk extends StatefulWidget {
  const AcmoWebSdk({super.key});  

  @override
  State<AcmoWebSdk> createState() => _AcmoWebSdkState();
}

class _AcmoWebSdkState extends State<AcmoWebSdk> {
  bool _isClosing = false;
  final Map<String, int> _lastExecutionTime = {};
  final int _debounceDurationMs = 800;

  final GlobalKey webViewKey = GlobalKey();

  void _handleCloseRequestFromiFrame() {
    if (_isClosing) {
      debugPrint('Close already in progress; ignoring duplicate request.');
      return;
    }
    _isClosing = true;
    try {
      if (!kIsWeb) {
        Tyrads.instance.back();
      } else {
        if (mounted && Navigator.canPop(context)) {
          Navigator.of(context).pop('WebViewClosed');
        }
      }
    } catch (_) {
      if (mounted) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted && Navigator.canPop(context)) {
            Navigator.of(context).pop('WebViewClosed');
          }
        });
      }
    } finally {
      Future.delayed(const Duration(milliseconds: 300), () {
        _isClosing = false;
      });
    }
  }

  void _handleJSMessage(String message) {
    try {
      final Map<String, dynamic> jsonMessage = jsonDecode(message);
      final action = jsonMessage['action'];
      log("Json Message: $jsonMessage");

      final now = DateTime.now().millisecondsSinceEpoch;

      if (_lastExecutionTime.containsKey(action) &&
          (now - _lastExecutionTime[action]!) < _debounceDurationMs) {
        debugPrint('Debouncing duplicate message for action: $action');
        return;
      }

      _lastExecutionTime[action] = now;

      switch (action) {
        case 'closeWebView':
          _handleCloseRequestFromiFrame();
          break;
        case 'changeLanguage':
          final langCode = jsonMessage['value'];
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

  String initialUrl = "";

  @override
  void initState() {
    super.initState();
    final skipUserInfo = Tyrads.instance.getSkipUserInfo();
    if (skipUserInfo) {
      initialUrl = Tyrads.instance.webURI.replace(
        queryParameters: {
          ...Tyrads.instance.webURI.queryParameters,
          'skipUserInfo': 'true',
        },
      ).toString();
    } else {
      initialUrl = Tyrads.instance.webURI.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (bool didPop, dynamic result) async {
        if (didPop) {
          log('Pop already occurred (didPop: true). Result: $result');
          return;
        }
        log('Pop invoked (didPop: false). Checking WebView history.');
      },
      child: Scaffold(
        body: SafeArea(
          child: WebSdk(
            initialUrl: initialUrl,
            onMessage: _handleJSMessage,
          ),
        ),
      ),
    );
  }
}
