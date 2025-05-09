import 'package:flutter/material.dart';
import 'task_item.dart';

class TasksContainer extends StatelessWidget {
  const TasksContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color(0xFFFFF9ED),
          borderRadius: BorderRadius.circular(16),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              // Background image in bottom right corner
              Positioned(
                right: 0,
                bottom: 0,
                child: Opacity(
                  opacity: 0.9,
                  child: Image.asset(
                    'packages/tyrads_sdk/assets/images/alarm_background.png',
                    width: 190,
                    height: 190,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Main content
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Limited Time Banner
                    _buildLimitedTimeBanner(),
                    const SizedBox(height: 12),

                    // Task 1
                    const TaskItem(
                      title: 'Play for 5 minutes',
                      reward: '100K',
                      timeRemaining: '06:05:00',
                    ),
                    const SizedBox(height: 12),

                    // Task 2
                    const TaskItem(
                      title: 'Make in-app purchase',
                      reward: '200K',
                      timeRemaining: '08:04:00',
                    ),
                    const SizedBox(height: 12),

                    // Task 3
                    const TaskItem(
                      title: 'Watch Ads',
                      reward: '100K',
                      timeRemaining: '10:04:00',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method for limited time banner
  Widget _buildLimitedTimeBanner() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
            Icons.access_alarm,
            color: Colors.black,
            size: 18
        ),
        SizedBox(width: 8),
        Text(
          'Limited Time Offer – Ending Soon!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
