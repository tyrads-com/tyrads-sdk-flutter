import 'package:flutter/material.dart';

class RewardItem extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String bonusAmount;
  final String limitText;

  const RewardItem({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.bonusAmount,
    required this.limitText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF00BCD4), width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, color: iconColor, size: 20),
          const SizedBox(width: 8),
          Row(
            children: [
              Container(
                width: 14,
                height: 14,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFD700),
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Text(
                    'T',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 8,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 2),
              Text(
                '$bonusAmount Bonus',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Color(0xFF00BCD4),
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            limitText,
            style: const TextStyle(
              color: Color(0xFF00BCD4),
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}