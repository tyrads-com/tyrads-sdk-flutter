import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_network/image_network.dart';
import 'package:tyrads_sdk/src/acmo/core/components/button_offer_view.dart';
import 'package:tyrads_sdk/src/acmo/core/components/custom_slider.dart';
import 'package:tyrads_sdk/src/acmo/core/components/overlay_loading.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/page.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/components/active_offers/limited_time_event.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/controller.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoLimitedTimeOfferDailog extends StatelessWidget {
  final AcmoOffersController controller;
  const AcmoLimitedTimeOfferDailog({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      insetPadding: const EdgeInsets.all(36),
      clipBehavior: Clip.hardEdge,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.close,
                size: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Row(
              spacing: 8,
              children: [
                Assets.icons.alarmClock.image(
                  width: 16,
                ),
                Text(
                  'Limited Time Offer –\nClaim Before Time Runs Out!',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 6),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Divider(
              color: Color(0xFFE0E2E7),
              thickness: 1,
              indent: 0,
            ),
          ),
          const SizedBox(height: 6),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 455,
            ),
            child: AcmoCarouselSlider(
              itemCount:
                  controller.activeOffersWithLimitedTimeEvents.value.length,
              indicatorActiveColor:
                  Tyrads.instance.colorPremium ?? const Color(0xFF1C90DF),
              indicatorInactiveColor: const Color(0xFFD9D9D9),
              indicatorSize: 6.0,
              infiniteScroll:
                  controller.activeOffersWithLimitedTimeEvents.value.length == 1
                      ? false
                      : true,
              viewportFraction: 0.85,
              itemBuilder: (context, index) {
                final currencyUrl =
                    controller.allItems.first.currency.adUnitCurrencyIcon;
                final limitedTimeEventCampaigns = controller
                    .activeOffersWithLimitedTimeEvents.value
                    .elementAt(index);
                return SingleChildScrollView(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 40),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF9ED),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Stack(
                        children: [
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Opacity(
                              opacity: 0.99,
                              child: Assets.images.alarmBackground.image(
                                width: 154,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              spacing: 16,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  spacing: 8,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      spacing: 13,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: ImageNetwork(
                                            image: limitedTimeEventCampaigns
                                                .app.thumbnail,
                                            width: 43,
                                            height: 43,
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            limitedTimeEventCampaigns.app.title,
                                            maxLines: 2,
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    ...limitedTimeEventCampaigns
                                        .limitedTimeEvents
                                        .map(
                                      (e) => GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                          Tyrads.instance.to(
                                            AcmoOfferDetailsPage(
                                              id: limitedTimeEventCampaigns
                                                  .campaignId,
                                            ),
                                          );
                                        },
                                        child: LimitedTimeEvent(
                                          currencyUrl: currencyUrl,
                                          event: e,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    AcmoButtonOfferView(
                                      label: "Play Now",
                                      onTap: () async {
                                        Navigator.pop(context);
                                        Loading.open();
                                        await controller.openOffer(
                                          clickUrl: limitedTimeEventCampaigns
                                              .app.previewUrl,
                                          s2sClickUrl: null,
                                          isRetryDownload:
                                              limitedTimeEventCampaigns
                                                  .isRetryDownload,
                                          isInstalled: limitedTimeEventCampaigns
                                              .isInstalled,
                                          previewUrl: limitedTimeEventCampaigns
                                              .app.previewUrl,
                                          campaignId: limitedTimeEventCampaigns
                                              .campaignId,
                                        );
                                        Loading.dismiss();
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
