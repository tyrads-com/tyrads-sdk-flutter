import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/common.dart';
import 'package:webview_flutter/webview_flutter.dart';

abstract class WebSdkPlatform {
  void initialize({
    required String url,
    required Function(String) onMessageReceived,
    required VoidCallback onPageFinished,
    required bool Function(String) onNavigationRequest,
  });

  Widget buildWebView();
}

WebSdkPlatform createWebSdkPlatform() => MobileWebSdkPlatform();

class MobileWebSdkPlatform extends WebSdkPlatform {
  late WebViewController _webViewController;

  @override
  void initialize({
    required String url,
    required Function(String) onMessageReceived,
    required VoidCallback onPageFinished,
    required bool Function(String) onNavigationRequest,
  }) {
    _webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..addJavaScriptChannel('JSInterface', onMessageReceived: (message) {
        onMessageReceived(message.message);
      })
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (String url) async {
            onPageFinished();
            await _webViewController.runJavaScript('''
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
              // Keep existing acmo-cmd handling logic
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
      ..loadRequest(Uri.parse(url));
  }

  @override
  Widget buildWebView() {
    return WebViewWidget(controller: _webViewController);
  }
}