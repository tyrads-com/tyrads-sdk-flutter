// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/core/components/loading.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/common.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AcmoWebSdk extends StatefulWidget {
  const AcmoWebSdk({super.key});

  @override
  State<AcmoWebSdk> createState() => _AcmoWebSdkState();
}

class _AcmoWebSdkState extends State<AcmoWebSdk> {
 late WebViewController webViewController;
  var isLoading = true;
@override
void initState() {
  super.initState();
  webViewController = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(
      NavigationDelegate(
        onPageFinished: (String url) {
          if (mounted) {
            setState(() {
              isLoading = false;
            });
          }
        },
        onNavigationRequest: (NavigationRequest request) {
          var url = request.url;
          if (url.contains("acmo-cmd")) {
            if (url.contains("close-app")) {
              Tyrads.instance.back();
              return NavigationDecision.prevent;
            }
          } else {
            if (url.contains('websdk.tyrads.com')) {
              return NavigationDecision.navigate;
            } else {
              acmoLaunchURLForce(url);
              return NavigationDecision.prevent;
            }
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse(Tyrads.instance.webUrl)); 
}

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (await webViewController.canGoBack()) {
          webViewController.goBack();
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
                  child: WebViewWidget(
                    controller: webViewController
                  ),
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
