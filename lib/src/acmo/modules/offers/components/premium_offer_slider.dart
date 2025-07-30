import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyrads_sdk/src/acmo/core/components/custom_slider.dart';
import 'package:tyrads_sdk/src/acmo/core/components/overlay_loading.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/page.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/controller.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/new_offerwall/widgets/new_offerwall_item.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoPremiumOfferSlider extends StatelessWidget {
  const AcmoPremiumOfferSlider({
    super.key,
    required this.itemHeight,
    required AcmoOffersController controller,
  }) : _controller = controller;

  final double itemHeight;
  final AcmoOffersController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 12,
      ),
      color: Tyrads.instance.colorPremium,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16)
                .copyWith(
              top: 16,
            ),
            child: Row(
              spacing: 10,
              children: [
                Assets.icons.diamond.image(
                  height: 12,
                  color: Tyrads.instance.colorPremiumFg,
                ),
                Text(
                  "Premium Offers",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Tyrads.instance.colorPremiumFg,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: itemHeight + 80,
            child: AcmoCarouselSlider(
              itemCount: _controller.hotOffers.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Tyrads.instance.to(AcmoOfferDetailsPage(
                    id: _controller.hotOffers[index].campaignId,
                  ));
                },
                child: AcmoNewOfferWallItem(
                  itemScaleFactor: 2.8,
                  currencySaleModel: _controller.currencySales,
                  item: _controller.hotOffers[index],
                  width: double.maxFinite,
                  margin: EdgeInsets.zero,
                  onButtonClick: () async {
                    final e = _controller.hotOffers[index];
                    Loading.open();
                    await _controller.openOffer(
                      clickUrl: e.tracking.clickUrl,
                      s2sClickUrl: e.tracking.s2sClickUrl,
                      isRetryDownload: e.isRetryDownload,
                      isInstalled: e.isInstalled,
                      previewUrl: e.app.previewUrl,
                      campaignId: e.campaignId,
                    );
                    Loading.dismiss();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
