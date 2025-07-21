import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numeral/numeral.dart';
import 'package:tyrads_sdk/src/acmo/core/components/expires_in.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/models/offer_details.dart'
    show AcmoOfferDetailsModel;
import 'package:tyrads_sdk/src/acmo/modules/offer_details/page.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/components/active_offers/animated_star.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class ActiveOfferTopSection extends StatelessWidget {
  const ActiveOfferTopSection({
    super.key,
    required this.offerDetails,
    required this.tab,
  });

  final AcmoOfferDetailsModel? offerDetails;
  final String tab;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (tab == 'urgent' &&
              offerDetails?.expiredOn != null &&
              offerDetails?.status.toLowerCase() == 'paused')
            AcmoExpiresInWidget(expiredOn: offerDetails?.expiredOn),
          _buildGameInfoSection(),
          _buildOverallEarningsSection(context),
        ],
      ),
    );
  }

  Widget _buildGameInfoSection() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: CachedNetworkImage(
            imageUrl: offerDetails
                    ?.creative.creativePacks.first.creatives?.first?.fileUrl ??
                "",
            width: 134,
            height: 70,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              Text(
                offerDetails?.app.title ?? "",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  height: 14 / 12,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              Row(
                children: [
                  Visibility(
                    visible: offerDetails?.app.rating != null,
                    child: Row(
                      children: [
                        Text(
                          offerDetails?.app.rating?.toInt().toString() ?? "",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                        const AcmoAnimatedStar(
                          size: 13,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  if (offerDetails?.engagementOverride.currencySales != null)
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 2),
                      decoration: BoxDecoration(
                        color: Tyrads.instance.colorPremium
                            ?.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        '${offerDetails?.engagementOverride.currencySales?.multiplier}x BONUS',
                        style: GoogleFonts.poppins(
                          color: Tyrads.instance.colorPremium,
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                        ),
                      ),
                    ),
                ],
              ),
              Row(
                spacing: 4,
                children: [
                  CachedNetworkImage(
                    imageUrl: offerDetails?.currency.adUnitCurrencyIcon ?? "",
                    width: 16,
                    height: 16,
                  ),
                  Text(
                    offerDetails != null
                        ? (offerDetails!.campaignPayout
                                    .totalPlayablePayoutConverted *
                                (offerDetails!.engagementOverride.currencySales
                                        ?.multiplier ??
                                    1))
                            .numeral(digits: 2)
                        : "",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        height: 14 / 18),
                  ),
                  if (offerDetails?.engagementOverride.currencySales != null)
                    Text(
                      offerDetails != null
                          ? offerDetails!
                              .campaignPayout.totalPlayablePayoutConverted
                              .numeral(digits: 2)
                          : "",
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF323434),
                        decoration: TextDecoration.lineThrough,
                        fontSize: 10,
                        height: 14 / 10,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildOverallEarningsSection(BuildContext context) {
    if (offerDetails == null) {
      return const SizedBox.shrink();
    }
    final double totalEarnings =
        offerDetails?.earnedPayout.earnedPlayablePayoutConverted ?? 0.0;
    final double totalPossibleEarning =
        offerDetails?.campaignPayout.totalPlayablePayoutConverted ?? 0.0;
    final currencySale = offerDetails?.engagementOverride.currencySales;
    final progressPercentage = offerDetails != null
        ? totalEarnings /
            (totalPossibleEarning == 0
                ? 1
                : (currencySale != null
                    ? ((currencySale.multiplier ?? 1) * totalPossibleEarning)
                    : totalPossibleEarning))
        : 0.0;

    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 4,
        children: [
          Row(
            children: [
              Text(
                'Overall Earnings',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  height: 16 / 12,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => Tyrads.instance.to(
                  AcmoOfferDetailsPage(
                    id: offerDetails!.campaignId,
                  ),
                ),
                child: Assets.images.infoIcon.image(
                  width: 14,
                ),
              )
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: LinearProgressIndicator(
                  value: progressPercentage,
                  minHeight: 18,
                  backgroundColor: const Color(0xFF1E2020),
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 4,
                children: [
                  CachedNetworkImage(
                    imageUrl: offerDetails?.currency.adUnitCurrencyIcon ?? "",
                    width: 12,
                    height: 12,
                  ),
                  Text(
                    '${totalEarnings.numeral(digits: 2)}/${offerDetails?.engagementOverride.currencySales != null ? ((offerDetails!.engagementOverride.currencySales?.multiplier ?? 1) * offerDetails!.campaignPayout.totalPlayablePayoutConverted).numeral(digits: 2) : offerDetails?.campaignPayout.totalPlayablePayoutConverted.numeral(digits: 2)}',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      height: 16 / 12,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
