// ignore_for_file: must_be_immutable

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/core/components/loading.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/common.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AcmoWebSdk extends StatefulWidget {
  const AcmoWebSdk({super.key});

  @override
  State<AcmoWebSdk> createState() => _AcmoWebSdkState();
}

class _AcmoWebSdkState extends State<AcmoWebSdk> {
  late WebViewController webViewController;
  var isLoading = true;

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
    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..addJavaScriptChannel('JSInterface', onMessageReceived: (message) {
        _handleJSMessage(message.message);
      })
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (String url) async {
            if (mounted) {
              setState(() {
                isLoading = false;
              });
            }
            await webViewController.runJavaScript('''
              window.addEventListener('message', function(event) {
                try {
                  const message = typeof event.data === 'string' 
                    ? JSON.parse(event.data) 
                    : event.data;
                  if (message && message.command === 'webview_command') {
                    JSInterface.postMessage(JSON.stringify({
                      command: message.command,
                      action: message.action,
                      languageCode: message.languageCode,
                      data: message.data
                    }));
                  }
                } catch (error) {
                  console.error('JS Bridge error:', error);
                }
              });
            ''');
          },
          onNavigationRequest: (NavigationRequest request) {
            var url = request.url;
            if (url.contains("acmo-cmd")) {
              // if (url.contains("close-app")) {
              //   Tyrads.instance.back();
              //   return NavigationDecision.prevent;
              // }
            } else {
              if (url.contains('websdk.tyrads.com')) {
                return NavigationDecision.navigate;
              } else {
                acmoLaunchURLForce(url);
                return NavigationDecision.prevent;
              }
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(Tyrads.instance.webUrl));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (await webViewController.canGoBack()) {
          webViewController.goBack();
          return false;
        }
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: WebViewWidget(controller: webViewController),
                  ),
                ],
              ),
              isLoading ? const AcmoComponentLoading() : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
