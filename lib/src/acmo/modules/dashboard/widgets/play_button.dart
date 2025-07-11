
import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final Color? backgroundColor;
  final TextStyle textStyle;
  final EdgeInsetsGeometry padding;
  final double borderRadius;

  const PlayButton({
    super.key,
    required this.text,
    this.onTap,
    this.backgroundColor = Colors.blue,
    this.textStyle = const TextStyle(color: Colors.white),
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    this.borderRadius = 10.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      padding: padding,
      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius),
        onTap: onTap,
        child: Center(
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
