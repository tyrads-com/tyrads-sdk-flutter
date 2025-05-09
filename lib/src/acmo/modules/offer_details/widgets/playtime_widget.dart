import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:numeral/numeral.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/controller.dart';
import 'package:tyrads_sdk/src/app_config.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';

class PlaytimeWidget extends StatelessWidget {
  final AcmoOffersDetailsController controller;

  const PlaytimeWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Main content with padding
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16,left: 16, right: 8),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Play Time",
                        style: TextStyle(
                          color: AcmoConfig.SECONDARY_COLOR,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 8),
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          children: [
                            TextSpan(text: "Play "),
                            TextSpan(
                              text: "2 minutes",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: " and earn "),
                            TextSpan(
                              text: "4250",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: " \nTPoints!"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // const SizedBox(width: 4,),
                const Text(
                  "See Progress",
                  style: TextStyle(
                    color: AcmoConfig.SECONDARY_COLOR,
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
                const Icon(
                  Icons.chevron_right,
                  color: AcmoConfig.SECONDARY_COLOR,
                  size: 24,
                ),
              ],
            ),
          ),

          // Background image positioned at the right bottom corner
          // Now aligned with the container's actual corners
          Positioned(
            right: 0,
            bottom: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(16),
              ),
              child: Image.asset(
                'packages/tyrads_sdk/assets/images/alam_bg.png',
                width: 100,
                height: 100,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
