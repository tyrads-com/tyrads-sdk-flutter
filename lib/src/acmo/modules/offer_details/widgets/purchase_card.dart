import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:numeral/numeral.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/models/offer_details.dart';

import '../../../../gen/assets.gen.dart';
import '../../offers/components/custom_progress_bar.dart';
import 'countdown.dart';

class PurchaseCard extends StatelessWidget {
  final bool isSuperCharge;
  final List<PayoutEvents> purchaseEvents;
  final List<PayoutEvents> dailyPurchaseEvents;
  final List<PayoutEvents> duplicateEvents;
  final int maxPoints;
  final int earnedPoints;
  final String currencyIcon;
  final String currencyName;

  const PurchaseCard(
      {Key? key,
      this.isSuperCharge = false,
      required this.purchaseEvents,
      required this.duplicateEvents,
      required this.dailyPurchaseEvents,
      required this.maxPoints,
      required this.earnedPoints,
      required this.currencyIcon,
      required this.currencyName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (purchaseEvents.isEmpty &&
        dailyPurchaseEvents.isEmpty &&
        duplicateEvents.isEmpty) return Container();
    return Center(
      child: SizedBox(
          width: MediaQuery.of(context).size.width / 1.1,
          child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                    left: 16,
                    right: 16,
                  ),
                  child: Row(
                    children: [
                      Visibility(
                        visible: !isSuperCharge,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'MICRO CHARGE',
                              style: TextStyle(
                                  color: Color(0xff26A1C8),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                'you earned: $earnedPoints $currencyName',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17),
                              ),
                            ),
                            Text(
                              'from total $maxPoints $currencyName',
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17),
                            )
                          ],
                        ),
                      ),
                      Visibility(
                        visible: isSuperCharge,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Purchase today to \nSUPER CHARGE',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                'worth 3.2M ',
                                style: TextStyle(
                                    color: Color(0xff9426C8),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Stack(
                        children: [
                          Visibility(
                              visible: !isSuperCharge,
                              child: Assets.images.chargeCan.image(height: 80)),
                          Visibility(
                              visible: isSuperCharge,
                              child: Assets.images.superChargeCan
                                  .image(height: 80)),
                        ],
                      )
                    ],
                  ),
                ),
                Visibility(
                  visible: isSuperCharge,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color(0xff9426C8),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12.0),
                              bottomRight: Radius.circular(12.0))),
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 16),
                            child: Text(
                              'Only available for',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                          Container(
                            width: 17,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6))),
                            child: const Center(
                              child: Text(
                                '4',
                                style: TextStyle(
                                    color: Color(0xff9426C8),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Container(
                            width: 17,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6))),
                            child: const Center(
                              child: Text(
                                '7',
                                style: TextStyle(
                                    color: Color(0xff9426C8),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Text(
                            ':',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Container(
                            width: 17,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6))),
                            child: const Center(
                              child: Text(
                                '5',
                                style: TextStyle(
                                    color: Color(0xff9426C8),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Container(
                            width: 17,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6))),
                            child: const Center(
                              child: Text(
                                '4',
                                style: TextStyle(
                                    color: Color(0xff9426C8),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Text(
                            ':',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Container(
                            width: 17,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6))),
                            child: const Center(
                              child: Text(
                                '5',
                                style: TextStyle(
                                    color: Color(0xff9426C8),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Container(
                            width: 17,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6))),
                            child: const Center(
                              child: Text(
                                '9',
                                style: TextStyle(
                                    color: Color(0xff9426C8),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: !isSuperCharge,
                  child: const Divider(
                    color: Color(0xff26A1C8),
                    thickness: 8,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ...purchaseEvents
                    .map(
                      (e) => Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 64,
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 16,
                                        left: 16,
                                        right: 16,
                                        bottom: 16),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              250,
                                          child: Text(
                                            e.eventName,
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12),
                                          ),
                                        ),
                                        const Spacer(),
                                        CachedNetworkImage(
                                            imageUrl: currencyIcon,
                                            width: 16,
                                            height: 16),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              width: 80,
                                              child: Text(
                                                ' ${e.payoutAmountConverted.numeral(digits: 2)} $currencyName',
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 12),
                                                textAlign: TextAlign.end,
                                              ),
                                            ),
                                            // Padding(
                                            //   padding: const EdgeInsets.only(
                                            //       top: 4.0),
                                            //   child: Text(
                                            //     '${numeral(int.tryParse(e.points) ?? 0)} $currencyName',
                                            //     style: const TextStyle(
                                            //         color: Color(0xff26A1C8),
                                            //         fontWeight: FontWeight.w500,
                                            //         fontSize: 12),
                                            //   ),
                                            // ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  if (e.maxTimeRemainSeconds > 0 ||
                                      e.conversionStatus.toLowerCase() ==
                                          'rejected' ||
                                      e.conversionStatus.toLowerCase() ==
                                          'pending' ||
                                      e.conversionStatus.toLowerCase() ==
                                          'completed' 
                                        //  || e.timeUp
                                     
                                      )
                                    Container(
                                      height: 24,
                                      width: MediaQuery.of(context).size.width,
                                      color:
                                          const Color.fromRGBO(158, 158, 158, 1)
                                              .withOpacity(0.3),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if (e.conversionStatus
                                                  .toLowerCase() ==
                                              'rejected')
                                            const Center(
                                              child: Text(
                                                'Rejected',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12),
                                              ),
                                            )
                                          else if (e.conversionStatus
                                                  .toLowerCase() ==
                                              'pending')
                                            const Center(
                                              child: Text(
                                                'Pending',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12),
                                              ),
                                            )
                                          // else if (e.timeUp)
                                          //   const Center(
                                          //     child: Text(
                                          //       'Rejected, time limit reached',
                                          //       style: TextStyle(
                                          //           color: Colors.black,
                                          //           fontWeight: FontWeight.w500,
                                          //           fontSize: 12),
                                          //     ),
                                          //   )
                                          else if (e.conversionStatus
                                                  .toLowerCase() ==
                                              'completed')
                                            const Center(
                                              child: Text(
                                                'Completed',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12),
                                              ),
                                            )
                                          else if (e.maxTimeRemainSeconds > 0)
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Text(
                                                  'Complete within ',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 10),
                                                ),
                                                AcmoComponentCountdown(
                                                  seconds:
                                                      e.maxTimeRemainSeconds.toInt(),
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 10),
                                                )
                                              ],
                                            )
                                        ],
                                      ),
                                    )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                        ],
                      ),
                    )
                    .toList(),
                ...dailyPurchaseEvents
                    .map(
                      (e) => Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18, vertical: 16),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Daily Purchase Reward",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                ),
                                const Spacer(),
                                CachedNetworkImage(
                                    imageUrl: currencyIcon,
                                    width: 16,
                                    height: 16),
                                const SizedBox(
                                  width: 4,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${e.payoutAmountConverted.numeral(digits: 2)} $currencyName',
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12),
                                    ),
                                    // const SizedBox(
                                    //   height: 4,
                                    // ),
                                    // Text(
                                    //   '${numeral(int.tryParse(e.points) ?? 0)} $currencyName',
                                    //   style: const TextStyle(
                                    //       color: Color(0xff26A1C8),
                                    //       fontWeight: FontWeight.w600,
                                    //       fontSize: 12),
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                           Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: AcmoCustomBarWithColor(
                              circularRadius: BorderRadius.circular(4),
                              title: e.eventName,
                              total:1,// e.dailyLimit,
                              completed: 0,//e.todayCompleted,
                              progressBarColor: const Color(0xff26A1C8),
                            ),
                          )
                        ],
                      ),
                    )
                    .toList(),
                ...duplicateEvents
                    .map(
                      (e) =>
                          //Progress Bar 2
                          Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18, vertical: 16),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Daily Reward',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                ),
                                const Spacer(),
                                CachedNetworkImage(
                                    imageUrl: currencyIcon,
                                    width: 16,
                                    height: 16),
                                const SizedBox(
                                  width: 4,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${e.payoutAmountConverted.numeral(digits: 2)} $currencyName',
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12),
                                    ),
                                    // const SizedBox(
                                    //   height: 4,
                                    // ),
                                    // Text(
                                    //   '${numeral(int.tryParse(e.points) ?? 0)} $currencyName',
                                    //   style: const TextStyle(
                                    //       color: Color(0xff26A1C8),
                                    //       fontWeight: FontWeight.w600,
                                    //       fontSize: 12),
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 16.0, bottom: 16.0, left: 16.0),
                            child: AcmoCustomBarWithColor(
                              circularRadius: BorderRadius.circular(4),
                              title: e.eventName,
                              total: 1,// e.dailyLimit,
                              completed: 0,// e.todayCompleted,
                              progressBarColor: const Color(0xff26A1C8),
                            ),
                          )
                        ],
                      ),
                    )
                    .toList(),
                const SizedBox(
                  height: 32,
                )
              ]))),
    );
  }
}
