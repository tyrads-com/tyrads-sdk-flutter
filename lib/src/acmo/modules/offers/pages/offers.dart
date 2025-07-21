import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tyrads_sdk/src/acmo/core/components/appbar_offerwall.dart';
import 'package:tyrads_sdk/src/acmo/core/components/overlay_loading.dart';
import 'package:tyrads_sdk/src/acmo/core/components/skeleton_loading.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/page.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/widgets/countdown.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/components/empty_view.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/components/limited_time_offer_dailog.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/components/premium_offer_slider.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/controller.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/new_offerwall/widgets/bonus_banner.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/new_offerwall/widgets/new_offerwall_item.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/pages/active_offers.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoOffersPage extends StatefulWidget {
  const AcmoOffersPage({super.key});

  @override
  State<AcmoOffersPage> createState() => _AcmoOffersPageState();
}

class _AcmoOffersPageState extends State<AcmoOffersPage> {
  final _controller = AcmoOffersController();
  late final _futureData = _controller.loadOffers();
  bool initial = true;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (Tyrads.instance.route == TyradsDeepRoutes.CAMPAIGNS_ACTIVATED) {
        Tyrads.instance.to(const AcmoActiveOffersPage());
        Tyrads.instance.route = null;
      } else if (Tyrads.instance.route == TyradsDeepRoutes.CAMPAIGN_DETAILS ||
          Tyrads.instance.route == TyradsDeepRoutes.CAMPAIGN_TICKETS) {
        if (Tyrads.instance.campaignID != null) {
          Tyrads.instance.to(AcmoOfferDetailsPage(
            id: Tyrads.instance.campaignID!,
          ));
        } else {
          debugPrint(
              "Error: For campaign details Campaign id is required parameter");
        }
        if (Tyrads.instance.route == TyradsDeepRoutes.CAMPAIGN_DETAILS) {
          Tyrads.instance.route = null;
          Tyrads.instance.campaignID = null;
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AcmoAppBarOfferwall(
        titleText: t.offers.title,
        onRefresh: () {
          if (mounted) {
            setState(() {});
          }
        },
        onBack: () {
          Tyrads.instance.back();
        },
      ),
      body: FutureBuilder(
          future: _futureData,
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const AcmoSkeletonLoading();
            if (initial &&
                _controller
                    .activeOffersWithLimitedTimeEvents.value.isNotEmpty) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                showDialog(
                    context: context,
                    builder: (_) {
                      return AcmoLimitedTimeOfferDailog(
                        controller: _controller,
                      );
                    });
              });
              initial = false;
            }
            return AcmoOffersBody(controller: _controller);
          }),
    );
  }
}

class AcmoOffersBody extends StatefulWidget {
  const AcmoOffersBody({super.key, required this.controller});

  final AcmoOffersController controller;
  @override
  State<AcmoOffersBody> createState() => _AcmoOffersBodyState();
}

class _AcmoOffersBodyState extends State<AcmoOffersBody>
    with WidgetsBindingObserver {
  final _refreshController = RefreshController(initialRefresh: false);
  late final _controller = widget.controller;

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
        if (_controller.activatedCount.value >= 0 &&
            _controller.redirectToActivePage) {
          Tyrads.instance.to(
            const AcmoActiveOffersPage(
              tabIndex: 2,
            ),
          );
          _controller.redirectToActivePage = false;
        }
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    var itemHeight = (MediaQuery.of(context).size.width) / 1.91;
    return Stack(
      children: [
        SmartRefresher(
          controller: _refreshController,
          header: const WaterDropMaterialHeader(),
          enablePullDown: true,
          enablePullUp: false,
          onRefresh: () async {
            await _controller.loadOffers();
            if (mounted) {
              setState(() {
                _refreshController.refreshCompleted();
              });
            }
          },
          child: CustomScrollView(
            slivers: [
              if (_controller.allItems.isNotEmpty &&
                  _controller.currencySales.data?.currencySales != null &&
                  _controller.currencySales.data!.currencySales?.dateEnd !=
                      null)
                SliverToBoxAdapter(
                  child: Container(
                    height: 31,
                    color: const Color(0xFFFF554A),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Bonus Expires in",
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            )),
                        Row(
                          children: [
                            const Icon(
                              Icons.watch_later_outlined,
                              color: Colors.white,
                              size: 16,
                            ),
                            const SizedBox(width: 5),
                            AcmoComponentCountdown(
                              seconds: _controller.currencySales.data!
                                      .currencySales!.remainingTimeSeconds ??
                                  0,
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              if (_controller.items.isEmpty && _controller.hotOffers.isEmpty)
                SliverToBoxAdapter(
                    child: AcmoEmptyView(
                  key: ValueKey(t.offers.title),
                )),
              if (_controller.allItems.isNotEmpty &&
                  _controller.currencySales.data?.currencySales != null)
                SliverPersistentHeader(
                  pinned: true,
                  delegate: AcmoOfferBonusBanner(
                    minHeight: 66,
                    maxHeight: itemHeight + 50,
                    controller: _controller,
                  ),
                ),
              if (_controller.hotOffers.isNotEmpty &&
                  _controller.currencySales.data?.currencySales == null)
                SliverToBoxAdapter(
                  child: AcmoPremiumOfferSlider(
                    itemHeight: itemHeight,
                    controller: _controller,
                  ),
                ),
              if (_controller.items.isNotEmpty)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Other Games',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              SliverList(
                delegate: SliverChildListDelegate(
                  _controller.currencySales.data?.currencySales != null
                      ? _controller.allItems
                          .map((e) => InkWell(
                                onTap: () {
                                  Tyrads.instance.to(AcmoOfferDetailsPage(
                                    id: e.campaignId,
                                  ));
                                },
                                child: AcmoNewOfferWallItem(
                                  item: e,
                                  onButtonClick: () async {
                                    Loading.open();
                                    await _controller.openOffer(
                                      clickUrl: e.tracking.clickUrl,
                                      s2sClickUrl: e.tracking.s2sClickUrl,
                                      isRetryDownload: e.isRetryDownload,
                                      isInstalled: e.isInstalled,
                                      previewUrl: e.app.previewUrl,
                                      campaignId: e.campaignId,
                                    );
                                    Loading.dismiss();
                                  },
                                  currencySaleModel: _controller.currencySales,
                                ),
                              ))
                          .toList()
                      : _controller.items
                          .map((e) => GestureDetector(
                                onTap: () {
                                  Tyrads.instance.to(AcmoOfferDetailsPage(
                                    id: e.campaignId,
                                  ));
                                },
                                child: AcmoNewOfferWallItem(
                                  item: e,
                                  onButtonClick: () async {
                                    Loading.open();
                                    await _controller.openOffer(
                                      clickUrl: e.tracking.clickUrl,
                                      s2sClickUrl: e.tracking.s2sClickUrl,
                                      isRetryDownload: e.isRetryDownload,
                                      isInstalled: e.isInstalled,
                                      previewUrl: e.app.previewUrl,
                                      campaignId: e.campaignId,
                                    );
                                    Loading.dismiss();
                                  },
                                  currencySaleModel: _controller.currencySales,
                                ),
                              ))
                          .toList(),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 100),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 86,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withValues(alpha: 0.0),
                  Colors.black.withValues(alpha: 0.7),
                ],
              ),
            ),
            child: InkWell(
              onTap: (() {
                Tyrads.instance.to(const AcmoActiveOffersPage());
              }),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 42,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onPrimary,
                        borderRadius: BorderRadius.circular(42),
                        border: Border.all(
                          color: Theme.of(context).colorScheme.secondary,
                          width: 2,
                        ),
                      ),
                      child: Center(
                          child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            t.offers.activeOffersCta,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            margin: const EdgeInsets.only(left: 8),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFFF554A),
                            ),
                            child: Center(
                              child: Text(
                                "${_controller.activatedCount.value}+",
                                maxLines: 1,
                                softWrap: false,
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
