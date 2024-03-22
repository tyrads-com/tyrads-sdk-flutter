import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/models/offers.dart';

import '../../../../gen/assets.gen.dart';
import 'chip_category.dart';
import 'chip_channel.dart';
import 'chip_offer_type.dart';

class AcmoComponentOfferItemTile extends StatelessWidget {
  const AcmoComponentOfferItemTile({
    Key? key,
    required this.item,
  }) : super(key: key);

  final AcmoOffersModel item;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: (item.targeting.targetingType.toLowerCase() == 'super hot')
          ? const Color.fromARGB(255, 255, 252, 225)
          : null,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: -8, horizontal: 8),
        leading: SizedBox.square(
          dimension: 48,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            child: CachedNetworkImage(
              imageUrl: item.app.thumbnail,
            ),
          ),
        ),
        title: Text(
          item.app.title,
          maxLines: 1,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              AcmoChipOfferType(item.targeting.targetingType),
              const SizedBox(
                width: 2,
              ),
              AcmoChipOfferCategory(
                  item.targeting.reward?.rewardDifficulty ?? ''),
              const SizedBox(
                width: 2,
              ),
              AcmoChipOfferChannel(item.app.storeCategory)
            ],
          ),
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              width: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Assets.images.tPoints.image(width: 16, height: 16),
                  Text(
                    item.campaignPayout.totalPayout.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                ],
              ),
            ),
            const Text(
              "TPoints",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 10),
            ),
            Text(
              "${item.campaignPayout.totalEvents} ${item.campaignPayout.totalEvents == 1 ? "Reward" : "Rewards"}",
              style: const TextStyle(fontSize: 8, fontStyle: FontStyle.italic),
            )
          ],
        ),
      ),
    );
  }
}
