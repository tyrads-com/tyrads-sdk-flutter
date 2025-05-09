import 'package:flutter/material.dart';

class GameIconsRow extends StatelessWidget {
  const GameIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          _buildGameIcon(
            assetPath: 'packages/tyrads_sdk/assets/images/game1.jpg',  // Use package name prefix,
            fallbackColor: const Color(0xFF42C1E1),
            fallbackIcon: Icons.pets,
            notificationCount: 10,
          ),
          const SizedBox(width: 10),
          _buildGameIcon(
            assetPath: 'packages/tyrads_sdk/assets/images/game2.jpg',  // Use package name prefix,
            fallbackColor: Colors.orange,
            fallbackIcon: Icons.face,
            notificationCount: 8,
          ),
          const SizedBox(width: 10),
          _buildAddButton(),
        ],
      ),
    );
  }

  Widget _buildGameIcon({
    required String assetPath,
    required Color fallbackColor,
    required IconData fallbackIcon,
    required int notificationCount,
  }) {
    return Stack(
      clipBehavior: Clip.none, // Don't clip overflowing children
      children: [
        // Game icon
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            assetPath,
            width: 56,
            height: 56,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Container(
              width: 56,
              height: 56,
              color: fallbackColor,
              child: Icon(fallbackIcon, color: Colors.white),
            ),
          ),
        ),

        // Notification badge
        Positioned(
          right: -6,
          top: -6,
          child: Container(
            width: 20,
            height: 20,
            decoration: const BoxDecoration(
              color: Color(0xFFFF5252),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                notificationCount.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }


  Widget _buildAddButton() {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF00BCD4), width: 2, style: BorderStyle.solid),
        color: Colors.transparent,
      ),
      child: const Icon(Icons.add, color: Color(0xFF00BCD4), size: 24),
    );
  }
}