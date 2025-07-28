import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/models/offer_details.dart'
    show PayoutEvents;
import 'package:tyrads_sdk/src/acmo/modules/offer_details/page.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/components/active_offers/limited_time_event.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class LimitedTimeOfferRewards extends StatelessWidget {
  const LimitedTimeOfferRewards({
    super.key,
    required this.limitedEvents,
    required this.currencyUrl,
    required this.offerId,
  });
  final List<PayoutEvents> limitedEvents;
  final String currencyUrl;
  final int offerId;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  _buildLimitedTimeBanner(),
                  Column(
                    spacing: 8,
                    children: limitedEvents
                        .map(
                          (e) => GestureDetector(
                            onTap: () {
                              Tyrads.instance.to(
                                AcmoOfferDetailsPage(id: offerId),
                              );
                            },
                            child: LimitedTimeEvent(
                              currencyUrl: currencyUrl,
                              event: e,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLimitedTimeBanner() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 8,
      children: [
        Assets.icons.alarmClock.image(
          width: 16,
        ),
        Text(
          'Limited Time Offer – Ending Soon!',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
