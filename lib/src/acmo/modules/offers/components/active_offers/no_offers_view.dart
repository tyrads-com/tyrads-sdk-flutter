// File: no_offers_view.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoNoOffersView extends StatelessWidget {
  final VoidCallback? onButtonPressed;

  const AcmoNoOffersView({
    super.key,
    this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.icons.wind.image(
              height: 58,
              color: const Color(0xFFA3A9B6)
            ),
            const SizedBox(height: 32),
            Text(
              'No offers available yet,\nstart playing to earn rewards!',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.center,
            ),
        
            const SizedBox(height: 16),
            SizedBox(
              width: double.maxFinite,
              height: 42,
              child: ElevatedButton(
                onPressed: onButtonPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Tyrads.instance.colorPremium ?? Theme.of(context).colorScheme.secondary,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Start Playing',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}