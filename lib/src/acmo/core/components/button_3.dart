// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class AcmoButton_3 extends StatelessWidget {
  const AcmoButton_3({
    Key? key,
    required this.onTap,
    this.label = "Edit",
    this.color,
    this.borderRadius,
    this.labelStyle,
  }) : super(key: key);

  final Function()? onTap;
  final String label;
  final Color? color;
  final double? borderRadius;
  final TextStyle? labelStyle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular( borderRadius ?? 4)),
          color: color ?? Theme.of(context).colorScheme.secondary,
        ),
        // onPressed: ()=>callback(),
        child: SizedBox(
          width: 152,
          height: 36,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  label,
                  style: labelStyle ?? const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
