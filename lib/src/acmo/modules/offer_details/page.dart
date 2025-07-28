// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_network/image_network.dart';
import 'package:numeral/numeral.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tyrads_sdk/src/acmo/core/components/appbar_with_help.dart';
import 'package:tyrads_sdk/src/acmo/core/components/bottombar_button.dart';
import 'package:tyrads_sdk/src/acmo/core/components/expires_in.dart';
import 'package:tyrads_sdk/src/acmo/core/components/loading_coins.dart';
import 'package:tyrads_sdk/src/acmo/core/components/overlay_loading.dart';
import 'package:tyrads_sdk/src/acmo/modules/help/page.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/controller.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/models/offer_details.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/widgets/bonus_rewards_widget.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/widgets/description_expansion_tile.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/widgets/impression_tracker.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/widgets/multiplier_widget.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/widgets/offers_timeline.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/widgets/overlay_message.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/widgets/playtime_widget.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoOfferDetailsPage extends StatefulWidget {
  final int id;

  const AcmoOfferDetailsPage({super.key, required this.id});

  @override
  State<AcmoOfferDetailsPage> createState() => _AcmoOfferDetailsPageState();
}

class _AcmoOfferDetailsPageState extends State<AcmoOfferDetailsPage> {
  late final _controller = AcmoOffersDetailsController(widget.id);

  var isInstalled = ValueNotifier(false);
  var isRetry = ValueNotifier(false);
  var isLoaded = ValueNotifier(false);
  var isButtonDisabled = ValueNotifier(false);
  late final _futureData = _controller.loadOfferDetails(widget.id);

  @override
  void initState() {
    super.initState();
    isLoaded.addListener(() {
      isRetry.value =
          _controller.item.isRetryDownload && !_controller.item.isInstalled;
      isButtonDisabled.value = checkIsButtonDisabled(_controller.item);
    });
  }

  bool checkIsButtonDisabled(AcmoOfferDetailsModel details) {
    if ((details.capReached && !details.isInstalled) ||
        (details.isOldUser && !details.isInstalled) ||
        (details.status.toLowerCase() == "paused" &&
            details.expiredOn == null) ||
        details.status.toLowerCase() == "suspended") {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AcmoAppBarWithHelp(
        titleText: t.offerDetails.title,
        onTap: () {
          Tyrads.instance.to(AcmoHelpPage(
            id: widget.id,
            currencyUrl: _controller.item.currency.adUnitCurrencyIcon,
          ));
        },
        showHelp: isInstalled,
      ),
      backgroundColor: const Color(0xFFF0F0F0),
      body: FutureBuilder(
          future: _futureData,
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const AcmoLoadingCoins();
            WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
              isInstalled.value = _controller.item.isInstalled;
              isLoaded.value = true;
            });

            final offerDetails = _controller.item;

            return Stack(
              children: [
                AcmoOfferDetailsBody(
                  controller: _controller,
                ),
                if (offerDetails.isRetryDownload && !offerDetails.isInstalled)
                  Positioned.fill(
                    child: AcmoOverlayMessage(
                      icon: Assets.icons.rotateSquare
                          .image(width: 32, color: Colors.white),
                      styledMessage:
                          "We couldn't validate your download. Click <b>\"Retry\"</b> to try again, rewards need a tracked download",
                    ),
                  )
                else if ((offerDetails.capReached &&
                        !offerDetails.isInstalled) ||
                    offerDetails.status == "suspended" ||
                    (offerDetails.status == "paused" &&
                        offerDetails.expiredOn == null))
                  Positioned.fill(
                    child: AcmoOverlayMessage(
                      icon: Assets.icons.circleX
                          .image(width: 32, color: Colors.white),
                      styledMessage:
                          "Sorry, this game is <b>temporarily unavailable</b>, please come back later!",
                    ),
                  )
                else if (offerDetails.isOldUser && !offerDetails.isInstalled)
                  Positioned.fill(
                    child: AcmoOverlayMessage(
                      icon: Assets.icons.triangleWarning
                          .image(width: 32, color: Colors.white),
                      styledMessage:
                          "You’ve <b>previously downloaded</b> this game, so it won’t track progress or earn Tpoints. Please choose another new game.",
                    ),
                  )
              ],
            );
          }),
      bottomNavigationBar: ValueListenableBuilder(
          valueListenable: isButtonDisabled,
          builder: (context, isDisabled, child) {
            return ValueListenableBuilder(
                valueListenable: isRetry,
                builder: (context, isRetry, child) {
                  return AcmoBottomBarButton(
                    showButton: isLoaded,
                    label: isRetry ? 'Retry' : 'Play Now',
                    isDisabled: isDisabled,
                    showLockIcon: isDisabled,
                    onTap: () async {
                      Loading.open();
                      await _controller.openOffer();
                      Loading.dismiss();
                    },
                  );
                });
          }),
    );
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
    // final double progressValue = _controller.totalEarnedConverted /
    //     (_controller.totalPossibleEarning == 0.0
    //         ? 1
    //         : _controller.totalPossibleEarning);
    final currencySale = _controller.item.engagementOverride.currencySales;
    final double totalPalayablePayout =
        _controller.item.campaignPayout.totalPlayablePayoutConverted;
    final double earnedPlayablePayout =
        _controller.item.earnedPayout.earnedPlayablePayoutConverted;
    final double progressValue = totalPalayablePayout <= 0.0
        ? 1
        : earnedPlayablePayout /
            (currencySale != null
                ? (totalPalayablePayout * (currencySale.multiplier ?? 1))
                : totalPalayablePayout);
    final Color textColor =
        progressValue > 0.3 ? Colors.white : const Color(0xFF27B6C1);
    return Stack(
      children: [
        ImpressionTracker(controller: _controller),
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
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(0)),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      ImageNetwork(
                        image: _controller.item.creative.creativePacks.first
                                .creatives?.first?.fileUrl ??
                            '',
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width / 1.91,
                      ),
                      Positioned.fill(
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color.fromARGB(184, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                            ),
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 14),
                        leading: SizedBox.square(
                          dimension: 43,
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            child: ImageNetwork(
                              image: _controller.item.app.thumbnail,
                              width: 43,
                              height: 43,
                            ),
                          ),
                        ),
                        title: Text(
                          _controller.item.app.title,
                          maxLines: 1,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: 31,
                      child: LinearProgressIndicator(
                        value: progressValue,
                        color: Theme.of(context).colorScheme.secondary,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    progressValue > 0.3
                        ? Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                if (progressValue < 0.95)
                                  Row(
                                    children: [
                                      ImageNetwork(
                                        image: _controller
                                            .item.currency.adUnitCurrencyIcon,
                                        width: 12,
                                        height: 12,
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        'Earn ',
                                        style: GoogleFonts.poppins(
                                          color: textColor,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        (_controller.item.earnedPayout
                                                .earnedPlayablePayoutConverted)
                                            .numeral(digits: 2),
                                        style: GoogleFonts.poppins(
                                          color: textColor,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                Row(
                                  children: [
                                    ImageNetwork(
                                      image: _controller
                                          .item.currency.adUnitCurrencyIcon,
                                      width: 12,
                                      height: 12,
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      progressValue >= 0.95
                                          ? _controller.item.earnedPayout
                                              .earnedPlayablePayoutConverted
                                              .numeral(digits: 2)
                                          : _controller.item.engagementOverride
                                                      .currencySales !=
                                                  null
                                              ? (_controller.item.campaignPayout
                                                          .totalPlayablePayoutConverted *
                                                      (_controller
                                                              .item
                                                              .engagementOverride
                                                              .currencySales
                                                              ?.multiplier ??
                                                          1))
                                                  .numeral(digits: 2)
                                              : _controller.item.campaignPayout
                                                  .totalPlayablePayoutConverted
                                                  .numeral(digits: 2),
                                      style: GoogleFonts.poppins(
                                        color: progressValue >= 0.95
                                            ? Colors.white
                                            : Tyrads.instance.colorPremium ??
                                                const Color(0xFF27B6C1),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Earn up to ',
                                style: GoogleFonts.poppins(
                                  color: textColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                ),
                              ),
                              ImageNetwork(
                                image: _controller
                                    .item.currency.adUnitCurrencyIcon,
                                width: 12,
                                height: 12,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                _controller.item.engagementOverride
                                            .currencySales !=
                                        null
                                    ? ((_controller
                                                    .item
                                                    .engagementOverride
                                                    .currencySales
                                                    ?.multiplier ??
                                                1) *
                                            _controller.item.campaignPayout
                                                .totalPlayablePayoutConverted)
                                        .numeral(digits: 2)
                                    : _controller.item.campaignPayout
                                        .totalPlayablePayoutConverted
                                        .numeral(digits: 2),
                                style: GoogleFonts.poppins(
                                  color: textColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                if (_controller.item.expiredOn != null &&
                    _controller.item.status.toLowerCase() == 'paused')
                  AcmoExpiresInWidget(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    expiredOn: _controller.item.expiredOn,
                  ),
                DescriptionExpansionTile(controller: _controller),
                if (_controller.item.engagementOverride.currencySales != null)
                  AcmoMultiplierWidget(controller: _controller),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (_controller.isPlaytimeEvent)
                      PlaytimeWidget(controller: _controller),
                    if (_controller.allPayoutEvents.isNotEmpty)
                      OffersTimeline(controller: _controller),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                if (_controller.item.microChargeEvents.isNotEmpty)
                  BonusRewardsWidget(controller: _controller),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
