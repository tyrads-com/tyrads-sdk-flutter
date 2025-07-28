// ignore_for_file: must_be_immutable
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/models/offer_details.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/widgets/countdown.dart';
import '../../../../gen/assets.gen.dart';
import 'custom_bar.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';
class AcmoEventCard extends StatelessWidget {
  AcmoEventCard(
      {super.key,
      required this.isRejected,
      required this.isActive,
      required this.isCompleted,
      required this.isPending,
      required this.isFuture,
      required this.isSuperCharged,
      required this.difcultyLevelLabel,
      required this.tPoints,
      required this.eventName,
      required this.isOfferActive,
      required this.remainingTime,
      required this.timeUp,
      required this.isPlaytime,
      required this.totalPlaytime,
      required this.playedPlaytime,
      required this.item});
  bool isRejected;
  bool isActive;
  bool isCompleted;
  bool isPending;
  bool isFuture;
  bool isSuperCharged;
  bool timeUp;
  bool isPlaytime;
  final int remainingTime;
  final int totalPlaytime;
  final int playedPlaytime;
  final bool isOfferActive;
  final String difcultyLevelLabel;
  final String tPoints;
  final String eventName;
  final AcmoOfferDetailsModel item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20),
      child: SizedBox(
        width: 190,
        child: Column(
          children: [
            //Main Card

            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 4,
              child: Container(
                  decoration: BoxDecoration(
                    border: () {
                      if (isOfferActive) {
                        return isSuperCharged && isActive
                            ? Border.all(
                                color: const Color(0xff9426C8), width: 3)
                            : isActive
                                ? Border.all(
                                    color: Theme.of(context).colorScheme.secondary, width: 3)
                                : null;
                      }
                    }(),
                    borderRadius: BorderRadius.circular(15),
                    gradient: RadialGradient(
                      colors: [
                        Theme.of(context).colorScheme.secondary.withOpacity(0.0),
                        Theme.of(context).colorScheme.secondary.withOpacity(0.1),
                      ],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Top left Widget with diffculty level text
                      TopWidgetWithTitle(
                          isCompleted: isCompleted,
                          isSuperCharged: isSuperCharged,
                          isActive: isActive,
                          isFuture: isFuture,
                          isRejected: isRejected,
                          isPending: isPending,
                          timeUp:timeUp,
                          difcultyLevelLabel: difcultyLevelLabel),
                      //center widget with image of start
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6.0, horizontal: 50),
                        child: Container(
                          child: () {
                            if (isPlaytime) {
                              return Assets.images.clock.image(
                                  height: 80,
                                  color: isCompleted
                                      ? Theme.of(context).colorScheme.secondary
                                      : null);
                            } else {
                              return Assets.images.silverStar.image(
                                  height: 80,
                                  color: () {
                                    var color = Colors.grey.shade300;
                                    if (isCompleted) {
                                      color = const Color(0xffFED402);
                                    }
                                    if (isSuperCharged) {
                                      color = const Color(0xff9426C8);
                                    }
                                    if (isRejected) {
                                      color = const Color(0xffD45151);
                                    }
                                    if (isPending) {
                                      color = const Color(0xffFED402);
                                    }
                                     if (timeUp) {
                                      color = const Color(0xffD45151);
                                    }
                                    return color;
                                  }());
                            }
                          }(),
                        ),
                      ),
                      //Event Type text Widget
                      EventTypeText(
                        isCompleted: isCompleted,
                        isSuperCharged: isSuperCharged,
                        isActive: isActive,
                        isFuture: isFuture,
                        isPending: isPending,
                        isRejected: isRejected,
                        eventName: eventName,
                        timeUp:timeUp,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      //Tpoints widget with icon and tpoints
                      TPointsWithIcon(tPoints: tPoints, currencyIconUrl: item.currency.adUnitCurrencyIcon,currencyName: item.currency.adUnitCurrencyName,),
                      //Bottom Widget
                      const SizedBox(
                        height: 6,
                      ),
                      BottomWidgetWIthTitle(
                        isActive: isActive,
                        isRejected: isRejected,
                        isSuperCharged: isSuperCharged,
                        isFuture: isFuture,
                        isCompleted: isCompleted,
                        isPending: isPending,
                        isOfferActive: isOfferActive,
                        remainingTime: remainingTime,
                        timeUp: timeUp,
                        isPlaytime: isPlaytime,
                        totalPlaytime: totalPlaytime,
                        playedPlaytime: playedPlaytime,
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomWidgetWIthTitle extends StatelessWidget {
  const BottomWidgetWIthTitle({
    Key? key,
    required this.isActive,
    required this.isRejected,
    required this.isSuperCharged,
    required this.isFuture,
    required this.isCompleted,
    required this.isPending,
    required this.isOfferActive,
    required this.remainingTime,
    required this.timeUp,
    required this.isPlaytime,
    required this.totalPlaytime,
    required this.playedPlaytime,
  }) : super(key: key);

  final bool isActive;
  final bool isRejected;
  final bool isSuperCharged;
  final bool isFuture;
  final bool isCompleted;
  final bool isPending;
  final bool isOfferActive;
  final bool isPlaytime;
  final int remainingTime;
  final int totalPlaytime;
  final int playedPlaytime;
  final bool timeUp;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: () {
            var color = Colors.grey.shade300;
            if (isCompleted) {
              color = Theme.of(context).colorScheme.secondary;
            }
            if (isSuperCharged) {
              color = const Color(0xff9426C8);
            }
            if (isRejected) {
              color = const Color(0xffD45151);
            }
            if (isPending) {
              color = const Color(0xffF4921F);
            }
            if (timeUp) {
              color = const Color(0xffD45151);
            }
            return color;
          }(),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0))),
      width: 192,
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0)),
              child: AcmoCustomBar(
                total: totalPlaytime,
                completed: playedPlaytime,
                backgroundColor: Colors.transparent,
                showLabels: false,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Center(child: () {
              Widget widget =  Text(
               t.offerDetails.eventStatus.notAvailable,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 10),
              );
              if (!isOfferActive) {
                return widget;
              }
              if (isActive) {
                widget =  Text(
                  t.offerDetails.eventStatus.completeToContinue,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 10),
                );
              }
              if (isPlaytime) {
                widget = Text(
                  '$playedPlaytime minutes played',
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 10),
                );
              }
              if (remainingTime > 0) {
                widget = Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text(
                      t.offerDetails.eventStatus.completeWithin,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 10),
                    ),
                    AcmoComponentCountdown(
                      seconds: remainingTime,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 10),
                    )
                  ],
                );
              }
              if (isCompleted) {
                widget =  Text(
                  t.offerDetails.eventStatus.completed,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                );
              }
              if (isPending) {
                widget =  Text(
                  t.offerDetails.eventStatus.pending,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                );
              }
              if (timeUp) {
                widget =  Text(
                  t.offerDetails.eventStatus.rejectedTime,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                );
              }
              if (isRejected) {
                widget =  Text(
                  t.offerDetails.eventStatus.rejected,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                );
              }
              return widget;
            }()),
          ),
        ],
      ),
    );
  }
}

class TPointsWithIcon extends StatelessWidget {
  const TPointsWithIcon({
    Key? key,
    required this.tPoints, required this.currencyIconUrl, required this.currencyName,
  }) : super(key: key);

  final String tPoints;
  final String currencyIconUrl;
  final String currencyName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageNetwork(
            image: currencyIconUrl, width: 16, height: 16),
        const SizedBox(
          width: 1,
        ),
        Text(
          '$tPoints $currencyName',
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 14),
        ),
      ],
    );
  }
}

class EventTypeText extends StatelessWidget {
  const EventTypeText({
    Key? key,
    required this.isCompleted,
    required this.isSuperCharged,
    required this.isActive,
    required this.isFuture,
    required this.isPending,
    required this.isRejected,
    required this.eventName,
    required this.timeUp,
  }) : super(key: key);

  final bool isCompleted;
  final bool isSuperCharged;
  final bool isActive;
  final bool isFuture;
  final bool isPending;
  final bool isRejected;
  final String eventName;
  final bool timeUp;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: SizedBox(
          height :38,
          child: Text(
              eventName,
              maxLines: 2,              
            style: TextStyle(
                color: isCompleted && isSuperCharged ||
                        isActive && isSuperCharged ||
                        isFuture && isSuperCharged ||
                        isPending && isSuperCharged ||
                        isRejected && isSuperCharged 
                    ? const Color(0xff9426C8) 
                    : isRejected || timeUp ? const Color(0xffD45151)
                    : Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.w700,
                fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
class TopWidgetWithTitle extends StatelessWidget {
  const TopWidgetWithTitle({
    Key? key,
    required this.isCompleted,
    required this.isSuperCharged,
    required this.isActive,
    required this.isFuture,
    required this.isRejected,
    required this.isPending,
    required this.difcultyLevelLabel,
    required this.timeUp,
  }) : super(key: key);

  final bool isCompleted;
  final bool isSuperCharged;
  final bool isActive;
  final bool isFuture;
  final bool isRejected;
  final bool isPending;
  final String difcultyLevelLabel;
  final bool timeUp;

  @override
  Widget build(BuildContext context) {
    if (difcultyLevelLabel.isEmpty) {
      return Container(
        height: 24,
      );
    }
    return Container(
      decoration: BoxDecoration(
          color: isCompleted && isSuperCharged ||
                  isActive && isSuperCharged ||
                  isFuture && isSuperCharged ||
                  isRejected && isSuperCharged || isRejected || timeUp
              ? const Color(0xffD45151)
              : isPending && isSuperCharged
                  ? const Color(0xff9426C8)
                  : Theme.of(context).colorScheme.secondary,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12.0),
              bottomRight: Radius.circular(15.0))),
      width: 62,
      height: 24,
      child: FittedBox(
        fit: BoxFit.cover,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
          child: Text(
            difcultyLevelLabel,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 10),
          ),
        ),
      ),
    );
  }
}
