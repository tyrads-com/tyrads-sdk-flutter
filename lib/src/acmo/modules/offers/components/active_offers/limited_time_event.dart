import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numeral/numeral.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/models/offer_details.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/widgets/countdown.dart';

class LimitedTimeEvent extends StatelessWidget {
  const LimitedTimeEvent({
    super.key,
    required this.currencyUrl,
    required this.event,
  });

  final String currencyUrl;
  final PayoutEvents event;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.06),
              blurRadius: 10,
              offset: const Offset(0, 8),
            ),
          ]),
      alignment: Alignment.center,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        dense: true,
        visualDensity: VisualDensity.compact,
        title: Text(
          event.eventName,
          maxLines: 2,
          style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
        ),
        subtitle: Row(
          spacing: 4,
          children: [
            CachedNetworkImage(
              imageUrl: currencyUrl,
              width: 14,
            ),
            Text(
              event.payoutAmountConverted.numeral(digits: 2),
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ],
        ),
        trailing: (event.conversionStatus == 'approved' ||
                event.conversionStatus == 'rejected')
            ? Text(
                event.conversionStatus == 'approved' ? 'Completed' : 'Rejected',
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: event.conversionStatus == 'rejected'
                      ? const Color(0xFFFF554A)
                      : const Color(0xFFA3A9B6),
                ),
              )
            : Container(
                height: 22,
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFFF554A),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: AcmoComponentCountdown(
                  seconds: event.limitedTimeEventRemainingSeconds.toInt(),
                  formatType: "hh:mm:ss",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                  ),
                  onFinish: () {},
                ),
              ),
      ),
    );
  }
}
