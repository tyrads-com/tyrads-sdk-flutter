import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';

class AcmoLoadingCoins extends StatelessWidget {
  const AcmoLoadingCoins({super.key, this.height,});
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Assets.images.loadingCoins.image(
        height: height ?? 80,
      ),
    );
  }
}
