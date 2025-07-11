import 'package:cached_network_image/cached_network_image.dart'
    show CachedNetworkImage;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;
import 'package:numeral/numeral.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/models/offer_details.dart'
    show MicroChargeEvents;
import 'package:tyrads_sdk/src/gen/assets.gen.dart' show Assets;

class DailyRewardsSection extends StatelessWidget {
  const DailyRewardsSection({
    super.key,
    required this.dailyRewards,
    required this.currencyUrl,
  });

  final List<MicroChargeEvents> dailyRewards;
  final String currencyUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Daily Rewards',
          style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 16),
        const Divider(
          height: 1,
          thickness: 1,
          color: Color(0xFFE0E2E7),
        ),
        const SizedBox(height: 16),
        ...List.generate(
          dailyRewards.length,
          (index) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildDailyRewardItem(context, item: dailyRewards[index]),
                if (index != dailyRewards.length - 1)
                  const SizedBox(height: 16),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _buildDailyRewardItem(BuildContext context,
      {required MicroChargeEvents item}) {
    final color = item.dailyCount == item.dailyLimit
        ? const Color(0xFFA3A9B6)
        : Theme.of(context).colorScheme.secondary;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 12,
          children: [
            Flexible(
              child: Text(
                item.eventName,
                style: GoogleFonts.poppins(
                  color: const Color(0xFF1E2020),
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ),
            item.limit != 0
                ? Text(
                    "Total Limit: ${item.count}/${item.limit}",
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF667085),
                      fontSize: 10,
                    ),
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Total Limit: ",
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF667085),
                          fontSize: 10,
                        ),
                      ),
                      Assets.icons.infinity.image(
                        width: 13,
                        color: const Color(0xFF667085),
                      ),
                    ],
                  ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 8,
          ),
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
          decoration: BoxDecoration(
            color: item.dailyCount == item.dailyLimit
                ? const Color(0xFFE0E2E7)
                : null,
            borderRadius: BorderRadius.circular(8),
            border: item.dailyCount == item.dailyLimit
                ? null
                : Border.all(color: color, width: 2),
          ),
          child: Row(
            children: [
              item.eventName.toLowerCase().contains('purchase')
                  ? Assets.icons.shoppingCart.image(
                      color: color,
                      height: 19,
                    )
                  : Assets.icons.clapperPlay.image(
                      color: color,
                      height: 19,
                    ),
              const SizedBox(width: 8),
              CachedNetworkImage(
                imageUrl: currencyUrl,
                height: 14,
              ),
              const SizedBox(width: 8),
              Text(
                "${item.payoutAmountConverted.numeral(digits: 2)} Bonus",
                style: GoogleFonts.poppins(
                  color: color,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              const Spacer(),
              item.dailyLimit != 0
                  ? Text(
                      "(${item.dailyCount}/${item.dailyLimit})",
                      style: GoogleFonts.poppins(
                        color: color,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    )
                  : Assets.icons.infinity.image(
                      color: color,
                      width: 15,
                    ),
            ],
          ),
        ),
      ],
    );
  }
}
