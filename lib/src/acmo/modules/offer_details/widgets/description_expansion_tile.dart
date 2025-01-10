import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:styled_text/tags/styled_text_tag.dart';
import 'package:styled_text/widgets/styled_text.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/controller.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/widgets/purchase_card.dart';
import 'package:tyrads_sdk/src/app_config.dart';

class DescriptionExpansionTile extends StatelessWidget {
  const DescriptionExpansionTile({
    super.key,
    required AcmoOffersDetailsController controller,
  }) : _controller = controller;

  final AcmoOffersDetailsController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
          title: const Text(
            "Description",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
          children: [
            if (!_controller.item.isInstalled)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: DefaultTextStyle.merge(
                  style: const TextStyle(fontSize: 12, color: Colors.black54),
                  child: Column(
                    children: [
                      if (_controller.item.campaignDescription.isNotEmpty)
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            _controller.item.campaignDescription,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color(0xff888888),
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
                                    "Follow this few steps to avoid download failure and make sure you’ll get your points.",
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AcmoConfig.SECONDARY_COLOR,
                                ),
                                tags: {
                                  "b": StyledTextTag(
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w700))
                                },
                              ),
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.circle,
                                    color: AcmoConfig.SECONDARY_COLOR,
                                    size: 8,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Flexible(
                                    child: StyledText(
                                      text:
                                          "Make sure you select <b>Google Play Store</b> to download the game.",
                                      //style: TextStyle(fontSize: 12),
                                      tags: {
                                        "b": StyledTextTag(
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w700,
                                          ),
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
                                    color: AcmoConfig.SECONDARY_COLOR,
                                    size: 8,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Flexible(
                                    child: StyledText(
                                      text:
                                          "Download right away after you click “<b>Confirm</b>” button.",
                                      //  style: TextStyle(fontSize: 12),
                                      tags: {
                                        "b": StyledTextTag(
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w700),
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
                                    color: AcmoConfig.SECONDARY_COLOR,
                                    size: 8,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Flexible(
                                    child: StyledText(
                                      text:
                                          "After the download complete, <b>open the game</b> from Google Play Store.",
                                      //  style: TextStyle(fontSize: 12),
                                      tags: {
                                        "b": StyledTextTag(
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w700),
                                        ),
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              StyledText(
                                text:
                                    "Note: If the download failed, do not continue to play!",
                                // style: TextStyle(fontSize: 12),
                                tags: {
                                  "b": StyledTextTag(
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w700))
                                },
                              )
                            ])
                      else
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            StyledText(
                              text:
                                  "Follow this few steps to avoid download failure and make sure you’ll get your points.",
                              // style: TextStyle(fontSize: 12),
                              tags: {
                                "b": StyledTextTag(
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w700))
                              },
                            ),
                            const SizedBox(height: 16),
                            StyledText(
                              text:
                                  "1. Make sure you select <b>App Store</b> to download the game.",
                              //style: TextStyle(fontSize: 12),
                              tags: {
                                "b": StyledTextTag(
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w700))
                              },
                            ),
                            const SizedBox(height: 16),
                            StyledText(
                              text:
                                  "2. Download right away after you click “<b>Confirm</b>” button.",
                              //  style: TextStyle(fontSize: 12),
                              tags: {
                                "b": StyledTextTag(
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w700))
                              },
                            ),
                            const SizedBox(height: 16),
                            StyledText(
                              text:
                                  "3. After the download complete, <b>open the game</b> from App Store.",
                              //  style: TextStyle(fontSize: 12),
                              tags: {
                                "b": StyledTextTag(
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w700))
                              },
                            ),
                            const SizedBox(height: 16),
                            StyledText(
                              text:
                                  "Note: If the download failed, do not continue to play!",
                              // style: TextStyle(fontSize: 12),
                              tags: {
                                "b": StyledTextTag(
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w700))
                              },
                            ),
                          ],
                        ),
                      const SizedBox(
                        height: 54,
                      )
                    ],
                  ),
                ),
              )
            else
              Column(
                children: [
                  PurchaseCard(
                    duplicateEvents: _controller.duplicateEvents,
                    purchaseEvents: _controller.purchaseEvents,
                    dailyPurchaseEvents: _controller.dailyPurchaseEvents,
                    maxPoints: _controller.maxPurchasePoints,
                    earnedPoints: _controller.earnedPurchasePoints,
                    currencyIcon: _controller.item.currency.adUnitCurrencyIcon,
                    currencyName: _controller.item.currency.adUnitCurrencyName,
                  ),
                  const SizedBox(
                    height: 36,
                  )
                ],
              ),
          ],
        ),
      ),
    );
  }
}
