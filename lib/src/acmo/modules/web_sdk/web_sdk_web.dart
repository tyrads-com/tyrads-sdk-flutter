import 'dart:convert';
import 'dart:ui_web' as ui;
import 'dart:developer';
import 'dart:js_interop';
import 'package:flutter/material.dart';
import 'package:web/web.dart' as web;

abstract class WebSdkPlatform {
  void initialize({
    required String url,
    required Function(String) onMessageReceived,
    required VoidCallback onPageFinished,
    required bool Function(String url) onNavigationRequest,
  });

  Widget buildWebView();
}

WebSdkPlatform createWebSdkPlatform() => WebWebSdkPlatform();

class WebWebSdkPlatform extends WebSdkPlatform {
  late String _url;
  late Function(String) _onMessageReceived;
  late VoidCallback _onPageFinished;
  // ignore: unused_field
  late bool Function(String url) _onNavigationRequest;

  bool _listenerAttached = false;

  @override
  void initialize({
    required String url,
    required Function(String) onMessageReceived,
    required VoidCallback onPageFinished,
    required bool Function(String url) onNavigationRequest,
  }) {
    _url = url;
    _onMessageReceived = onMessageReceived;
    _onPageFinished = onPageFinished;
    _onNavigationRequest = onNavigationRequest;

    Future.delayed(const Duration(milliseconds: 500), () {
      _onPageFinished();
    });

    if (!_listenerAttached) {
      _listenerAttached = true;

      log("Attaching global window.onMessage listener.",
          name: "WebWebSdkPlatform");

      web.window.top?.onMessage.listen((web.MessageEvent event) {
        log("Listening to window messages: $event");
        try {
          // final originOk = event.origin == Uri.parse(_url).origin;
          final jsData = event.data;

          // if (!originOk) {
          //   log("Blocked message from unknown origin: ${event.origin}");
          //   return;
          // }

          if (jsData case final JSString str) {
            _onMessageReceived(str.toDart);
          } else {
            final dynamic obj = jsData as JSObject;

            final command = obj['command'.toJS] as JSString?;
            final action = obj['action'.toJS] as JSString?;
            final languageCode = obj['languageCode'.toJS] as JSString?;
            final data = obj['data'.toJS];

            final parsed = <String, dynamic>{
              if (command != null) 'command': command.toDart,
              if (action != null) 'action': action.toDart,
              if (languageCode != null) 'languageCode': languageCode.toDart,
              if (data != null) 'data': data.toString(),
            };

            _onMessageReceived(jsonEncode(parsed));
          }
        } catch (e) {
          log("Error decoding postMessage: $e");
        }
      });
    }
  }

  @override
  Widget buildWebView() {
    final viewId = 'tyrads-iframe-${DateTime.now().millisecondsSinceEpoch}';

    ui.platformViewRegistry.registerViewFactory(viewId, (int viewId) {
      final iframe = web.HTMLIFrameElement()
        ..src = _url
        ..style.border = 'none'
        ..style.width = '100%'
        ..style.height = '100%'
        ..sandbox.value = 'allow-scripts allow-same-origin allow-forms';

      iframe.onLoad.listen((web.Event event) {
        log('IFrame document loaded: $_url', name: "WebWebSdkPlatform");
        web.window.parent?.postMessage(
            {
              'command': 'webview_command',
              'action': 'closeWebview',
              'data': 'Hello from iframe!'
            }.jsify(),
            '*'.toJS);
      });

      return iframe;
    });

    return HtmlElementView(viewType: viewId);
  }
}
