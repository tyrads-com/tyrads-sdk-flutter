import 'package:flutter/material.dart';
import 'reward_category.dart';
import 'reward_item.dart';

class DailyRewardsSection extends StatelessWidget {
  const DailyRewardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Daily Rewards',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 4),
          Divider(
            height: 1,
            thickness: 1,
            color: Color(0xFFEEEEEE),
          ),
          SizedBox(height: 8),

          // In-App Purchase
          RewardCategory(
            title: 'In-App Purchase',
            totalLimit: '0/300',
            child: RewardItem(
              icon: Icons.shopping_cart,
              iconColor: Color(0xFF00BCD4),
              bonusAmount: '100K',
              limitText: '(0/3)',
            ),
          ),

          SizedBox(height: 12),

          // Watch Ads
          RewardCategory(
            title: 'Watch Ads',
            totalLimit: '0/300',
            child: RewardItem(
              icon: Icons.ondemand_video,
              iconColor: Color(0xFF00BCD4),
              bonusAmount: '50K',
              limitText: '(0/15)',
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
