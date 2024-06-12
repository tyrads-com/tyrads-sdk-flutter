// ignore_for_file: prefer_interpolation_to_compose_strings

import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:numeral/numeral.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:styled_text/styled_text.dart';
import 'package:tyrads_sdk/src/acmo/core/components/appbar_with_help.dart';
import 'package:tyrads_sdk/src/acmo/core/components/button_offer_view.dart';
import 'package:tyrads_sdk/src/acmo/core/components/loading.dart';
import 'package:tyrads_sdk/src/acmo/modules/help/page.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/controller.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

import '../offers/components/chip_category.dart';
import '../offers/components/chip_channel.dart';
import 'widgets/normal_events.dart';
import 'widgets/purchase_card.dart';

class AcmoOfferDetailsPage extends StatefulWidget {
  final int id;

  const AcmoOfferDetailsPage({super.key, required this.id});

  @override
  State<AcmoOfferDetailsPage> createState() => _AcmoOfferDetailsPageState();
}

class _AcmoOfferDetailsPageState extends State<AcmoOfferDetailsPage> {
  late final _controller = AcmoOffersDetailsController(widget.id);

  var isInstalled = ValueNotifier(false);
  late final _futureData = _controller.loadOfferDetails(widget.id);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AcmoAppBarWithHelp(
          titleText: "Offer Details",
          onTap: () {
            Tyrads.instance.to(AcmoHelpPage(
              id: widget.id,
            ));
          },
          showHelp: isInstalled,
        ),
        body: FutureBuilder(
            future: _futureData,
            builder: (context, snapshot) {
              if (!snapshot.hasData) return const AcmoComponentLoading();
              WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                isInstalled.value = _controller.item.isInstalled;
              });

              return AcmoOfferDetailsBody(
                controller: _controller,
              );
            }));
  }
}

class AcmoOfferDetailsBody extends StatefulWidget {
  const AcmoOfferDetailsBody({super.key, required this.controller});

  final AcmoOffersDetailsController controller;
  @override
  State<AcmoOfferDetailsBody> createState() => _AcmoOfferDetailsBodyState();
}

class _AcmoOfferDetailsBodyState extends State<AcmoOfferDetailsBody>
    with WidgetsBindingObserver {
  late final _controller = widget.controller;
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        _refreshController.requestRefresh();
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SmartRefresher(
          controller: _refreshController,
          header: const WaterDropMaterialHeader(),
          enablePullDown: true,
          enablePullUp: false,
          onRefresh: () async {
            await _controller.loadOfferDetails(_controller.id);
            _refreshController.refreshCompleted();
            setState(() {});
          },
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: -8, horizontal: 8),
                    leading: SizedBox.square(
                      dimension: 48,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        child: CachedNetworkImage(
                          imageUrl: _controller.item.app.thumbnail,
                        ),
                      ),
                    ),
                    title: Text(
                        _controller.item.app.title,
                         maxLines: 1,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        )),
                    subtitle: Row(
                      children: [
                        // AcmoChipOfferType(
                        //     _controller.item.targeting.targetingType),
                        // const SizedBox(
                        //   width: 2,
                        // ),
                        AcmoChipOfferCategory(
                            _controller.item.app.storeCategory),
                        const SizedBox(
                          width: 2,
                        ),
                        AcmoChipOfferChannel(_controller
                                .item.targeting.reward?.rewardDifficulty ??
                            '')
                      ],
                    ),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: 76,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CachedNetworkImage(
                                  imageUrl: _controller
                                      .item.currency.adUnitCurrencyIcon,
                                  width: 14,
                                  height: 14),
                              const SizedBox(
                                width: 1,
                              ),
                              Text(
                                _controller
                                    .item.campaignPayout.totalPayoutConverted
                                    .numeral(digits: 2),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          _controller.item.currency.adUnitCurrencyName,
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 10),
                        ),
                        Text(
                          _controller.item.payoutEvents.length.toString() +
                              " " +
                              (_controller.item.payoutEvents.length == 1
                                  ? "Reward"
                                  : "Rewards"),
                          style: const TextStyle(
                              fontSize: 8, fontStyle: FontStyle.italic),
                        )
                      ],
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(0)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: CachedNetworkImage(
                      imageUrl: _controller.item.creative.creativePacks.first
                              .creatives?.first?.fileUrl ??
                          '',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: MediaQuery.of(context).size.width / 1.91,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                    height: 280,
                    child: AcmoOfferEventsNormal(
                      controller: _controller,
                    )),
                const SizedBox(
                  height: 24,
                ),
                if (!_controller.item.isInstalled)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 31),
                    child: DefaultTextStyle.merge(
                      style:
                          const TextStyle(fontSize: 12, color: Colors.black54),
                      child: Column(
                        children: [
                          if (!kIsWeb && Platform.isAndroid)
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  StyledText(
                                    text:
                                        "Follow this few steps to avoid download failure and make sure you’ll get your points.",
                                    // style: TextStyle(fontSize: 12),
                                    tags: {
                                      "b": StyledTextTag(
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w700))
                                    },
                                  ),
                                  const SizedBox(height: 16),
                                  StyledText(
                                    text:
                                        "1. Make sure you select <b>Google Play Store</b> to download the game.",
                                    //style: TextStyle(fontSize: 12),
                                    tags: {
                                      "b": StyledTextTag(
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w700))
                                    },
                                  ),
                                  const SizedBox(height: 16),
                                  StyledText(
                                    text:
                                        "2. Download right away after you click “<b>Confirm</b>” button.",
                                    //  style: TextStyle(fontSize: 12),
                                    tags: {
                                      "b": StyledTextTag(
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w700))
                                    },
                                  ),
                                  const SizedBox(height: 16),
                                  StyledText(
                                    text:
                                        "3. After the download complete, <b>open the game</b> from Google Play Store.",
                                    //  style: TextStyle(fontSize: 12),
                                    tags: {
                                      "b": StyledTextTag(
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w700))
                                    },
                                  ),
                                  const SizedBox(height: 16),
                                  StyledText(
                                    text:
                                        "Note: If the download failed, do not continue to play!",
                                    // style: TextStyle(fontSize: 12),
                                    tags: {
                                      "b": StyledTextTag(
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w700))
                                    },
                                  )
                                ])
                          else
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  StyledText(
                                    text:
                                        "Follow this few steps to avoid download failure and make sure you’ll get your points.",
                                    // style: TextStyle(fontSize: 12),
                                    tags: {
                                      "b": StyledTextTag(
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w700))
                                    },
                                  ),
                                  const SizedBox(height: 16),
                                  StyledText(
                                    text:
                                        "1. Make sure you select <b>App Store</b> to download the game.",
                                    //style: TextStyle(fontSize: 12),
                                    tags: {
                                      "b": StyledTextTag(
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w700))
                                    },
                                  ),
                                  const SizedBox(height: 16),
                                  StyledText(
                                    text:
                                        "2. Download right away after you click “<b>Confirm</b>” button.",
                                    //  style: TextStyle(fontSize: 12),
                                    tags: {
                                      "b": StyledTextTag(
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w700))
                                    },
                                  ),
                                  const SizedBox(height: 16),
                                  StyledText(
                                    text:
                                        "3. After the download complete, <b>open the game</b> from App Store.",
                                    //  style: TextStyle(fontSize: 12),
                                    tags: {
                                      "b": StyledTextTag(
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w700))
                                    },
                                  ),
                                  const SizedBox(height: 16),
                                  StyledText(
                                    text:
                                        "Note: If the download failed, do not continue to play!",
                                    // style: TextStyle(fontSize: 12),
                                    tags: {
                                      "b": StyledTextTag(
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w700))
                                    },
                                  ),
                                ]),
                          const SizedBox(
                            height: 54,
                          )
                        ],
                      ),
                    ),
                  )
                else
                  Column(
                    children: [
                      PurchaseCard(
                        duplicateEvents: _controller.duplicateEvents,
                        purchaseEvents: _controller.purchaseEvents,
                        dailyPurchaseEvents: _controller.dailyPurchaseEvents,
                        maxPoints: _controller.maxPurchasePoints,
                        earnedPoints: _controller.earnedPurchasePoints,
                        currencyIcon:
                            _controller.item.currency.adUnitCurrencyIcon,
                        currencyName:
                            _controller.item.currency.adUnitCurrencyName,
                      ),
                      const SizedBox(
                        height: 36,
                      )
                    ],
                  ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AcmoButtonOfferView(
                  label: 'Play Now',
                  onTap: () async {
                    _controller.openOffer();
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
