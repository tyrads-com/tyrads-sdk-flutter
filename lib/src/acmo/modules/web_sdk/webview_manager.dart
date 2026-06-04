import 'dart:collection';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
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

  Future<NavigationActionPolicy?> shouldOverrideUrlLoading(
      InAppWebViewController controller,
      NavigationAction navigationAction) async {
    Uri uri = navigationAction.request.url!;

    final urlString = uri.toString();
    if (uri.host == 'sdk.tyrads.com') {
      return NavigationActionPolicy.ALLOW;
    }

    if (!urlString.contains('sdk.tyrads.com')) {
      await launchUrlString(
        urlString,
        mode: LaunchMode.externalApplication,
      );
      return NavigationActionPolicy.CANCEL;
    }
    return NavigationActionPolicy.ALLOW;
  }
}
