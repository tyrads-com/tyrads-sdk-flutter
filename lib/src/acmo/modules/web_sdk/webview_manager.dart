import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/platform.dart';
import 'package:url_launcher/url_launcher_string.dart';

class WebViewManager {
  static final WebViewManager _instance = WebViewManager._internal();
  static WebViewManager get instance => _instance;

  WebViewManager._internal();

  InAppWebViewSettings get settings => InAppWebViewSettings(
        javaScriptEnabled: true,
        javaScriptCanOpenWindowsAutomatically: true,
        allowFileAccess: true,
        allowContentAccess: true,
        mediaPlaybackRequiresUserGesture: false,
        useShouldOverrideUrlLoading: true,
        allowsInlineMediaPlayback: true,
        iframeAllowFullscreen: true,
        preferredContentMode: UserPreferredContentMode.MOBILE,
      );

  UnmodifiableListView<UserScript> get userScripts => UnmodifiableListView([
        UserScript(
          source: '''
                    window.addEventListener('message', function(event) {
                      try {
                        const message = typeof event.data === 'string'
                          ? JSON.parse(event.data)
                          : event.data;
                        if (message) {
                          if (window.flutter_inappwebview) {
                            console.error('JS Bridge Message:', message);
                            window.flutter_inappwebview.callHandler('JSInterface', JSON.stringify(message));
                          } else if (window.parent !== window) {
                            // Send to Flutter Web
                            console.error('JS Bridge Message Web:', message);
                            window.parent.postMessage({ type: 'JSInterface', payload: message }, '*');
                          }
                        }
                      } catch (error) {
                        console.error('JS Bridge error:', error);
                      }
                    });
                  ''',
          injectionTime: UserScriptInjectionTime.AT_DOCUMENT_START,
        ),
      ]);

  bool _isSdkHost(String host) {
    return host.endsWith('.tyrads.com') ||
        host.endsWith('.tyr-sdk-webapp-v4.pages.dev') ||
        host == 'tyrads.com';
  }

  Future<NavigationActionPolicy?> shouldOverrideUrlLoading(
      InAppWebViewController controller,
      NavigationAction navigationAction) async {
    final Uri uri = navigationAction.request.url!;
    final String host = uri.host;

    if (AcmoPlatform.isIOS) {
      if (uri.scheme == "https" || uri.scheme == "http"){
        if (!host.contains("apps.apple.com") || !host.contains("itunes.apple.com")) {
          return NavigationActionPolicy.ALLOW;
        }
      }
      await launchUrlString(
        uri.toString(),
        mode: LaunchMode.externalApplication,
      );
      return NavigationActionPolicy.CANCEL;
    }

    if (_isSdkHost(host)) {
      debugPrint('[WebView] Allowing internal SDK navigation: $uri');
      return NavigationActionPolicy.ALLOW;
    }
    debugPrint('[WebView] Opening external URL: $uri');
    await launchUrlString(
      uri.toString(),
      mode: LaunchMode.externalApplication,
    );
    return NavigationActionPolicy.CANCEL;
  }
}
