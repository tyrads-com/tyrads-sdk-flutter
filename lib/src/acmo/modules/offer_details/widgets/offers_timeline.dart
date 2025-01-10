import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:numeral/numeral.dart';
import 'package:timelines_plus/timelines_plus.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/controller.dart';
import 'package:tyrads_sdk/src/app_config.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';

class OffersTimeline extends StatefulWidget {
  const OffersTimeline({
    super.key,
    required AcmoOffersDetailsController controller,
  }) : _controller = controller;

  final AcmoOffersDetailsController _controller;

  @override
  State<OffersTimeline> createState() => _OffersTimelineState();
}

class _OffersTimelineState extends State<OffersTimeline> {
  bool showFullTimeline = false;
  _showFullTimeline() {
    setState(() {
      showFullTimeline = !showFullTimeline;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: showFullTimeline ? null : 170,
          child: Timeline.tileBuilder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            theme: TimelineThemeData(
              nodePosition: 0,
              connectorTheme: const ConnectorThemeData(
                thickness: 3.5,
                color: Color(0xffD9D9D9),
              ),
              indicatorTheme: const IndicatorThemeData(
                size: 19.0,
                color: Color(0xffD9D9D9),
              ),
            ),
            builder: TimelineTileBuilder.connected(
              contentsBuilder: (_, index) {
                final conversionStatus = widget
                    ._controller.allPayoutEvents[index].conversionStatus
                    .toLowerCase();
                final bool isCompleted = conversionStatus == 'approved';
                final bool isPending = conversionStatus == 'pending';
                final bool isRejected = conversionStatus == 'rejected';
                const bool isPlaytime = 1 == 2;
                final bool isOfferActive =
                    widget._controller.item.status.toLowerCase() == "active";
                return ListTile(
                  leading: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: isCompleted
                                ? AcmoConfig.SECONDARY_COLOR
                                : const Color(0xffD9D9D9),
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        padding: const EdgeInsets.all(4),
                        child: () {
                          if (isPlaytime) {
                            return Assets.images.clock.image(
                                height: 20,
                                width: 20,
                                color: isCompleted
                                    ? AcmoConfig.SECONDARY_COLOR
                                    : null);
                          } else {
                            return isOfferActive &&
                                    (isCompleted || isRejected || isPending)
                                ? Assets.images.goldenStar.image(
                                    height: 20,
                                    width: 20,
                                  )
                                : SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: Assets.images.silverStar.image());
                          }
                        }(),
                      ),
                      Assets.images.innerRoundedCorner.image(
                        height: 34,
                      ),
                    ],
                  ),
                  title: Text(
                    widget._controller.allPayoutEvents[index].eventName,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CachedNetworkImage(
                          imageUrl: widget
                              ._controller.item.currency.adUnitCurrencyIcon,
                          width: 16,
                          height: 16),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '${widget._controller.allPayoutEvents[index].payoutAmountConverted.numeral(digits: 2)} ${widget._controller.item.currency.adUnitCurrencyName}',
                        style: const TextStyle(
                          color: Color(0xff383838),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                );
              },
              connectorBuilder: (_, index, __) {
                final conversionStatus = widget
                    ._controller.allPayoutEvents[index].conversionStatus
                    .toLowerCase();
                if (!showFullTimeline && index > 0) {
                  return null;
                }
                if (conversionStatus == "approved") {
                  return const SolidLineConnector(color: Color(0xff6ad192));
                } else {
                  return const SolidLineConnector();
                }
              },
              indicatorBuilder: (_, index) {
                final conversionStatus = widget
                    ._controller.allPayoutEvents[index].conversionStatus
                    .toLowerCase();
                const bool isSuperCharged = 1 == 2;

                return DotIndicator(
                  color: () {
                    var color = const Color(0xffD9D9D9);
                    if (conversionStatus == "approved") {
                      color = const Color(0xff2CB388);
                    }
                    if (isSuperCharged) {
                      color = const Color(0xff9426C8);
                    }
                    if (conversionStatus == "pending") {
                      color = const Color(0xffF4921F);
                    }
                    return color;
                  }(),
                  size: 19,
                  child: conversionStatus == "approved"
                      ? const Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 10.0,
                        )
                      : null,
                );
              },
              itemExtentBuilder: (_, __) => 85,
              itemCount: widget._controller.allPayoutEvents.length,
            ),
          ),
        ),
        if (showFullTimeline)
          Align(
            alignment: Alignment.centerLeft,
            child: InkWell(
              onTap: () {},
              child: const Text(
                "Need Help?",
                style: TextStyle(
                  color: AcmoConfig.SECONDARY_COLOR,
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        IconButton(
          onPressed: _showFullTimeline,
          icon: showFullTimeline
              ? const RotatedBox(
                  quarterTurns: 2,
                  child: Icon(
                    Icons.arrow_drop_down_circle_outlined,
                    color: AcmoConfig.SECONDARY_COLOR,
                    size: 30,
                  ),
                )
              : const Icon(
                  Icons.arrow_drop_down_circle_outlined,
                  color: AcmoConfig.SECONDARY_COLOR,
                  size: 30,
                ),
        ),
      ],
    );
  }
}
