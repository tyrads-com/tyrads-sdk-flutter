import 'package:flutter/material.dart';

class AcmoChipRegular extends StatelessWidget {
  const AcmoChipRegular(this.type, {Key? key, this.fontSize = 8})
      : super(key: key);
  final String type;
  final Color color = const Color(0xFFE6E6E6);
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    if (type.isEmpty) return Container();
    return Chip(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
        padding: EdgeInsets.zero,
        labelPadding:
            const EdgeInsets.only(top: -5, bottom: -5, left: 8, right: 8),
        backgroundColor: color,
        label: Text(
          type,
          style: TextStyle(
              color: Colors.black,
              fontSize: fontSize,
              fontWeight: FontWeight.w600),
        ));
  }
}
