import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numeral/numeral.dart';
import 'package:tyrads_sdk/src/acmo/core/components/button_3.dart';
import 'package:tyrads_sdk/src/acmo/core/extensions/double.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/colors.dart';
import 'package:tyrads_sdk/src/acmo/modules/premium_widgets/models/currency_sale_model/currency_sale_model.dart';
import 'package:tyrads_sdk/src/acmo/modules/premium_widgets/widgets/card_container.dart';
import 'package:tyrads_sdk/src/acmo/modules/premium_widgets/models/offers_model/offers.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoNewOfferWallItem extends StatelessWidget {
  const AcmoNewOfferWallItem({
    super.key,
    required this.item,
    required this.onButtonClick,
    required this.currencySaleModel,
    this.itemScaleFactor = 1.93,
    this.margin,
    this.isPremiumWidget = false,
    this.onTap,
    required this.isLoading,
  });

  final AcmoOffersModel item;
  final Future<void> Function() onButtonClick;
  final AcmoOfferCurrencySaleModel currencySaleModel;
  final double itemScaleFactor;
  final EdgeInsetsGeometry? margin;
  final bool isPremiumWidget;
  final Future<void> Function()? onTap;
  final ValueNotifier<bool> isLoading;

  @override
  Widget build(BuildContext context) {
    var itemHeight = (MediaQuery.of(context).size.width) / itemScaleFactor;
    return ValueListenableBuilder(
        valueListenable: isLoading,
        builder: (context, loading, child) {
          return GestureDetector(
            onTap: loading ? null : onTap,
            child: Stack(
              children: [
                if (currencySaleModel.data?.currencySales != null)
                  Positioned(
                    top: 63,
                    left: 8,
                    child: CustomPaint(
                      painter: TrianglePainter(
                          color: acmoGetDarkerShade(
                              Tyrads.instance.colorPremium ??
                                  Theme.of(context).colorScheme.secondary)),
                      size: const Size(20, 40),
                    ),
                  ),
                CardContainer(
                  margin: margin ??
                      const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                  borderRadius: 16.0,
                  height: itemHeight + 112,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                        child: Stack(
                          children: [
                            CachedNetworkImage(
                              imageUrl: item.creative.creativePacks.firstOrNull
                                      ?.creatives.firstOrNull?.fileUrl ??
                                  '',
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: itemHeight,
                            ),
                            if (item.premium)
                              Positioned(
                                right: 16,
                                top: 16,
                                child: Container(
                                  width: 28,
                                  height: 28,
                                  decoration: BoxDecoration(
                                    color: const Color(0xD91E2020),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Assets.icons.diamond.image(
                                      width: 12,
                                      height: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: itemHeight - 16,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: CardContainer(
                          borderRadius: 16.0,
                          height: 128,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ListTile(
                                visualDensity: VisualDensity.compact,
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                  vertical: 5.0,
                                ),
                                leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: CachedNetworkImage(
                                    imageUrl: item.app.thumbnail,
                                    width: 38,
                                    height: 38,
                                  ),
                                ),
                                title: Text(
                                  item.app.title,
                                  maxLines: 2,
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    height: 18 / 14,
                                  ),
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        if (currencySaleModel
                                                .data?.currencySales !=
                                            null)
                                          Text(
                                            item.campaignPayout
                                                .totalPlayablePayoutConverted
                                                .numeral(digits: 2),
                                            style: GoogleFonts.poppins(
                                                color: const Color(0xFF454646),
                                                fontWeight: FontWeight.w300,
                                                fontSize: 12,
                                                textStyle: const TextStyle(
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  decorationColor:
                                                      Color(0xFF454646),
                                                )),
                                          ),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CachedNetworkImage(
                                              imageUrl: item
                                                  .currency.adUnitCurrencyIcon,
                                              width: 16,
                                              height: 16,
                                            ),
                                            Text(
                                              " ${(item.campaignPayout.totalPlayablePayoutConverted * (currencySaleModel.data?.currencySales?.multiplier ?? 1)).numeral(digits: 2)}",
                                              style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14,
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(width: 15.0),
                                    InkWell(
                                      onTap: loading ? null : onTap ?? () {},
                                      child: Assets.images.infoIcon.image(
                                        width: 16.0,
                                        height: 16.0,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    16.0, 4.5, 16.0, 12.0),
                                child: SizedBox(
                                  width: double.maxFinite,
                                  height: 42,
                                  child: AcmoButton_3(
                                    onTap: loading
                                        ? null
                                        : () async {
                                            isLoading.value = true;
                                            await onButtonClick();
                                            isLoading.value = false;
                                          },
                                    borderRadius: 8.0,
                                    isLoading: loading,
                                    label: t.offers.offersCta,
                                    labelStyle: GoogleFonts.poppins(
                                      color: loading
                                          ? const Color(0xffa3a9b6)
                                          : Tyrads.instance.colorPremiumFg ??
                                              Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                    color: loading
                                        ? const Color(0xFFe0e2e7)
                                        : currencySaleModel
                                                        .data?.currencySales !=
                                                    null ||
                                                isPremiumWidget
                                            ? (Tyrads.instance.colorPremium ??
                                                Theme.of(context)
                                                    .colorScheme
                                                    .secondary)
                                            : null,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                if (currencySaleModel.data?.currencySales != null)
                  Positioned(
                    top: 32,
                    left: 8,
                    child: Container(
                      height: 31.0,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        // gradient: LinearGradient(
                        //   begin: Alignment.topLeft,
                        //   end: Alignment.bottomRight,
                        //   colors: [
                        //     Tyrads.instance.colorPremium ??
                        //         Theme.of(context).colorScheme.secondary,
                        //     Colors.white,
                        //   ],
                        //   stops: const [0.4119, 1.8138],
                        //   transform: const GradientRotation(238.17 * (3.1415926 / 180)),
                        // ),
                        color: Tyrads.instance.colorPremium ??
                            Theme.of(context).colorScheme.secondary,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            offset: const Offset(0, 8),
                            color: Colors.black.withValues(alpha: 0.3),
                          )
                        ],
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(100),
                          topLeft: Radius.circular(50),
                          bottomRight: Radius.circular(100),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "${currencySaleModel.data?.currencySales?.multiplier?.formatDouble()}x Bonus",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color:
                                Tyrads.instance.colorPremiumFg ?? Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          );
        });
  }
}

class TrianglePainter extends CustomPainter {
  final Color color;

  TrianglePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate is TrianglePainter && oldDelegate.color != color;
  }
}
