import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numeral/numeral.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/controller.dart';
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
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
          Positioned(
            right: 0,
            bottom: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(16),
              ),
              child: Assets.images.alarmBg.image(
                width: 80,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 8),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Play Time",
                        style: GoogleFonts.poppins(
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 8),
                      RichText(
                        text: TextSpan(
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                          children: [
                            const TextSpan(text: "Play "),
                            if (Duration(
                                        seconds:
                                            controller.totalPlayTimeSeconds)
                                    .inDays >
                                0) ...[
                              TextSpan(
                                text:
                                    "${Duration(seconds: controller.totalPlayTimeSeconds).inDays}d",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                            TextSpan(
                              text:
                                  "${Duration(seconds: controller.totalPlayTimeSeconds).inHours.remainder(24)}h:${(Duration(seconds: controller.totalPlayTimeSeconds).inMinutes.remainder(60)).toString().padLeft(2, '0')}m",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold),
                            ),
                            const TextSpan(text: " and earn "),
                            TextSpan(
                              text: controller.totalPlayTimePoints
                                  .numeral(digits: 2),
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold),
                            ),
                            const TextSpan(text: " \nTPoints!"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AcmoPlayTimeDialog(
                        controller: controller,
                      ),
                    );
                  },
                  child: Row(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "See Progress",
                        style: GoogleFonts.poppins(
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Theme.of(context).colorScheme.secondary,
                        size: 22,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AcmoPlayTimeDialog extends StatelessWidget {
  const AcmoPlayTimeDialog({
    super.key,
    required this.controller,
  });

  final AcmoOffersDetailsController controller;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      insetPadding: const EdgeInsets.all(36),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.06),
                  blurRadius: 10,
                  offset: const Offset(0, 8),
                )
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  right: -16,
                  bottom: 0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(16),
                    ),
                    child: Assets.images.alarmBg.image(
                      width: 80,
                      height: 90,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    top: 8,
                    bottom: 8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "My Play Time",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.close,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (controller.item.isInstalled)
            ...controller.playtimeEvents.map(
              (event) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    bottom: 16,
                    top: 5,
                  ),
                  child: Row(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Assets.icons.timeDeleteOutlined.image(
                            width: 21,
                          ),
                          Positioned(
                            right: -3,
                            bottom: -3,
                            child: Container(
                              color: Colors.white,
                              child: Assets.icons.gamepad.image(
                                width: 13,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Play ${Duration(seconds: event.timePlayedSeconds).inMinutes} minutes",
                            maxLines: 1,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              height: 16 / 12,
                            ),
                          ),
                          Row(
                            children: [
                              CachedNetworkImage(
                                imageUrl:
                                    controller.item.currency.adUnitCurrencyIcon,
                                width: 12,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "${event.payoutAmountConverted.numeral(digits: 2)} TPoints",
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  height: 14 / 10,
                                  color: const Color(0xFFA3A9B6),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(width: 8),
                      const Spacer(),
                      Text(
                        event.conversionStatus == ""
                            ? "On Progress"
                            : "Completed",
                        style: GoogleFonts.poppins(
                          color: event.conversionStatus != ""
                              ? Theme.of(context).colorScheme.secondary
                              : const Color(0xFFA3A9B6),
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          else
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
              child: Column(
                spacing: 16,
                children: [
                  Assets.icons.timeDeleteOutlined.image(
                    width: 56,
                    color: const Color(0xFFA3A9B6),
                  ),
                  Text(
                    'Unlock the offers to view your play time history!',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: const Color(0xFF667085),
                    ),
                  ),
                ],
              ),
            ),
          const Divider(
            height: 1,
            thickness: 1,
            color: Color(0xFFE0E2E7),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Total TPoints: ",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                  ),
                ),
                CachedNetworkImage(
                  imageUrl: controller.item.currency.adUnitCurrencyIcon,
                  width: 12,
                ),
                const SizedBox(width: 8),
                Text(
                  controller.item.isInstalled
                      ? controller.totalPlayTimePoints.numeral(digits: 2)
                      : "0",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
