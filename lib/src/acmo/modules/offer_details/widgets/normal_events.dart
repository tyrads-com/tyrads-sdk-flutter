import 'package:flutter/material.dart';
import 'package:numeral/numeral.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/controller.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';

import 'event_card.dart';

class AcmoOfferEventsNormal extends StatefulWidget {
  const AcmoOfferEventsNormal({super.key, required this.controller});
  final AcmoOffersDetailsController controller;
  @override
  State<AcmoOfferEventsNormal> createState() => _AcmoOfferEventsNormalState();
}

class _AcmoOfferEventsNormalState extends State<AcmoOfferEventsNormal> {
  final RefreshController activeRefreshController =
      RefreshController(initialRefresh: false);
  final RefreshController completedRefreshController =
      RefreshController(initialRefresh: false);
  late PageController pageController = PageController(initialPage: 1);
  late final AcmoOffersDetailsController _controller = widget.controller;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [];

    
    if(_controller.allCompletedEvents.isNotEmpty){
      pages.add(
        SmartRefresher(
            scrollDirection: Axis.horizontal,
            controller: completedRefreshController,
            onRefresh: () {
              pageController.animateToPage(1,
                  duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
            },
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              reverse: true,
              shrinkWrap: true,
              itemCount: _controller.allCompletedEvents.length,
              itemBuilder: (BuildContext context, int index) {
                var item = _controller.allCompletedEvents[index];
                var titleText = "";
                if (index == 0) {
                  titleText = t.offerDetails.completedTasks;
                }

                return Column(
                  children: [
                    SizedBox(
                      width: 190,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 24, right: 5, top: 5),
                            child: Text(
                              titleText,
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.secondary,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        AcmoEventCard(
                          isActive: false,
                          isCompleted: item.conversionStatus.toLowerCase() == "approved",
                          isFuture: false,
                          isPending: item.conversionStatus.toLowerCase() == "pending",
                          isRejected: item.conversionStatus.toLowerCase() == "rejected",
                          isSuperCharged: false,
                          difcultyLevelLabel: item.eventCategory,
                          tPoints: item.payoutAmountConverted.numeral(digits: 2),
                          eventName: item.eventName,
                          isOfferActive: _controller.item.status.toLowerCase() == "active" || _controller.item.status.toLowerCase() == "paused" || _controller.item.status.toLowerCase() == "suspended",                          
                          remainingTime: item.maxTimeRemainSeconds.toInt(),
                          timeUp: item.maxTimeRemainSeconds<0,
                          isPlaytime: item.isPlaytime,
                          totalPlaytime: item.totalPlaytime,
                          playedPlaytime: 0,
                          item: _controller.item,
                        ),
                        if (index == 0)
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Container(
                              color: Colors.black12,
                              width: 2,
                              height: 200,
                            ),
                          ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
      );
    }

    if(_controller.allActiveEvents.isNotEmpty){
      pages.add(
        SmartRefresher(
            scrollDirection: Axis.horizontal,
            controller: activeRefreshController,
            onRefresh: () {
              pageController.animateToPage(0,
                  duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
            },
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: _controller.allActiveEvents.length,
              itemBuilder: (BuildContext context, int index) {
                var item = _controller.allActiveEvents[index];
                var titleText = "";
                if (_controller.allActiveEvents.isNotEmpty &&
                    _controller.allActiveEvents.first.id == item.id) {
                  if (_controller.item.status.toLowerCase() == "active") {
                    titleText = t.offerDetails.activeTasks;
                  } else {
                    titleText = t.offerDetails.availableTasks;
                  }
                }

                return Column(
                  children: [
                    SizedBox(
                      width: 190,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 24, right: 5, top: 5),
                            child: Text(
                              titleText,
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.secondary,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        if (index == 0 &&
                            _controller.allCompletedEvents.isNotEmpty)
                           Icon(Icons.chevron_left,
                              color: Theme.of(context).colorScheme.secondary),
                        AcmoEventCard(
                          isActive: index == 0 && !_controller.item.capReached,
                          isCompleted: item.conversionStatus.toLowerCase() == "approved",
                          isFuture: false,
                          isPending: item.conversionStatus.toLowerCase() == "pending",
                          isRejected: item.conversionStatus.toLowerCase() == "rejected",
                          isSuperCharged: false,
                          difcultyLevelLabel: item.eventCategory,
                          tPoints: item.payoutAmountConverted.numeral(digits: 2),
                          eventName: item.eventName,
                          isOfferActive: _controller.item.status.toLowerCase() == "active" || _controller.item.status.toLowerCase() == "paused" || _controller.item.status.toLowerCase() == "suspended",
                          remainingTime: item.maxTimeRemainSeconds.toInt(),
                          timeUp: item.maxTimeRemainSeconds < 0,
                          isPlaytime: item.isPlaytime,
                          totalPlaytime: item.totalPlaytime,
                          playedPlaytime: 0,
                          item: _controller.item,
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
      );
    }


    return RefreshConfiguration(
      headerBuilder: () => CustomHeader(
        builder: (c, r) => Container(),
      ),
      footerBuilder: () => CustomFooter(
        builder: (c, r) => Container(),
      ),
      headerTriggerDistance: 1.0,
      child: PageView(
        controller: pageController,
        children: pages,
      ),
    );
  }
}
