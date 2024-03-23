import 'package:flutter/material.dart';

class AcmoChipOfferCategory extends StatelessWidget {
  const AcmoChipOfferCategory(
    this.category, {
    Key? key,
  }) : super(key: key);
  final String category;
  final Color color = const Color.fromARGB(255, 223, 224, 255);
  @override
  Widget build(BuildContext context) {
    if (category.isEmpty) return Container();
    return Chip(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
        padding: EdgeInsets.zero,
        labelPadding: const EdgeInsets.symmetric(vertical: -5, horizontal: 8),
        backgroundColor: color,
        label: Text(
          category,
          style: const TextStyle(
              color: Colors.black, fontSize: 8, fontWeight: FontWeight.w600),
        ));
  }
}
