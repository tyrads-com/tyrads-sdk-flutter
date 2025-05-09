// File: no_offers_view.dart
import 'package:flutter/material.dart';

class NoOffersView extends StatelessWidget {
  final VoidCallback? onButtonPressed;

  const NoOffersView({
    super.key,
    this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Wind icon (using an icon that resembles the wind graphic in your image)
          Icon(
            Icons.air,
            size: 72,
            color: Colors.grey[400],
          ),
          const SizedBox(height: 20),

          // No offers available text
          Text(
            'No offers available',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey[700],
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 40),

          // Start Playing & Earning button
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(
              onPressed: onButtonPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00BCD4), // Teal/cyan color from image
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Start Playing & Earning',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}