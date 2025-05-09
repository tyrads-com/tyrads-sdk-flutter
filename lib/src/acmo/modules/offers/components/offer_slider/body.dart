import 'dart:async';
import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/core/components/overlay_loading.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/page.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/models/offers.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

import '../../controller.dart';


import 'offer_item.dart';

class AcmoOfferSliderBody extends StatefulWidget {
  const AcmoOfferSliderBody({
    super.key,
    required this.controller,
    required this.height,
    required this.shrinkOffset,
    this.fromDashboard,
    this.showOnlyImage,
    this.showOnlyFooter,
    this.openPlayStore = false,
  });

  final AcmoOffersController controller;
  final double height;
  final double shrinkOffset;
  final bool? fromDashboard;
  final bool? showOnlyImage;
  final bool? showOnlyFooter;
  final bool openPlayStore;

  @override
  State<AcmoOfferSliderBody> createState() => _AcmoOfferSliderBodyState();
}

class _AcmoOfferSliderBodyState extends State<AcmoOfferSliderBody> {
  late PageController _pageController;

  late Timer _timer;

  ValueNotifier<int> currentIndex = ValueNotifier<int>(0);

  // Custom modulo function to handle negative indices
  int _getLoopedIndex(int index, int length) {
    return ((index % length) + length) % length;
  }

  @override
  void initState() {
    _pageController =
        PageController(initialPage: 0); // Start from a high page number
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (widget.controller.hotOffers.isNotEmpty) {
        int nextPage = _pageController.page!.toInt() + 1;
        _pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 1000),
          curve: Curves.easeInOut,
        );
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          controller: _pageController,
          itemBuilder: (context, index) {
            final int loopedIndex =
                _getLoopedIndex(index, widget.controller.hotOffers.length);
            final offer = widget.controller.hotOffers[loopedIndex];
            final imageUrl = offer.creative.creativePacks.firstOrNull?.creatives
                    .firstOrNull?.fileUrl ??
                "";

            return InkWell(
              onTap: widget.fromDashboard == true ? () => Tyrads.instance.showOffers(
                context,
                campaignID: offer.campaignId,
                route: TyradsDeepRoutes.CAMPAIGN_DETAILS,
              ) : () {
                Tyrads.instance.to(AcmoOfferDetailsPage(
                  id: offer.campaignId,
                ));
              },
              child: Stack(
                children: [
                  if (widget.showOnlyImage == true &&
                      widget.fromDashboard == true) ...[
                    ..._acmoOfferBackgroundImage(imageUrl, loopedIndex, true),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: widget.height,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black87,
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 0,
                      right: 0,
                      child: SizedBox(
                        height: 55,
                        child: AcmoOfferHeaderListItem(
                          e: offer,
                          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 15),
                        ),
                      ),
                    )
                  ],
                  if(widget.showOnlyFooter == true && widget.fromDashboard == true)
                    _acmoOfferFooterTitle(offer,
                        onTap: widget.openPlayStore
                            ? () async {
                              log("message");
                                Loading.open();
                                await widget.controller.openOffer(offer);
                                Loading.dismiss();
                              }
                            : null),
                  if ((widget.showOnlyImage ?? false) == false 
                  && (widget.showOnlyFooter ?? false) == false)
                  ...[
                    ..._acmoOfferBackgroundImage(imageUrl, loopedIndex),
                    _acmoOfferFooterTitle(
                      offer,
                      onTap: widget.openPlayStore
                        ? () async {
                          log("message");
                            Loading.open();
                            await widget.controller.openOffer(offer);
                            Loading.dismiss();
                          }
                        : null,
                    ),
                  ]
                ],
              ),
            );
          },
          onPageChanged: (index) {
            final int loopedIndex =
                _getLoopedIndex(index, widget.controller.hotOffers.length);
            currentIndex.value = loopedIndex;
          },
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: ValueListenableBuilder<int>(
              valueListenable: currentIndex,
              builder: (context, value, child) {
                return Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(widget.controller.hotOffers.length,
                          (index) {
                        return TweenAnimationBuilder(
                          duration: const Duration(milliseconds: 300),
                          tween: Tween<double>(begin: 0, end: value == index ? 1.2 : 1.0),
                          builder: (context, double scale, child) {
                            return Transform.scale(
                              scale: scale,
                              child: Container(
                                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: value == index 
                                      ? Tyrads.instance.colorPremium
                                      : Colors.grey,
                                ),
                              ),
                            );
                          },
                        );
                      }),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }

  Positioned _acmoOfferFooterTitle(AcmoOffersModel offer, {double? footerHeight, void Function()? onTap}) {
    return Positioned(
            bottom: 24,
            left: 0,
            right: 0,
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                      color: Tyrads.instance.colorPremium,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical:
                          (8 * widget.shrinkOffset).clamp(0.0, 8.0)),
                  child: SizedBox(
                      height:footerHeight?? 55,
                      child: AcmoOfferHeaderListItem(
                        e: offer,
                      )),
                ),
              ),
            ));
  }

  List<Widget> _acmoOfferBackgroundImage(String imageUrl, int loopedIndex, [bool roundedBorderImage = false]) {
    return [
        ClipRRect(
          borderRadius: roundedBorderImage ? BorderRadius.circular(10) : BorderRadius.zero,
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            width: double.infinity,
            height: widget.height,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 16,
          left: 16,
          child: SizedBox(
            width: 32,
            height: 32,
            child: Stack(
              children: [
                Assets.images.premiumStar
                    .image(color: Tyrads.instance.colorPremiumFg),
                Padding(
                  padding: const EdgeInsets.all(3),
                  child: Assets.images.premiumStar.image(
                    color: Tyrads.instance.colorPremium,
                  ),
                ),
                Center(
                    child: Text(
                  "${loopedIndex + 1}",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Tyrads.instance.colorPremiumFg),
                ))
              ],
            ),
          ),
        ),
      ];
  }
}
