import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';

class AcmoLoadingCoins extends StatelessWidget {
  const AcmoLoadingCoins({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Assets.images.loadingCoins.image(
        height: 80,
      ),
    );
  }
}
