import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/widgets/countdown.dart';

class AcmoExpiresInWidget extends StatelessWidget {
  const AcmoExpiresInWidget({
    super.key,
    required this.expiredOn,
    this.margin,
  });

  final DateTime? expiredOn;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 2,
      ),
      margin: margin ?? const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: const Color(0xFFFF554A),
        borderRadius: BorderRadius.circular(100),
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Offer Expires in ",
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 12,
            ),
          ),
          AcmoComponentCountdown(
            seconds: expiredOn != null
                ? (expiredOn!.millisecondsSinceEpoch -
                        DateTime.now().millisecondsSinceEpoch) ~/
                    1000
                : 0,
            formatType: "hh:mm:ss",
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 12,
            ),
            onFinish: () {},
          ),
        ],
      ),
    );
  }
}
