import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_network/image_network.dart';
import 'package:numeral/numeral.dart';
import 'package:tyrads_sdk/src/acmo/core/components/button_3.dart';
import 'package:tyrads_sdk/src/acmo/core/extensions/double.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/colors.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/page.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/page_web.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/models/offers.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/new_offerwall/models/currency_sale_model.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/new_offerwall/widgets/card_container.dart';
import 'package:tyrads_sdk/src/app_config.dart';
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
  });

  final AcmoOffersModel item;
  final void Function()? onButtonClick;
  final AcmoOfferCurrencySaleModel currencySaleModel;
  final double itemScaleFactor;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    // Cache MediaQuery to avoid multiple calls during layout
    final mediaQuery = MediaQuery.of(context);
    final itemHeight = mediaQuery.size.width / itemScaleFactor;
    final totalHeight = itemHeight + 112;

    return SizedBox(
      height: totalHeight,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Triangle decoration
          if (currencySaleModel.data?.currencySales != null)
            Positioned(
              top: 63,
              left: 8,
              child: CustomPaint(
                painter: TrianglePainter(
                  color: acmoGetDarkerShade(
                    Tyrads.instance.colorPremium ?? AcmoConfig.SECONDARY_COLOR,
                  ),
                ),
                size: const Size(20, 40),
              ),
            ),

          // Main card container
          CardContainer(
            margin: margin ?? const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
            borderRadius: 16.0,
            height: totalHeight,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Stack(
                  children: [
                    // Image section
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                        child: SizedBox(
                          height: itemHeight,
                          child: ImageNetwork(
                            image: item.creative.creativePacks.firstOrNull
                                ?.creatives.firstOrNull?.fileUrl ?? '',
                            width: constraints.maxWidth,
                            height: itemHeight,
                          ),
                        ),
                      ),
                    ),

                    // Bottom content section
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
                              leading: SizedBox(
                                width: 38,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: ImageNetwork(
                                    image: item.app.thumbnail,
                                    width: 38,
                                    height: 38,
                                  ),
                                ),
                              ),
                              title: Text(
                                item.app.title,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
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
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      if (currencySaleModel.data?.currencySales != null)
                                        Text(
                                          item.campaignPayout
                                              .totalPlayablePayoutConverted
                                              .numeral(digits: 2),
                                          style: GoogleFonts.poppins(
                                            color: const Color(0xFF454646),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12,
                                            textStyle: const TextStyle(
                                              decoration: TextDecoration.lineThrough,
                                              decorationColor: Color(0xFF454646),
                                            ),
                                          ),
                                        ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          ImageNetwork(
                                            image: item.currency.adUnitCurrencyIcon,
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
                                    onTap: () {
                                      if (kIsWeb) {
                                        Tyrads.instance.to(AcmoOfferDetailsPageWeb(
                                          id: item.campaignId,
                                        ));
                                      } else {
                                        Tyrads.instance.to(AcmoOfferDetailsPage(
                                          id: item.campaignId,
                                        ));
                                      }
                                    },
                                    child: Assets.images.infoIcon.image(
                                      width: 16.0,
                                      height: 16.0,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16.0, 4.5, 16.0, 12.0),
                              child: SizedBox(
                                width: double.maxFinite,
                                height: 42,
                                child: AcmoButton_3(
                                  onTap: onButtonClick,
                                  borderRadius: 8.0,
                                  label: t.offers.offersCta,
                                  labelStyle: GoogleFonts.poppins(
                                    color: Tyrads.instance.colorPremiumFg ?? Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                  color: currencySaleModel.data?.currencySales != null
                                      ? (Tyrads.instance.colorPremium ?? AcmoConfig.SECONDARY_COLOR)
                                      : null,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),

          // Bonus badge
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
                  color: Tyrads.instance.colorPremium ?? AcmoConfig.SECONDARY_COLOR,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      offset: const Offset(0, 8),
                      color: Colors.black.withOpacity(0.3),
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
                      fontStyle: FontStyle.italic,
                      fontSize: 12,
                      color: Tyrads.instance.colorPremiumFg ?? Colors.white,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
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