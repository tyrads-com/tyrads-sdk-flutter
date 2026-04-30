import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyrads_sdk/src/acmo/core/components/custom_slider.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/common.dart';
import 'package:tyrads_sdk/src/acmo/modules/in_app_notification/widgets/notification_card.dart';
import 'package:tyrads_sdk/src/acmo/modules/in_app_notification/widgets/offer_card.dart';
import 'package:tyrads_sdk/src/acmo/modules/in_app_notification/controllers.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';

class LimitedTimeOfferDialog extends StatefulWidget {
  const LimitedTimeOfferDialog({super.key});

  @override
  State<LimitedTimeOfferDialog> createState() => _LimitedTimeOfferDialogState();
}

class _LimitedTimeOfferDialogState extends State<LimitedTimeOfferDialog> {
  final _controller = AcmoInAppNotificationController.instance;
  int _currentIndex = 0;

  void _closeDialog() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final activeOffers = _controller.activeOffers;
    return Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.zero,
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: const Color(0x80000000),
              child: Center(
                child: NotificationCard(
                  onDismiss: _closeDialog,
                  icon: Assets.icons.coinTimer,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Limited Time Offer",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        child: Divider(
                          thickness: 1,
                          color: Color(0xFFE0E2E7),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'Limited time offer unlocked! Play now and claim extra rewards!',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 375,
                        child: ClipRect(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 16, left: 8, right: 8),
                            child: AcmoCarouselSlider(
                              itemCount: activeOffers.length,
                              autoPlayInterval: const Duration(seconds: 5),
                              showIndicator: false,
                              infiniteScroll: true,
                              viewportFraction:
                                  activeOffers.length > 1 ? 0.8 : 1,
                              scaleFactor: 1,
                              initialPage: 0,
                              onPageChanged: (index) {
                                setState(() {
                                  _currentIndex = index;
                                });
                              },
                              itemBuilder: (context, index) {
                                final campaign = activeOffers[index];
                                return OfferCard(
                                  campaign: campaign,
                                  onPlayNow: () {
                                    acmoLaunchURLForce(campaign.app.previewUrl);
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      if (activeOffers.length > 1)
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                                List.generate(activeOffers.length, (index) {
                              return TweenAnimationBuilder<double>(
                                duration: const Duration(milliseconds: 300),
                                tween: Tween<double>(
                                    begin: 1.0,
                                    end: _currentIndex == index ? 1.2 : 1.0),
                                builder: (context, double scale, child) {
                                  return Transform.scale(
                                    scale: scale,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        horizontal: 4.0,
                                      ),
                                      width: 6.0,
                                      height: 6.0,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: _currentIndex == index
                                            ? Colors.white
                                            : Colors.white
                                                .withValues(alpha: 0.3),
                                      ),
                                    ),
                                  );
                                },
                              );
                            }),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            )));
  }
}
