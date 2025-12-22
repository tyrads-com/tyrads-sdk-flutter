import 'package:flutter/material.dart';

class ActivationGameCard extends StatelessWidget {
  final String gameIcon;
  final String gameName;
  final VoidCallback? onPlayNow;

  const ActivationGameCard({
    super.key,
    required this.gameIcon,
    required this.gameName,
    this.onPlayNow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 296,
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: [-0.75, 0.4314],
          colors: [
            Color(0xFFB3E5EC),
            Color(0xFFFFFFFF),
          ],
        ),
        borderRadius: BorderRadius.circular(4),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1F000000),
            offset: Offset(0, 1),
            blurRadius: 3,
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0x3D000000),
            offset: Offset(0, 4),
            blurRadius: 8,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: [
          // Game Icon
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              image: const DecorationImage(
                image: AssetImage(
                  'assets/images/clock_icon.png',
                  package: 'tyrads_sdk',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 4),
          // Game Name
          Expanded(
            child: SizedBox(
              height: 16,
              child: Text(
                gameName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Color(0xFF1E2020),
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  height: 1.0,
                ),
              ),
            ),
          ),
          const SizedBox(width: 4),
          // Play Now Button
          GestureDetector(
            onTap: onPlayNow,
            child: Container(
              width: 88,
              height: 32,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFF02B5BE),
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Center(
                child: Text(
                  'Play Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    height: 1.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
