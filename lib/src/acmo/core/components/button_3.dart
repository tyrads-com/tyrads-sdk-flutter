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
    this.isLoading = false,
  }) : super(key: key);

  final Function()? onTap;
  final String label;
  final Color? color;
  final double? borderRadius;
  final TextStyle? labelStyle;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 4)),
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
                child: Row(
                  children: [
                    if (isLoading) ...[
                      const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.2,
                          color: Color(0xffa3a9b6),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                    ],
                    Text(
                      label,
                      style: labelStyle ??
                          const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
