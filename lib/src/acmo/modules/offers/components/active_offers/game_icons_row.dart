import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_network/image_network.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/models/active_offers/active_offers.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class GameIconsRow extends StatelessWidget {
  const GameIconsRow({
    super.key,
    required this.campaigns,
    required this.selectedCampaign,
    required this.onIconTap,
  });

  final List<ActiveCampaign> campaigns;
  final ActiveCampaign? selectedCampaign;
  final Function(ActiveCampaign) onIconTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(
            16,
            18,
            8,
            8,
          ),
          child: GestureDetector(
            onTap: () {
              Tyrads.instance.back();
            },
            child: Assets.icons.addNew.image(
              width: 56,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                8,
                18,
                16,
                8,
              ),
              child: Row(
                spacing: 16,
                children: [
                  ...List.generate(
                    campaigns.length,
                    (index) => GestureDetector(
                      onTap: () {
                        onIconTap(campaigns[index]);
                      },
                      child: _buildGameIcon(
                        context,
                        item: campaigns[index],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildGameIcon(
    BuildContext context, {
    required ActiveCampaign item,
  }) {
    final showWarningIcon = (!item.isInstalled && !item.isRetryDownload) ||
        item.capReached ||
        (item.isRetryDownload && !item.isInstalled) ||
        (item.isOldUser && !item.isInstalled) ||
        (item.status.toLowerCase() == "paused" && item.expiredOn == null) ||
        item.status.toLowerCase() == "suspended";

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: ImageNetwork(
                image: item.app.thumbnail,
                width: 56,
                height: 56,
              ),
            ),
            Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: selectedCampaign?.campaignId == item.campaignId
                      ? Theme.of(context).colorScheme.secondary
                      : Colors.transparent,
                  width: 4,
                ),
              ),
            )
          ],
        ),
        Positioned(
          right: -6,
          top: -6,
          child: showWarningIcon
              ? Assets.icons.exclamation.image(width: 18)
              : item.campaignEventSummary.playableEventCountAvailable > 0
                  ? Container(
                      width: 18,
                      height: 18,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFF554A),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          item.campaignEventSummary.playableEventCountAvailable
                              .toString(),
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
        )
      ],
    );
  }
}
