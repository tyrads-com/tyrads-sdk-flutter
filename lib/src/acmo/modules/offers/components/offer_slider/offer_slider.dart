import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/controller.dart';

import 'body.dart';

class AcmoOfferSlider extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final bool openPlayStore;
  final AcmoOffersController controller;

  AcmoOfferSlider({
    required this.minHeight,
    required this.maxHeight,
    this.openPlayStore = false,
    required this.controller,
  });

  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final double remainingHeight = maxExtent - (minExtent - 16) - shrinkOffset;

    return SizedBox(
        height: maxExtent,
        child: AcmoOfferSliderBody(
          controller: controller,
          height: remainingHeight > 0 ? remainingHeight : 0,
          shrinkOffset: shrinkOffset,
          openPlayStore: openPlayStore,
        ));
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
