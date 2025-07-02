import 'package:flutter/material.dart';
import '../../../../gen/assets.gen.dart';

class AcmoChipOfferType extends StatelessWidget {
  const AcmoChipOfferType(this.type, {Key? key, this.fontSize = 8})
      : super(key: key);
  final String type;
  final Color color = const Color.fromARGB(255, 228, 247, 255);
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    if (type.isEmpty) return Container();
    return Chip(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
        padding: EdgeInsets.zero,
        labelPadding:
            const EdgeInsets.only(top: -5, bottom: -5, left: -5, right: 8),
        backgroundColor: color,
        avatar: Assets.images.fire.image(width: fontSize, height: fontSize),
        label: Text(
          type,
          style: TextStyle(
              color: Colors.black,
              fontSize: fontSize,
              fontWeight: FontWeight.w600),
        ));
  }
}
