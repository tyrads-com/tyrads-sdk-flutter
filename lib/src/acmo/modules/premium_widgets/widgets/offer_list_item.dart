import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numeral/numeral.dart';
import 'package:tyrads_sdk/src/acmo/modules/premium_widgets/models/currency_sale_model/currency_sale_model.dart';
import 'package:tyrads_sdk/src/acmo/modules/premium_widgets/models/offers_model/offers.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoOfferListItem extends StatelessWidget {
  const AcmoOfferListItem({
    super.key,
    required this.e,
    required this.currencySales,
    required this.onButtonTap,
    required this.index,
    required this.isLoading,
  });

  final AcmoOffersModel e;
  final CurrencySales? currencySales;
  final Future<void> Function() onButtonTap;
  final int index;
  final ValueNotifier<bool> isLoading;

  @override
  Widget build(BuildContext context) {
    final rankAssets = [
      Assets.icons.rank1,
      Assets.icons.rank2,
      Assets.icons.rank3,
      Assets.icons.rank4,
      Assets.icons.rank5,
    ];
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ValueListenableBuilder(
            valueListenable: isLoading,
            builder: (context, loading, child) {
              return ListTile(
                onTap: loading ? null : () => Tyrads.instance.showOffers(
                  context,
                  route: 'offers/${e.campaignId}',
                  launchMode: Tyrads.instance.launchMode,
                ),
                focusColor: Colors.grey.shade100,
                contentPadding: EdgeInsets.zero,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: CachedNetworkImage(
                    imageUrl: e.app.thumbnail,
                    width: 54,
                  ),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 2,
                  children: [
                    if (currencySales != null)
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                          color: Tyrads.instance.colorPremium
                              ?.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Text(
                          '${currencySales?.multiplier}x BONUS',
                          style: GoogleFonts.poppins(
                            color: Tyrads.instance.colorPremium,
                            fontWeight: FontWeight.w700,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    Text(
                      e.app.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                subtitle: Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 10,
                  children: [
                    if (currencySales != null)
                      Text(
                        e.campaignPayout.totalPlayablePayoutConverted
                            .numeral(digits: 2),
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF323434),
                          decoration: TextDecoration.lineThrough,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          height: 14 / 10,
                        ),
                      ),
                    CachedNetworkImage(
                      imageUrl: e.currency.adUnitCurrencyIcon,
                      width: 14,
                    ),
                    Text(
                      (e.campaignPayout.totalPlayablePayoutConverted *
                              (currencySales?.multiplier ?? 1))
                          .numeral(digits: 2),
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                trailing: InkWell(
                  child: ElevatedButton(
                    onPressed: loading
                        ? null
                        : () async {
                            isLoading.value = true;
                            await onButtonTap();
                            isLoading.value = false;
                          },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(75, 42),
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor: loading
                          ? const Color(0xFFe0e2e7)
                          : Tyrads.instance.colorPremium ??
                              Theme.of(context).colorScheme.secondary,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (loading) ...[
                          const SizedBox(
                            width: 16,
                            height: 16,
                            child: CircularProgressIndicator(
                              strokeWidth: 2.2,
                              color: Color(0xffa3a9b6),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                        ],
                        Text(
                          'Play',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: loading
                                ? const Color(0xffa3a9b6)
                                : Tyrads.instance.colorPremiumFg ??
                                    Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
        Positioned(
          left: -10,
          top: 3,
          child: rankAssets[index].image(
            width: 24,
          ),
        ),
      ],
    );
  }
}
