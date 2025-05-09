import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyrads_sdk/src/acmo/core/extensions/double.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/colors.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/controller.dart';
import 'package:tyrads_sdk/src/app_config.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoOfferBonusBanner extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final AcmoOffersController controller;

  AcmoOfferBonusBanner({
    required this.minHeight,
    required this.maxHeight,
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
      child: (controller.currencySales.data?.currencySales?.bannerUrl != null && 
              controller.currencySales.data?.currencySales?.bannerUrl != "")
          ? SizedBox(
              height: remainingHeight > 0 ? remainingHeight : 0,
              child: Stack(
                children: [
                  CachedNetworkImage(
                    imageUrl:
                        controller.currencySales.data!.currencySales!.bannerUrl!,
                    fit: BoxFit.cover,
                    width: double.maxFinite,
                    height: maxHeight - 50,
                  ),
                  BonusBottomHeader(
                    shrinkOffset: shrinkOffset,
                    multiplier:
                        "${controller.currencySales.data?.currencySales?.multiplier}x",
                  ),
                ],
              ),
            )
          : Container(
              height: remainingHeight > 0 ? remainingHeight : 0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Tyrads.instance.colorPremium ?? AcmoConfig.SECONDARY_COLOR,
                    acmoGetDarkerShade(Tyrads.instance.colorPremium ??
                        AcmoConfig.SECONDARY_COLOR),
                  ],
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: const Alignment(0.0, -0.3),
                    child: Stack(
                      children: [
                        Assets.images.lighteningBg.image(
                          width: double.maxFinite,
                          opacity: const AlwaysStoppedAnimation(0.13),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Assets.images.giftBox.image(height: 100),
                                Text(
                                  "${controller.currencySales.data?.currencySales?.multiplier?.formatDouble()}x".toUpperCase(),
                                  style: GoogleFonts.protestStrike(
                                    fontSize: 50.0,
                                    letterSpacing: 2.0,
                                    color: const Color(0xFFFFCF15),
                                    shadows: const [
                                      Shadow(
                                        offset: Offset(0.0, 4.0),
                                        blurRadius: 4.0,
                                        color: Color(0xFFAF7900),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 14,
                            ),
                            Text(
                              "bonus\nrewards".toUpperCase(),
                              style: GoogleFonts.protestStrike(
                                fontSize: 40.0,
                                letterSpacing: 2.5,
                                height: 1.1,
                                color:
                                    Tyrads.instance.colorPremiumFg ?? Colors.white,
                                shadows: [
                                  Shadow(
                                    offset: const Offset(0.0, 4.0),
                                    blurRadius: 4.0,
                                    color: Colors.black.withOpacity(0.25),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  BonusBottomHeader(
                    shrinkOffset: shrinkOffset,
                    multiplier:
                        "${controller.currencySales.data?.currencySales?.multiplier?.formatDouble()}x",
                  ),
                ],
              ),
            ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}

class BonusBottomHeader extends StatelessWidget {
  const BonusBottomHeader({
    super.key,
    required this.shrinkOffset,
    required this.multiplier,
  });

  final double shrinkOffset;
  final String multiplier;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          decoration: BoxDecoration(
            color: Tyrads.instance.colorPremium ?? AcmoConfig.SECONDARY_COLOR,
          ),
          padding: EdgeInsets.symmetric(
            vertical: (8 * shrinkOffset).clamp(0.0, 8.0),
          ),
          child: Container(
            height: 55,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        "BOO",
                        style: GoogleFonts.protestStrike(
                          fontSize: 40.0,
                          letterSpacing: 3,
                          color: const Color(0xFFFFCF15),
                          shadows: const [
                            Shadow(
                              offset: Offset(0.0, 4.0),
                              blurRadius: 4.0,
                              color: Color(0xFFAF7900),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: const Alignment(0.0, 0.3),
                        child: Assets.images.lightening.image(
                          height: 32,
                          color: const Color(0xFFFFCF15),
                        ),
                      ),
                      Text(
                        "T",
                        style: GoogleFonts.protestStrike(
                          color: const Color(0xFFFFCF15),
                          fontSize: 40.0,
                          shadows: const [
                            Shadow(
                              offset: Offset(0.0, 4.0),
                              blurRadius: 4.0,
                              color: Color(0xFFAF7900),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "YOUR EARNINGS\n$multiplier BONUS ACTIVE!",
                    style: GoogleFonts.ptSans(
                      color: Tyrads.instance.colorPremiumFg ?? Colors.white,
                      fontSize: 14.0,
                      letterSpacing: 1.3,
                      fontWeight: FontWeight.w900,
                      shadows: [
                        Shadow(
                          offset: const Offset(0.0, 4.0),
                          blurRadius: 4.0,
                          color: Colors.black.withOpacity(0.25),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
