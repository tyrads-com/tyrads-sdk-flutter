import 'package:flutter/material.dart';

class RewardCategory extends StatelessWidget {
  final String title;
  final String totalLimit;
  final Widget child;

  const RewardCategory({
    super.key,
    required this.title,
    required this.totalLimit,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            Text(
              'Total Limit: $totalLimit',
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        child,
        const SizedBox(height: 4),
        // Divider removed from here
      ],
    );
  }
}
