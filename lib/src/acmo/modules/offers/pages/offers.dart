import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tyrads_sdk/src/acmo/core/components/appbar_offerwall.dart';
import 'package:tyrads_sdk/src/acmo/core/components/loading.dart';
import 'package:tyrads_sdk/src/acmo/core/components/overlay_loading.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/page.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/page_web.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/widgets/countdown.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/components/empty_view.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/controller.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/new_offerwall/widgets/bonus_banner.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/new_offerwall/widgets/new_offerwall_item.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/pages/active_offers.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

import '../components/offer_slider/offer_slider.dart';

class AcmoOffersPage extends StatefulWidget {
  const AcmoOffersPage({super.key});

  @override
  State<AcmoOffersPage> createState() => _AcmoOffersPageState();
}

class _AcmoOffersPageState extends State<AcmoOffersPage> {
  final _controller = AcmoOffersController();
  late final _futureData = _controller.loadOffers();
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (Tyrads.instance.route == TyradsDeepRoutes.CAMPAIGNS_ACTIVATED) {
        Tyrads.instance.to(const AcmoActiveOffersPage());
        Tyrads.instance.route = null;
      } else if (Tyrads.instance.route == TyradsDeepRoutes.CAMPAIGN_DETAILS ||
          Tyrads.instance.route == TyradsDeepRoutes.CAMPAIGN_TICKETS) {
        if (Tyrads.instance.campaignID != null) {
          if (kIsWeb) {
            Tyrads.instance.to(AcmoOfferDetailsPageWeb(
              id: Tyrads.instance.campaignID!,
            ));
          } else {
            Tyrads.instance.to(AcmoOfferDetailsPage(
              id: Tyrads.instance.campaignID!,
            ));
          }
        } else {
          print(
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
            if (!snapshot.hasData) return const AcmoComponentLoading();
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
                    color: const Color(0xFFFFEAEA),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Bonus Expires in",
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF9D0000),
                            )),
                        Row(
                          children: [
                            const Icon(
                              Icons.watch_later_outlined,
                              color: Color(0xFF9D0000),
                              size: 16,
                            ),
                            const SizedBox(width: 5),
                            AcmoComponentCountdown(
                              seconds: (_controller
                                          .currencySales
                                          .data!
                                          .currencySales!
                                          .dateEnd!
                                          .millisecondsSinceEpoch -
                                      DateTime.now().millisecondsSinceEpoch) ~/
                                  1000,
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFF9D0000),
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
              if (_controller.hotOffers.isNotEmpty)
                SliverPersistentHeader(
                  pinned: true,
                  delegate:
                      _controller.currencySales.data?.currencySales != null
                          ? AcmoOfferBonusBanner(
                              minHeight: 66,
                              maxHeight: itemHeight + 50,
                              controller: _controller,
                            )
                          : AcmoOfferSlider(
                              minHeight: 90,
                              maxHeight: itemHeight + 90,
                              controller: _controller,
                              openPlayStore: true,
                            ),
                ),
              SliverList(
                delegate: SliverChildListDelegate(
                  _controller.currencySales.data?.currencySales != null
                      ? _controller.allItems
                          .map((e) => InkWell(
                                onTap: () {
                                  if (kIsWeb) {
                                    Tyrads.instance.to(AcmoOfferDetailsPageWeb(
                                      id: e.campaignId,
                                    ));
                                  } else {
                                    Tyrads.instance.to(AcmoOfferDetailsPage(
                                      id: e.campaignId,
                                    ));
                                  }
                                },
                                child: AcmoNewOfferWallItem(
                                  item: e,
                                  onButtonClick: () async {
                                    Loading.open();
                                    await _controller.openOffer(e);
                                    Loading.dismiss();
                                  },
                                  currencySaleModel: _controller.currencySales,
                                ),
                              ))
                          .toList()
                      : _controller.items
                          .map((e) => InkWell(
                                onTap: () {
                                  if (kIsWeb) {
                                    Tyrads.instance.to(AcmoOfferDetailsPageWeb(
                                      id: e.campaignId,
                                    ));
                                  } else {
                                    Tyrads.instance.to(AcmoOfferDetailsPage(
                                      id: e.campaignId,
                                    ));
                                  }
                                },
                                child: AcmoNewOfferWallItem(
                                  item: e,
                                  onButtonClick: () async {
                                    Loading.open();
                                    await _controller.openOffer(e);
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
          child: InkWell(
            onTap: (() {
              Tyrads.instance.to(const AcmoActiveOffersPage());
            }),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 40,
                    color: Theme.of(context).colorScheme.secondary,
                    child: Center(
                        child: Text(
                      t.offers.activeOffersCta,
                      // _controller.activeItems.length.toString() +
                      //     " ${AppTextKeys.ACTIVE_OFFERS.tr}!",
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                    )),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
