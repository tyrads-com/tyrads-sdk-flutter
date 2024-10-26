import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:numeral/numeral.dart';
import 'package:tyrads_sdk/src/acmo/core/components/button_3.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/widgets/countdown.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/models/offers.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'chip_category.dart';
import 'chip_channel.dart';

class AcmoComponentOfferItemCard extends StatelessWidget {
  const AcmoComponentOfferItemCard({
    super.key,
    required this.item,
  });

  final AcmoOffersModel item;

  @override
  Widget build(BuildContext context) {
    var itemHeight = (MediaQuery.of(context).size.width - 16) / 1.91;
    return SizedBox(
      height: itemHeight,
      child: Stack(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Stack(
                children: [
                  CachedNetworkImage(
                    imageUrl: item.creative.creativePacks.firstOrNull?.creatives
                            .firstOrNull?.fileUrl ??
                        '',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: itemHeight,
                  ),
                  // Align(
                  //   alignment: Alignment.bottomCenter,
                  //   child: Container (height: 50, color: Colors.black12,)),
                  Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                          Color.fromRGBO(0, 0, 0, 0.75),
                          Color.fromRGBO(0, 0, 0, 0)
                        ])),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (item.expiredOn != null &&
                   (( item.expiredOn!.millisecondsSinceEpoch -
                                  DateTime.now().millisecondsSinceEpoch) > 0))
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    child: Container(
                        height: 20,
                        width: 125,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(241, 124, 15, 1),
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Ending in ',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            AcmoComponentCountdown(
                              seconds:(item.expiredOn!.millisecondsSinceEpoch -
                                  DateTime.now().millisecondsSinceEpoch)~/1000,
                              style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        )),
                  )
                else
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 16),
                    child: Row(
                      children: [
                        // AcmoChipOfferType(item.targeting.targetingType),
                        // const SizedBox(
                        //   width: 2,
                        // ),
                        AcmoChipOfferCategory(item.app.storeCategory),
                        const SizedBox(
                          width: 2,
                        ),
                        AcmoChipOfferChannel(
                            item.targeting.reward?.rewardDifficulty ?? ""),
                        const Spacer(),
                        if(item.hasPlaytimeEvents)
                        Container(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFB527),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 4),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Assets.images.playtimeIcon
                                    .image(height: 11, width: 11),
                                const SizedBox(width: 2),
                                const Text("Playtime", style: TextStyle(fontSize: 8)),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                const Spacer(),
                ListTile(
                  visualDensity: VisualDensity.compact,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: -8, horizontal: 9),
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 9, right: 0, top: 8),
                    child: SizedBox.square(
                      dimension: 36,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        child: CachedNetworkImage(
                          imageUrl: item.app.thumbnail,
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    item.app.title,
                    maxLines: 1,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                  subtitle: SizedBox(
                    width: 120,
                    height: 16,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      alignment: Alignment.centerLeft,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CachedNetworkImage(
                              imageUrl: item.currency.adUnitCurrencyIcon,
                              width: 16,
                              height: 16),
                          const SizedBox(
                            width: 1,
                          ),
                          Text(
                            item.campaignPayout.totalPayoutConverted
                                .numeral(digits: 2),
                            style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            item.currency.adUnitCurrencyName,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 10),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            "${item.campaignPayout.totalEvents} ${item.campaignPayout.totalEvents == 1 ? "Reward" : "Rewards"}",
                            style: const TextStyle(
                                fontSize: 8,
                                color: Colors.white70,
                                fontStyle: FontStyle.italic),
                          )
                        ],
                      ),
                    ),
                  ),
                  trailing: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                        width: 74,
                        height: 31,
                        child: AcmoButton_3(
                          label: "Play Now",
                          onTap: null,
                        )),
                  ),
                ),
                const SizedBox(
                  height: 4,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
