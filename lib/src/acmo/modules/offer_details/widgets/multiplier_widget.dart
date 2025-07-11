import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numeral/numeral.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/controller.dart'
    show AcmoOffersDetailsController;
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoMultiplierWidget extends StatelessWidget {
  const AcmoMultiplierWidget({
    super.key,
    required controller,
  }) : _controller = controller;

  final AcmoOffersDetailsController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Tyrads.instance.colorPremium?.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Text(
            "${_controller.item.engagementOverride.currencySales?.multiplier}x BONUS",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Tyrads.instance.colorPremium,
            ),
          ),
          const Spacer(),
          Text(
            "Earn ${((_controller.item.engagementOverride.currencySales?.multiplier ?? 1) * _controller.item.campaignPayout.totalPlayablePayoutConverted).numeral(digits: 2)} TPoints",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            _controller.item.campaignPayout.totalPlayablePayoutConverted
                .numeral(digits: 2),
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: const Color(0xFF667085),
              decoration: TextDecoration.lineThrough,
            ),
          ),
        ],
      ),
    );
  }
}
