import 'dart:js_interop';
import 'dart:ui_web' as ui_web;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web/web.dart' as web;

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
  late final JSFunction _messageListener;
  final GlobalKey _iframeKey = GlobalKey();
  bool _hasError = false;
  late final String _iframeViewType;

  @override
  void initState() {
    super.initState();
    _iframeViewType = 'acmoIframeElement-${widget.initialUrl}';
    _setupIframe();

    void messageHandler(web.Event event) {
      final messageEvent = event as web.MessageEvent;
      try {
        final messageData = messageEvent.data as String;
        debugPrint('Received message data: $messageData');
        widget.onMessage(messageData);
      } catch (e) {
        debugPrint('Error processing message: $e');
      }
    }

    _messageListener = messageHandler.toJS;

    web.window.addEventListener(
      "message",
      _messageListener,
    );
  }

  void _setupIframe() {
    final iframe = web.HTMLIFrameElement()
      ..src = widget.initialUrl
      ..style.border = 'none'
      ..style.width = '100%'
      ..style.height = '100%';

    iframe.addEventListener(
      'error',
      (web.Event event) {
        debugPrint('Iframe failed to load: ${widget.initialUrl}');
        if (mounted) {
          setState(() {
            _hasError = true;
          });
        }
      }.toJS,
    );

    ui_web.platformViewRegistry.registerViewFactory(
      _iframeViewType,
      (int viewId) => iframe,
    );
  }

  void _retryLoad() {
    setState(() {
      _hasError = false;
    });

    _setupIframe();
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
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _retryLoad,
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_hasError) {
      return _buildErrorView();
    }
    return HtmlElementView(key: _iframeKey, viewType: _iframeViewType);
  }

  @override
  void dispose() {
    web.window.removeEventListener("message", _messageListener);
    super.dispose();
  }
}
