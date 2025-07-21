
import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final TextStyle textStyle;
  final EdgeInsetsGeometry padding;
  final double borderRadius;

  const PlayButton({
    super.key,
    required this.text,
    this.backgroundColor = Colors.blue,
    required this.textStyle,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    this.borderRadius = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      padding: padding,
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
