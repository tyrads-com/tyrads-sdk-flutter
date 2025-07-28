import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';

class AcmoHelpItemComponent extends StatelessWidget {
  const AcmoHelpItemComponent(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTap});

  final Widget icon;
  final String title;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 46,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 4,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            icon,
            const SizedBox(
              width: 8,
            ),
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            RotatedBox(
              quarterTurns: 1,
              child: Assets.icons.angleUp.image(height: 16),
            ),
          ],
        ),
      ),
    );
  }
}
