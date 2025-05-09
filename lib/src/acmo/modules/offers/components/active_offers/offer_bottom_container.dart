import 'package:flutter/material.dart';
import 'daily_rewards_section.dart';
import 'tasks_container.dart';

class OfferBottomContainer extends StatelessWidget {
  const OfferBottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Tasks with integrated banner
          TasksContainer(),

          // Daily Rewards
          DailyRewardsSection(),
        ],
      ),
    );
  }
}