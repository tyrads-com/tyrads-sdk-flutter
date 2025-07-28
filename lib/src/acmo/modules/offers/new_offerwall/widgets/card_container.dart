import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({
    super.key,
    this.child,
    this.padding,
    this.margin,
    this.borderRadius,
    this.height,
    this.width,
    this.decoration,
  });

  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? borderRadius;
  final double? height;
  final double? width;
  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: decoration ?? BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 18,
            offset: const Offset(0.0, 16),
          ),
        ],
      ),
      child: child,
    );
  }
}
