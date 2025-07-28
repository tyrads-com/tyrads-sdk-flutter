import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:styled_text/tags/styled_text_tag.dart';
import 'package:styled_text/widgets/styled_text.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/controller.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';

class DescriptionExpansionTile extends StatefulWidget {
  const DescriptionExpansionTile({
    super.key,
    required AcmoOffersDetailsController controller,
  }) : _controller = controller;

  final AcmoOffersDetailsController _controller;

  @override
  State<DescriptionExpansionTile> createState() =>
      _DescriptionExpansionTileState();
}

class _DescriptionExpansionTileState extends State<DescriptionExpansionTile>
    with SingleTickerProviderStateMixin {
  late AnimationController _rotationController;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();
    _rotationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _rotationAnimation = Tween<double>(begin: 0.0, end: -0.5).animate(
      CurvedAnimation(parent: _rotationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _rotationController.dispose();
    super.dispose();
  }

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
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 16),
          dense: true,
          title: Text(
            "Description",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
          trailing: RotationTransition(
            turns: _rotationAnimation,
            child: Assets.icons.angleDown.image(
              width: 16,
            ),
          ),
          onExpansionChanged: (expanded) {
            if (expanded) {
              _rotationController.forward();
            } else {
              _rotationController.reverse();
            }
          },
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 8),
              child: Divider(
                thickness: 1,
                color: Color(0xFFE0E2E7),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: DefaultTextStyle.merge(
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xff323434),
                ),
                child: Column(
                  children: [
                    if (widget._controller.item.campaignDescription.isNotEmpty)
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          widget._controller.item.campaignDescription,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: const Color(0xff323434),
                          ),
                        ),
                      ),
                    const SizedBox(
                      height: 8,
                    ),
                    if (!kIsWeb && Platform.isAndroid)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          StyledText(
                            text:
                                "Follow this few steps to avoid download failure and make sure you'll get your points.",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                            tags: {
                              "b": StyledTextTag(
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600),
                              ),
                            },
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              const Icon(
                                Icons.circle,
                                color: Colors.black,
                                size: 7,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Flexible(
                                child: StyledText(
                                  text:
                                      "Make sure you select <b>Google Play Store</b> to download the game.",
                                  tags: {
                                    "b": StyledTextTag(
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              const Icon(
                                Icons.circle,
                                color: Colors.black,
                                size: 7,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Flexible(
                                child: StyledText(
                                  text:
                                      "Download right away after you click “<b>Confirm</b>” button.", //  style: TextStyle(fontSize: 12),
                                  tags: {
                                    "b": StyledTextTag(
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              const Icon(
                                Icons.circle,
                                color: Colors.black,
                                size: 7,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Flexible(
                                child: StyledText(
                                  text:
                                      "After the download complete, <b>open the game</b> from Google Play Store.",
                                  tags: {
                                    "b": StyledTextTag(
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          StyledText(
                            text:
                                "<b>Note: If the download failed, do not continue to play!</b>",
                            tags: {
                              "b": StyledTextTag(
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600),
                              ),
                            },
                          )
                        ],
                      )
                    else
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          StyledText(
                            text:
                                "Follow this few steps to avoid download failure and make sure you'll get your points.",
                            tags: {
                              "b": StyledTextTag(
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600),
                              ),
                            },
                          ),
                          const SizedBox(height: 16),
                          StyledText(
                            text:
                                "1. Make sure you select <b>App Store</b> to download the game.",
                            tags: {
                              "b": StyledTextTag(
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600),
                              ),
                            },
                          ),
                          const SizedBox(height: 16),
                          StyledText(
                            text:
                                "Download right away after you click “<b>Confirm</b>” button.", //  style: TextStyle(fontSize: 12),
                            tags: {
                              "b": StyledTextTag(
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600),
                              ),
                            },
                          ),
                          const SizedBox(height: 16),
                          StyledText(
                            text:
                                "3. After the download complete, <b>open the game</b> from App Store.",
                            tags: {
                              "b": StyledTextTag(
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600),
                              ),
                            },
                          ),
                          const SizedBox(height: 16),
                          StyledText(
                            text:
                                "<b>Note: If the download failed, do not continue to play!</b>",
                            tags: {
                              "b": StyledTextTag(
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600),
                              ),
                            },
                          ),
                        ],
                      ),
                    const SizedBox(
                      height: 16,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
