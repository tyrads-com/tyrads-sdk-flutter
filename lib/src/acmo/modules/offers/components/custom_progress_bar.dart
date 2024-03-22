import 'package:flutter/material.dart';

class AcmoCustomBarWithColor extends StatelessWidget {
  const AcmoCustomBarWithColor({
    Key? key,
    required this.title,
    required this.total,
    required this.completed,
    required this.progressBarColor,
    required this.circularRadius,
    this.backgroundColor = const Color(0xFF5E5E5E),
    this.totalTextColor = Colors.white,
    this.totalTitlePadding = const EdgeInsets.all(0),
  }) : super(key: key);

  final height = 36.0;
  final String title;
  final int total;
  final int completed;
  final Color progressBarColor;
  final BorderRadius circularRadius;
  final Color backgroundColor;
  final Color totalTextColor;
  final EdgeInsets totalTitlePadding;

  @override
  Widget build(BuildContext context) {
 return Stack(
      children: [
        ClipRRect(
          borderRadius: circularRadius,
          child: Container(
            height: height,
            color: progressBarColor,
            child: Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: completed,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Container(
                          color: progressBarColor,
                          height: height,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: total - completed,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: Container(
                          color: backgroundColor,
                          height: height,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Center(
                    child: Row(
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        const Spacer(),
                        Padding(
                          padding: totalTitlePadding,
                          child: Text(
                            "$completed/$total",
                            style: TextStyle(
                                fontSize: 12,
                                color: totalTextColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
