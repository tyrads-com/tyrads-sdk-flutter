import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/core/components/loading.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class AcmoWebSdk extends StatefulWidget {
  const AcmoWebSdk({super.key});

  @override
  State<AcmoWebSdk> createState() => _AcmoWebSdkState();
}

class _AcmoWebSdkState extends State<AcmoWebSdk> {
  late InAppWebViewController _webViewController;
  var isLoading = true;

  final GlobalKey webViewKey = GlobalKey();

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
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, dynamic result) async {
        if (didPop) {
          log('Pop already occurred (didPop: true). Result: $result');
          return;
        }
        log('Pop invoked (didPop: false). Checking WebView history.');

        if (await _webViewController.canGoBack()) {
          _webViewController.goBack();
          log('WebView navigated back.');
        } else {
          log('WebView cannot go back. Popping Flutter route.');
          if (mounted) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigator.of(context).pop('WebViewClosed');
            });
          }
        }
      },
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: InAppWebView(
                      key: webViewKey,
                      initialUrlRequest:
                          URLRequest(url: WebUri(Tyrads.instance.webUrl)),
                      initialSettings: InAppWebViewSettings(
                        javaScriptEnabled: true,
                        javaScriptCanOpenWindowsAutomatically: true,
                        allowFileAccess: true,
                        allowContentAccess: true,
                        mediaPlaybackRequiresUserGesture: false,
                      ),
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
                      onLoadStart: (controller, url) {},
                      onLoadStop: (controller, url) async {
                        if (mounted) {
                          setState(() {
                            isLoading = false;
                          });
                        }
                        await controller.evaluateJavascript(source: '''
                          window.addEventListener('message', function(event) {
                            try {
                              const message = typeof event.data === 'string'
                                ? JSON.parse(event.data)
                                : event.data;
                              if (message && message.command === 'webview_command') {
                                window.flutter_inappwebview.callHandler('JSInterface', JSON.stringify({
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
                      onProgressChanged: (controller, progress) {},
                      onReceivedError: (controller, request, error) {
                        debugPrint('WebView Error: ${error.toString()}');
                      },
                      onPermissionRequest: (controller, request) async {
                        return PermissionResponse(
                            resources: request.resources,
                            action: PermissionResponseAction.GRANT);
                      },
                    ),
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
