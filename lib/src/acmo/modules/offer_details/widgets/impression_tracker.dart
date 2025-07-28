import 'package:dio/dio.dart' show Dio;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tyrads_sdk/src/acmo/core/constants/key_names.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/controller.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// ignore: must_be_immutable
class ImpressionTracker extends StatefulWidget {
  const ImpressionTracker({
    super.key,
    required AcmoOffersDetailsController controller,
  }) : controller = controller;

  final AcmoOffersDetailsController controller;

  @override
  State<ImpressionTracker> createState() => ImpressionTrackerState();
}

class ImpressionTrackerState extends State<ImpressionTracker> {
  var tracked = false;
  final Dio dio = Dio();

  // late WebViewController webViewController;
  @override
  void initState() {
    super.initState();

    // Uri? uri = Uri.tryParse(
    //     widget.controller.item.tracking.impressionUrl ?? 'about:blank');
    // webViewController = WebViewController();
    // if (uri != null && uri.toString().isNotEmpty) {
    //   webViewController.loadRequest(uri);
    // }
  }

  Future<void> trackImpression() async {
    try {
      await dio
          .get(widget.controller.item.tracking.impressionUrl ?? 'about:blank');
    } catch (e) {
      print('Error tracking impression: $e');
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
          if (widget.controller.item.isInstalled ||
              tracked ||
              trackedCampaigns
                  .contains(widget.controller.item.campaignId.toString())) {
            return Container();
          }
          tracked = true;
          trackedCampaigns.add(widget.controller.item.campaignId.toString());
          prefs.setStringList(
              AcmoKeyNames.TRACKED_CAMPAIGNS_FOR_USER_ID +
                  Tyrads.instance.publisherUserID,
              trackedCampaigns);
          trackImpression();

          return Container();
        });
  }
}