import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tyrads_sdk/src/acmo/core/constants/key_names.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/controller.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: must_be_immutable
class ImpressionTracker extends StatefulWidget {
   const ImpressionTracker({
    super.key,
    required AcmoOffersDetailsController controller,
  }) : _controller = controller;

  final AcmoOffersDetailsController _controller;

  @override
  State<ImpressionTracker> createState() => _ImpressionTrackerState();
}

class _ImpressionTrackerState extends State<ImpressionTracker> {
  var tracked = false;

 late WebViewController webViewController;
  @override
  void initState() {
  super.initState();
  
   Uri? uri = Uri.tryParse(
        widget._controller.item.tracking.impressionUrl ?? 'about:blank');
    webViewController = WebViewController();
    if (uri != null && uri.toString().isNotEmpty) {
      webViewController.loadRequest(uri);
    }
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SharedPreferences>(
        future: SharedPreferences.getInstance(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Container();
          }
          final prefs = snapshot.data!;
          var trackedCampaigns = prefs.getStringList(
                  AcmoKeyNames.TRACKED_CAMPAIGNS_FOR_USER_ID +
                      Tyrads.instance.publisherUserID) ??
              [];
          if (widget._controller.item.isInstalled ||
              tracked ||
              trackedCampaigns
                  .contains(widget._controller.item.campaignId.toString())) {
            return Container();
          }
          tracked = true;
          trackedCampaigns.add(widget._controller.item.campaignId.toString());
          prefs.setStringList(
              AcmoKeyNames.TRACKED_CAMPAIGNS_FOR_USER_ID +
                  Tyrads.instance.publisherUserID,
              trackedCampaigns);
          return SizedBox(
            width: 1,
            height: 1,
            child: WebViewWidget(
              controller: webViewController),
          );
        });
  }
}
