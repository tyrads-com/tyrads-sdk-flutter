// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:numeral/numeral.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tyrads_sdk/src/acmo/core/components/appbar_with_help.dart';
import 'package:tyrads_sdk/src/acmo/core/components/button_offer_view.dart';
import 'package:tyrads_sdk/src/acmo/core/components/loading.dart';
import 'package:tyrads_sdk/src/acmo/modules/help/page.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/controller.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/widgets/description_expansion_tile.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/widgets/microcharge_widget.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/widgets/offers_timeline.dart';
import 'package:tyrads_sdk/src/app_config.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

import '../offers/components/chip_category.dart';
import '../offers/components/chip_channel.dart';

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
        backgroundColor: const Color(0xFFF0F0F0),
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
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(0)),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      CachedNetworkImage(
                        imageUrl: _controller.item.creative.creativePacks.first
                                .creatives?.first?.fileUrl ??
                            '',
                        fit: BoxFit.cover,
                        width: double.infinity,
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
                          dimension: 48,
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            child: CachedNetworkImage(
                              imageUrl: _controller.item.app.thumbnail,
                            ),
                          ),
                        ),
                        title: Text(_controller.item.app.title,
                            maxLines: 1,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.white,
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
                      )
                    ],
                  ),
                ),
                Container(
                  height: 32,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.only(right: 8),
                          height: double.maxFinite,
                          decoration: const BoxDecoration(
                            color: AcmoConfig.SECONDARY_COLOR,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: CachedNetworkImage(
                                imageUrl: _controller
                                    .item.currency.adUnitCurrencyIcon,
                                width: 13,
                                height: 13),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Center(
                          child: Text(
                            "Earn upto ${_controller.item.campaignPayout.totalPayoutConverted.numeral(digits: 2)} ${_controller.item.currency.adUnitCurrencyName}",
                            style: const TextStyle(
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                DescriptionExpansionTile(controller: _controller),
                const SizedBox(
                  height: 6,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 16,
                  ),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: ListTile(
                          leading: Assets.images.clock.image(
                            height: 38,
                            color: AcmoConfig.SECONDARY_COLOR,
                          ),
                          title: const Text(
                            "Play Time",
                            style: TextStyle(
                              color: AcmoConfig.SECONDARY_COLOR,
                              fontWeight: FontWeight.w700,
                              fontSize: 13,
                            ),
                          ),
                          subtitle: const Text(
                            "Played 1 minute",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            ),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CachedNetworkImage(
                                imageUrl: _controller
                                    .item.currency.adUnitCurrencyIcon,
                                width: 13,
                                height: 13,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "${_controller.item.campaignPayout.totalPayoutConverted.numeral(digits: 2)} ${_controller.item.currency.adUnitCurrencyName}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Color(0xFF888888),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Icon(
                                Icons.keyboard_arrow_right,
                                size: 18,
                                color: Color(0xFF888888),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        "Active Task",
                        style: TextStyle(
                          color: AcmoConfig.SECONDARY_COLOR,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      OffersTimeline(controller: _controller),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                MicroChargeWidget(controller: _controller),
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
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: AcmoButtonOfferView(
                    label: 'Play Now',
                    onTap: () async {
                      _controller.openOffer();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
