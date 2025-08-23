import 'dart:collection';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AcmoWebSdk extends StatefulWidget {
  const AcmoWebSdk({super.key});

  @override
  State<AcmoWebSdk> createState() => _AcmoWebSdkState();
}

class _AcmoWebSdkState extends State<AcmoWebSdk> {
  late InAppWebViewController _webViewController;
  bool _hasError = false;
  bool _isClosing = false;
  // double _progress = 0;
  final Map<String, int> _lastExecutionTime = {};
  final int _debounceDurationMs = 500;

  final GlobalKey webViewKey = GlobalKey();

  void _handleCloseRequestFromiFrame() {
    if (_isClosing) {
      debugPrint('Close already in progress; ignoring duplicate request.');
      return;
    }
    _isClosing = true;
    try {
      Tyrads.instance.back();
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
      canPop: true,
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
                        useShouldOverrideUrlLoading: true,
                        allowsInlineMediaPlayback: true,
                      ),
                      initialUserScripts: UnmodifiableListView([
                        UserScript(
                          source: '''
                            window.addEventListener('message', function(event) {
                              try {
                                const message = typeof event.data === 'string'
                                  ? JSON.parse(event.data)
                                  : event.data;
                                if (message) {
                                  window.flutter_inappwebview.callHandler('JSInterface', JSON.stringify(message));
                                }
                              } catch (error) {
                                console.error('JS Bridge error:', error);
                              }
                            });
                          ''',
                          injectionTime:
                              UserScriptInjectionTime.AT_DOCUMENT_START,
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
                      shouldOverrideUrlLoading:
                          (controller, navigationAction) async {
                        Uri uri = navigationAction.request.url!;

                        final urlString = uri.toString();
                        if (uri.host == 'sdk.tyrads.com') {
                          return NavigationActionPolicy.ALLOW;
                        }

                        if (!urlString.contains('sdk.tyrads.com')) {
                          await launchUrlString(urlString);

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
                  ),
                ],
              ),
              // _progress < 1.0
              //     ? LinearProgressIndicator(value: _progress, minHeight: 0,)
              //     : Container(),
              // _progress < 1.0 ? const AcmoComponentLoading() : const SizedBox(),
              if (_hasError) _buildErrorView(),
            ],
          ),
        ),
      ),
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

  @override
  void dispose() {
    _webViewController.dispose();
    super.dispose();
  }
}
