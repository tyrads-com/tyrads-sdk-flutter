import 'package:flutter/material.dart';

// ignore: camel_case_types
class AcmoButton_3_Wrap extends StatelessWidget {
  const AcmoButton_3_Wrap({
    super.key,
    required this.onTap,
    this.label = "Edit",  this.activeColor = true, this.color, this.width, this.textColor,
  });

  final Function()? onTap;
  final String label;
  final bool activeColor;
  final Color? color;
  final Color? textColor;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          color: color ?? (activeColor ? Theme.of(context).colorScheme.secondary: null ),
        ),
        // onPressed: ()=>callback(),
        child: SizedBox(
          width: width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                label,
                style:  TextStyle(
                    color: textColor ?? Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
