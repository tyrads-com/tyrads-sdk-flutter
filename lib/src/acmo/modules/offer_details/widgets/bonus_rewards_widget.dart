import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/controller.dart';

class BonusRewardsWidget extends StatelessWidget {
  const BonusRewardsWidget({
    super.key,
    required this.controller,
  });

  final AcmoOffersDetailsController controller;

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xFF0CB9B6);
    const Color textColor = Colors.white;
    const double borderRadius = 16.0;

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8.0),
          child: Column(
            children: [
              // Header Section
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(borderRadius),
                    topRight: Radius.circular(borderRadius),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Bonus Rewards",
                          style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                        Icon(
                          Icons.info_outline,
                          color: textColor,
                          size: 18,
                        ),
                      ],
                    ),
                    const Divider(
                      color: textColor,
                      thickness: 1,
                      height: 34,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'packages/tyrads_sdk/assets/icons/star.png',
                          width: 36,
                          height: 36,
                          color: Colors.amber,
                        ),
                        const SizedBox(width: 4),
                        const Expanded(
                          child: Text(
                            "Earn up to 150% bonus with \nQuick & Daily Rewards!",
                            style: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Image.asset(
                          'packages/tyrads_sdk/assets/icons/arrow-down.png',
                          width: 26,
                          height: 28,
                          color: textColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Main Content with rounded corners
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(borderRadius),
                  bottomRight: Radius.circular(borderRadius),
                ),
                child: Container(
                  color: primaryColor,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(borderRadius),
                        topRight: Radius.circular(borderRadius),
                        bottomLeft: Radius.circular(14),
                        bottomRight: Radius.circular(14),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildSectionHeader("Quick Rewards"),
                          const Divider(
                            color: Color(0xFFEEEEEE),
                            thickness: 1,
                            height: 24,
                          ),
                          const SizedBox(height: 8),
                          _buildQuickRewardItem(
                              "Purchase Efficiency First in Market's Warrior Support",
                              "200K"
                          ),
                          _buildDivider(),
                          _buildQuickRewardItem(
                              "Purchase One Step Ahead Bundle After Unlock Castle Level 10",
                              "200K"
                          ),
                          _buildDivider(),

                          _buildSectionHeader("Daily Rewards"),
                          const SizedBox(height: 16),

                          _buildDailyRewardHeader("In-App Purchase", "Total Limit: 0/300"),
                          const SizedBox(height: 8),
                          _buildDailyRewardItem(
                              icon: Icons.shopping_cart,
                              bonusText: "100K Bonus",
                              countText: "(0/3)"
                          ),
                          const SizedBox(height: 16),

                          _buildDailyRewardHeader("Watch Ads", "Total Limit: 0/300"),
                          const SizedBox(height: 8),
                          _buildDailyRewardItem(
                              icon: Icons.videocam,
                              bonusText: "50K Bonus",
                              countText: "(0/15)"
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),

        // Background image positioned at the right side
        Positioned(
          right: 0,
          bottom: 495,
          child: Image.asset(
            'packages/tyrads_sdk/assets/images/galaxy-star.png',
            width: 220,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16,
        color: Colors.black87,
      ),
    );
  }

  Widget _buildDivider() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Divider(
        color: Color(0xFFEEEEEE),
        thickness: 1,
        height: 1,
        indent: 25,
      ),
    );
  }

  Widget _buildQuickRewardItem(String title, String rewardAmount) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey.shade300),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.amber.shade700, width: 1),
                    ),
                    child: const Center(
                      child: Text(
                        "T",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    rewardAmount,
                    style: const TextStyle(
                      color: Color(0xFF0CB9B6),
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDailyRewardHeader(String title, String limitText) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        Text(
          limitText,
          style: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _buildDailyRewardItem({
    required IconData icon,
    required String bonusText,
    required String countText,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey),
          const SizedBox(width: 8),
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              // color: Colors.grey.shade400,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey.shade500, width: 1.5),
            ),
            child: const Center(
              child: Text(
                "T",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            bonusText,
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          Text(
            countText,
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}