// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/common.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoWebSdk extends StatelessWidget {
  AcmoWebSdk({super.key});
  late var url =
      'https://tyradssdk.acmosoft.com/?apiKey=${Tyrads.instance.apiKey}&apiSecret=${Tyrads.instance.apiSecret}&userID=${Tyrads.instance.publisherUserID}&newUser=${Tyrads.instance.newUser}';

  InAppWebViewController? webViewController;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (await webViewController!.canGoBack()) {
          webViewController!.goBack();
          return false;
        }
        return true;
      },
      child: SafeArea(
        bottom: false,
        child: InAppWebView(
            initialUrlRequest: URLRequest(url: WebUri(url)),
            onWebViewCreated: (controller) {
              webViewController = controller;
            },
            shouldOverrideUrlLoading:
                (controller, shouldOverrideUrlLoadingRequest) async {
              var url =
                  shouldOverrideUrlLoadingRequest.request.url?.rawValue ?? '';
              if (url.contains("acmo-cmd")) {
                if (url.contains("close-app")) {
                  Tyrads.instance.back();
                  return NavigationActionPolicy.CANCEL;
                }
              } else {
                if ((url.toString()).contains('acmosoft.com')) {
                  return NavigationActionPolicy.ALLOW;
                } else {
                  acmoLaunchURLForce(url);
                  return NavigationActionPolicy.CANCEL;
                }
              }
              return NavigationActionPolicy.ALLOW;
            }),
      ),
    );
  }
}
