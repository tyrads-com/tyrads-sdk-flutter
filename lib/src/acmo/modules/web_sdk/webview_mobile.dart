import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:url_launcher/url_launcher_string.dart';

class WebSdk extends StatefulWidget {
  final String initialUrl;
  final void Function(String) onMessage;

  const WebSdk({
    super.key,
    required this.initialUrl,
    required this.onMessage,
  });

  @override
  State<WebSdk> createState() => _WebSdkState();
}

class _WebSdkState extends State<WebSdk> {
  late InAppWebViewController _webViewController;
  bool _hasError = false;
  final GlobalKey webViewKey = GlobalKey();

  void _handleJSMessage(String message) {
    widget.onMessage(message);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InAppWebView(
          key: webViewKey,
          initialUrlRequest: URLRequest(url: WebUri(widget.initialUrl)),
          initialSettings: InAppWebViewSettings(
              javaScriptEnabled: true,
              javaScriptCanOpenWindowsAutomatically: true,
              allowFileAccess: true,
              allowContentAccess: true,
              mediaPlaybackRequiresUserGesture: false,
              useShouldOverrideUrlLoading: true,
              allowsInlineMediaPlayback: true,
              iframeAllowFullscreen: true),
          initialUserScripts: UnmodifiableListView([
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
          ]),
          // onNavigationResponse:
          //     (controller, navigationResponse) async {
          //   log("Navigation ${navigationResponse.response?.url.toString()}");

          //   return NavigationResponseAction.ALLOW;
          // },
          onConsoleMessage: (controller, consoleMessage) {
            debugPrint(consoleMessage.message);
          },
          shouldOverrideUrlLoading: (controller, navigationAction) async {
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
          },
          onWebViewCreated: (controller) {
            _webViewController = controller;
            _webViewController.addJavaScriptHandler(
              handlerName: 'JSInterface',
              callback: (args) {
                if (args.isNotEmpty) {
                  _handleJSMessage(args[0].toString());
                }
              },
            );
          },
          onLoadStart: (controller, url) async {
            if (mounted) {
              setState(() {
                _hasError = false;
              });
            }
          },
          onLoadStop: (controller, url) {},
          onProgressChanged: (controller, progress) {
            // setState(() {
            //   _progress = progress / 100;
            // });
          },
          onReceivedError: (controller, request, error) {
            debugPrint('WebView Error: ${error.toString()}');
            if (error.description.contains('code=102')) {
              setState(() {
                _hasError = true;
              });
            }
          },
          onPermissionRequest: (controller, request) async {
            return PermissionResponse(
              resources: request.resources,
              action: PermissionResponseAction.GRANT,
            );
          },
        ),
        if (_hasError) _buildErrorView(),
      ],
    );
  }

  Widget _buildErrorView() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Failed to load content'),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _hasError = false;
              });
              _webViewController.reload();
            },
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
