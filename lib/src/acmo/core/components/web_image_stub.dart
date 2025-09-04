import 'package:flutter/material.dart';

class AcmoWebImage extends StatefulWidget {
  const AcmoWebImage({
    super.key,
    required this.url,
    this.width,
    this.height,
    this.fit,
  });

  final String url;
  final double? width;
  final double? height;
  final BoxFit? fit;

  @override
  State<AcmoWebImage> createState() => _AcmoWebImageState();
}

class _AcmoWebImageState extends State<AcmoWebImage> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}