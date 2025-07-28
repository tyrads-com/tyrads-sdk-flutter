import 'package:cached_network_image/cached_network_image.dart'
    show CachedNetworkImage;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;
import 'package:numeral/numeral.dart';
import 'package:tyrads_sdk/src/acmo/core/components/filled_onpress_button.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/models/offer_details.dart'
    show PayoutEvents;
import 'package:tyrads_sdk/src/acmo/modules/offer_details/page.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/widgets/countdown.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart' show Assets;
import 'package:tyrads_sdk/tyrads_sdk.dart';

class ActiveTaskSection extends StatelessWidget {
  const ActiveTaskSection({
    super.key,
    required this.events,
    required this.currencyUrl,
    required this.offerId,
  });

  final List<PayoutEvents> events;
  final String currencyUrl;
  final int offerId;

  @override
  Widget build(BuildContext context) {
    PayoutEvents? item;
    try {
      item = events.firstWhere((event) =>
          event.conversionStatus?.toLowerCase() == null &&
          event.identifier != 'install');
    } catch (e) {
      item = null;
    }
    if (item == null) return Container();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Active Task',
          style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 16),
        const Divider(
          height: 1,
          thickness: 1,
          color: Color(0xFFE0E2E7),
        ),
        const SizedBox(height: 14),
        Row(
          spacing: 10,
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: const Color(0xFFFFEECE),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Assets.images.silverStar.image(
                  width: 16,
                  height: 16,
                  color: const Color(0xFFF4A004),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.eventName,
                  maxLines: 1,
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF0E1223),
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    height: 16 / 12,
                  ),
                ),
                const SizedBox(height: 2),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CachedNetworkImage(
                      imageUrl: currencyUrl,
                      width: 14,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      item.payoutAmountConverted.numeral(digits: 2),
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        height: 14 / 12,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 8),
        const Divider(
          height: 1,
          thickness: 1,
          color: Color(0xFFE0E2E7),
        ),
        if (item.maxTimeRemainSeconds != null && item.maxTimeRemainSeconds != 0)
          Container(
            margin: const EdgeInsets.only(top: 8),
            padding: const EdgeInsets.symmetric(
              vertical: 2,
              horizontal: 12,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFFFF554A),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 4,
              children: [
                Text(
                  "Complete Within",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                  ),
                ),
                AcmoComponentCountdown(
                  seconds: item.maxTimeRemainSeconds != null
                      ? item.maxTimeRemainSeconds!.toInt()
                      : 0,
                  formatType: "hh:mm:ss",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                  ),
                  onFinish: () {},
                )
              ],
            ),
          ),
        const SizedBox(height: 16),
        AcmoOutlinedButton(
            title: 'See all tasks',
            onPressed: () {
              Tyrads.instance.to(
                AcmoOfferDetailsPage(id: offerId),
              );
            })
      ],
    );
  }
}
