import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/extentions.dart';

class AcmoChipOfferChannel extends StatelessWidget {
  const AcmoChipOfferChannel(this.channel, {Key? key, this.fontSize = 8})
      : super(key: key);
  final String channel;

  final double fontSize;
  @override
  Widget build(BuildContext context) {
    late MaterialColor color;
    if (channel.isEmpty) return Container();
    if (channel.toLowerCase() == 'easy') {
      color = Colors.green;
    } else if (channel.toLowerCase() == 'medium') {
      color = Colors.orange;
    } else if (channel.toLowerCase() == 'hard') {
      color = Colors.red;
    } else {
      color = Colors.green;
    }

    return Chip(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
        padding: EdgeInsets.zero,
        labelPadding: const EdgeInsets.symmetric(vertical: -5, horizontal: 8),
        backgroundColor: color.shade100,
        label: Text(
          channel.toCapitalized(),
          style: TextStyle(
              color: Colors.black,
              fontSize: fontSize,
              fontWeight: FontWeight.w600),
        ));
  }
}
