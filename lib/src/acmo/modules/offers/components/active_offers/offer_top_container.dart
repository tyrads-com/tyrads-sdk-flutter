import 'package:flutter/material.dart';

class OfferTopContainer extends StatelessWidget {
  const OfferTopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Game info section
            _buildGameInfoSection(),

            // Overall earnings section
            _buildOverallEarningsSection(context),
          ],
        ),
      ),
    );
  }

  Widget _buildGameInfoSection() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Game banner with rating
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            'packages/tyrads_sdk/assets/images/banner.jpg',  // Use package name prefix
            width: 150,
            height: 85,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
               return Container(
                width: 150,
                height: 85,
                color: Colors.grey[300],
                child: const Center(
                  child: Text('Lords Mobile'),
                ),
              );
            },
          ),
        ),

        const SizedBox(width: 14),

        // Game details (right side)
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Game title
              const Text(
                'Lords Mobile: Kingdom',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),

              const SizedBox(height: 4),

              Row(
                children: [
                  const Row(
                    children: [
                      Text(
                        '3',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      // SizedBox(width: 2),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 16,
                      ),
                    ],
                  ),
                  const SizedBox(width: 4),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1E4FF),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Text(
                      '2x BONUS',
                      style: TextStyle(
                        color: Color(0xFF8C52FF),
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 4),

              // Coin amount
              Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.amber,
                    radius: 10,
                    child: Text(
                      'T',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10),
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    '6.80M',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '3.40M',
                    style: TextStyle(
                      color: Colors.grey[500],
                      decoration: TextDecoration.lineThrough,
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

  Widget _buildOverallEarningsSection(BuildContext context) {
    // Calculate progress percentage (500K out of 6.80M)
    const progressPercentage = 500000 / 6800000;

    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Overall Earnings title with info icon
          const Row(
            children: [
              Text(
                'Overall Earnings',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.all(2.0),
                child: Icon(Icons.info_outline, size: 18),
              ),
            ],
          ),

          const SizedBox(height: 8),

          // Progress bar
          Stack(
            children: [
              // Background
              Container(
                height: 18,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              // Progress
              Container(
                height: 18,
                width: MediaQuery.of(context).size.width * progressPercentage,
                decoration: const BoxDecoration(
                  color: Color(0xFF00BFB3), // Teal color
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    // Only add right side radius if progress is complete or nearly complete
                    topRight: progressPercentage > 0.95 ? Radius.circular(8) : Radius.zero,
                    bottomRight: progressPercentage > 0.95 ? Radius.circular(8) : Radius.zero,
                  ),
                ),
              ),

              // Progress text
              const Positioned.fill(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 7,
                        child: Text(
                          'T',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 8),
                        ),
                      ),
                      SizedBox(width: 2),
                      Text(
                        '500K/6.80M',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}