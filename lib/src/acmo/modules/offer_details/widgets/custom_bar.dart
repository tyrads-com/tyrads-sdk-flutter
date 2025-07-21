import 'package:flutter/material.dart';

class AcmoCustomBar extends StatelessWidget {
  AcmoCustomBar(
      {Key? key,
      this.title = "",
      required this.total,
      required this.completed,
      this.backgroundColor = const Color(0xFF5E5E5E),
      this.showLabels = true,
      })
      : super(key: key);

  final height = 30.0;
  final String title;
  final int total;
  final int completed;
  final valueColor = Colors.green;
  final Color backgroundColor;
  final bool showLabels;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Container(
            height: height,
            color: backgroundColor,
            child: Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: completed,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Container(
                          color: valueColor,
                          height: height,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: total - completed,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Container(
                          color: backgroundColor,
                          height: height,
                        ),
                      ),
                    )
                  ],
                ),
                if(showLabels)
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
                              fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        Text(
                          "$completed/$total",
                          style: const TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
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
