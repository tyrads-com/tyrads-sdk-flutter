import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';
import 'package:numeral/numeral.dart';
import 'package:tyrads_sdk/src/acmo/modules/dashboard/widgets/play_button.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/models/offers.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoOfferListItem extends StatelessWidget {
  const AcmoOfferListItem({
    super.key,
    required this.e,
    required this.index,
  });

  final AcmoOffersModel e;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Tyrads.instance.showOffers(
        context,
        campaignID: e.campaignId,
        route: TyradsDeepRoutes.CAMPAIGN_DETAILS,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Leading Image
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: ImageNetwork(
                image: e.app.thumbnail,
                height: 38,
                width: 38,
               ),
            ),
            const SizedBox(width: 12),
            // Title and Subtitle
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    e.app.title,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  // Subtitle Row
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4, vertical: 2),
                        decoration: BoxDecoration(
                          color: Tyrads.instance.colorPremium,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          t.dashboard.topRanking(number: index + 1),
                          style: TextStyle(
                            fontSize: 10,
                            color: Tyrads.instance.colorPremiumFg,
                          ),
                        ),
                      ),
                      const SizedBox(width: 4),
                      // Currency Icon
                      ImageNetwork(
                        width: 12,
                        height: 12,
                        image: e.currency.adUnitCurrencyIcon,
                      ),
                      const SizedBox(width: 4),
                      // Payout Text
                      Text(
                        "${e.campaignPayout.totalPayoutConverted.numeral(digits: 2)} ${e.currency.adUnitCurrencyName}",
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Trailing Button
            // Replace the existing TextButton with CustomButton
            PlayButton(
              text: t.offers.offersCta,
              onTap: () => Tyrads.instance.showOffers(
                context,
                campaignID: e.campaignId,
                route: TyradsDeepRoutes.CAMPAIGN_DETAILS,
              ),
              backgroundColor: Tyrads.instance.colorPremium,
              textStyle: TextStyle(
                color: Tyrads.instance.colorPremiumFg,
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
