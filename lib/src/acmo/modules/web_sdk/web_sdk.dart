// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:tyrads_sdk/src/acmo/core/components/loading.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/common.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/platform.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoWebSdk extends StatefulWidget {
  const AcmoWebSdk({super.key});

  @override
  State<AcmoWebSdk> createState() => _AcmoWebSdkState();
}

class _AcmoWebSdkState extends State<AcmoWebSdk> {
  late var url =
      'https://websdk.tyrads.com/?apiKey=${Tyrads.instance.apiKey}&apiSecret=${Tyrads.instance.apiSecret}&userID=${Tyrads.instance.publisherUserID}&newUser=${Tyrads.instance.newUser}&platform=${acmoGetPlatformName()}';

  InAppWebViewController? webViewController;
  var isLoading = true;

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
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: InAppWebView(
                      initialUrlRequest: URLRequest(url: WebUri(url)),
                      onWebViewCreated: (controller) {
                        webViewController = controller;
                      },
                      onLoadStop: (controller, url) {
                        setState(() {
                          isLoading = false;
                        });
                      },
                      shouldOverrideUrlLoading:
                          (controller, shouldOverrideUrlLoadingRequest) async {
                        var url =
                            shouldOverrideUrlLoadingRequest.request.url?.rawValue ??
                                '';
                        if (url.contains("acmo-cmd")) {
                          if (url.contains("close-app")) {
                            Tyrads.instance.back();
                            return NavigationActionPolicy.CANCEL;
                          }
                        } else {
                          if ((url.toString()).contains('websdk.tyrads.com')) {
                            return NavigationActionPolicy.ALLOW;
                          } else {
                            acmoLaunchURLForce(url);
                            return NavigationActionPolicy.CANCEL;
                          }
                        }
                        return NavigationActionPolicy.ALLOW;
                      }),
                ),
              ],
            ),
            isLoading
                ? const AcmoComponentLoading()
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
