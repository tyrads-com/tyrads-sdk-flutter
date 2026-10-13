// ignore_for_file: unused_element, unused_field

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:google_fonts/google_fonts.dart';

import 'webview_manager.dart';

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
  void didUpdateWidget(WebSdk oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialUrl != widget.initialUrl) {
      _webViewController.loadUrl(
        urlRequest: URLRequest(url: WebUri(widget.initialUrl)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InAppWebView(
          key: webViewKey,
          initialUrlRequest: URLRequest(url: WebUri(widget.initialUrl)),
          initialSettings: WebViewManager.instance.settings,
          initialUserScripts: WebViewManager.instance.userScripts,
          onConsoleMessage: (controller, consoleMessage) {
            debugPrint(consoleMessage.message);
          },
          shouldOverrideUrlLoading: (controller, navigationAction) async {
            return WebViewManager.instance
                .shouldOverrideUrlLoading(controller, navigationAction);
          },
          onWebViewCreated: (controller) {
            debugPrint('WebSdk: onWebViewCreated called.');
            _webViewController = controller;

            _webViewController.addJavaScriptHandler(
              handlerName: 'JSInterface',
              callback: (args) {
                debugPrint(
                    'WebSdk: JSInterface message received: ${args.isNotEmpty ? args[0] : "empty"}');
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
          onReceivedError: (controller, request, error) {
            debugPrint('WebView Error: ${error.toString()}');
            if (error.description.contains('code=102') ||
                error.description.contains('-1001') ||
                error.description.contains('-1009') ||
                error.type.toString().contains('TIMEOUT') ||
                error.type.toString().contains('timeOut') ||
                error.type.toString().contains('timeout') ||
                error.type.toString().contains('CONNECT') ||
                error.type.toString().contains('connect') ||
                error.type.toString().contains('UNKNOWN') ||
                error.type.toString().contains('unknown')) {
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
        // if (_hasError) _buildErrorView(),
      ],
    );
  }

  Widget _buildErrorView() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Failed to load content. Please try again.',
            style: GoogleFonts.poppins(
              color: Colors.red,
              fontWeight: FontWeight.w600,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _hasError = false;
              });
              _webViewController.reload();
            },
            child: Text(
              'Retry',
              style: GoogleFonts.poppins(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
