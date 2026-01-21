import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:url_launcher/url_launcher_string.dart';

class WebViewManager {
  static final WebViewManager _instance = WebViewManager._internal();
  static WebViewManager get instance => _instance;

  WebViewManager._internal();

  HeadlessInAppWebView? _headlessWebView;
  HeadlessInAppWebView? get headlessWebView => _headlessWebView;
  String? _preloadedUrl;

  void Function(String)? _onMessage;
  set onMessage(void Function(String)? callback) => _onMessage = callback;

  void Function(bool hasError)? _onErrorChanged;
  set onErrorChanged(void Function(bool)? callback) =>
      _onErrorChanged = callback;

  bool _hasError = false;
  bool get hasError => _hasError;

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

  void preload(Uri uri) {
    if (_preloadedUrl == uri.toString()) {
      return;
    }

    dispose();
    _preloadedUrl = uri.toString();
    _hasError = false;

    _headlessWebView = HeadlessInAppWebView(
      initialUrlRequest: URLRequest(url: WebUri(uri.toString())),
      initialSettings: settings,
      initialUserScripts: userScripts,
      onWebViewCreated: (controller) {
        debugPrint('WebViewManager: Headless WebView Created');
        controller.addJavaScriptHandler(
          handlerName: 'JSInterface',
          callback: (args) {
            debugPrint(
                'WebViewManager: JSInterface message received: ${args.isNotEmpty ? args[0] : "empty"}');
            if (args.isNotEmpty) {
              _onMessage?.call(args[0].toString());
            }
          },
        );
      },
      onLoadStart: (controller, url) {
        _hasError = false;
        _onErrorChanged?.call(false);
      },
      onReceivedError: (controller, request, error) {
        debugPrint('Preloaded WebView Error: ${error.toString()}');
        if (error.description.contains('code=102')) {
          _hasError = true;
          _onErrorChanged?.call(true);
        }
      },
      shouldOverrideUrlLoading: shouldOverrideUrlLoading,
      onPermissionRequest: (controller, request) async {
        return PermissionResponse(
          resources: request.resources,
          action: PermissionResponseAction.GRANT,
        );
      },
    );
    _headlessWebView!.run();
  }

  void dispose() {
    _headlessWebView?.dispose();
    _headlessWebView = null;
    _preloadedUrl = null;
    _hasError = false;
  }

  void clearPreload() {
    _headlessWebView = null;
    _preloadedUrl = null;
  }
}
