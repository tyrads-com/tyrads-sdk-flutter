import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyrads_sdk/src/acmo/core/components/custom_slider.dart';
import 'package:tyrads_sdk/src/acmo/core/constants/key_names.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/platform.dart';
import 'package:tyrads_sdk/src/acmo/modules/premium_widgets/controller.dart';
import 'package:tyrads_sdk/src/acmo/modules/premium_widgets/models/offers_model/offers.dart';
import 'package:tyrads_sdk/src/acmo/modules/premium_widgets/widgets/active_offer_button.dart';
import 'package:tyrads_sdk/src/acmo/modules/premium_widgets/widgets/offer_list_item.dart';
import 'package:tyrads_sdk/src/acmo/modules/premium_widgets/widgets/card_container.dart';
import 'package:tyrads_sdk/src/acmo/modules/premium_widgets/widgets/new_offerwall_item.dart';
import 'package:tyrads_sdk/src/acmo/modules/premium_widgets/widgets/premium_widget_loading.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class TopOffersWidget extends StatefulWidget {
  const TopOffersWidget({
    super.key,
    this.widgetStyle = PremiumWidgetStyles.list,
  });

  final PremiumWidgetStyles widgetStyle;

  @override
  State<TopOffersWidget> createState() => _TopOffersWidgetState();
}

class _TopOffersWidgetState extends State<TopOffersWidget>
    with WidgetsBindingObserver {
  final _controller = AcmoPremiumWidgetsController.instance;
  List<dynamic>? _cachedHotOffers;
  bool _isLoading = true;
  int _activeOffersCount = 1;
  final Map<int, ValueNotifier<bool>> _itemLoadingNotifiers = {};
  final ValueNotifier<int?> loadingIndex = ValueNotifier(null);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    AcmoPremiumWidgetsController.instance.attach(_refreshData);
    _loadData();
  }

  Future<void> _loadData() async {
    if (_cachedHotOffers == null) {
      setState(() => _isLoading = true);
      await _controller.loadTopOffers();
      setState(() {
        _cachedHotOffers = _controller.hotOffers;
        _isLoading = false;
        _activeOffersCount = _controller.activatedCount.value;
        _initializeItemLoadingNotifiers();
      });
    }
  }

  void _initializeItemLoadingNotifiers() {
    _itemLoadingNotifiers.clear(); // Clear existing notifiers
    for (var offer in _cachedHotOffers!) {
      if (offer is AcmoOffersModel) {
        _itemLoadingNotifiers[offer.campaignId] = ValueNotifier(false);
      }
    }
  }

  void forceRebuild() {
    _refreshData();
  }

  void _refreshData() async {
    await _controller.loadTopOffers();
    setState(() {
      _cachedHotOffers = _controller.hotOffers;
      _activeOffersCount = _controller.activatedCount.value;
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _refreshData();
    }
  }

  @override
  void dispose() {
    AcmoPremiumWidgetsController.instance.detach();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var itemHeight = (MediaQuery.of(context).size.width) / 1.91;

    if (_isLoading && _cachedHotOffers == null) {
      return PremiumWidgetsLoading(
        widgetStyle: widget.widgetStyle,
        itemHeight: itemHeight,
      );
    }

    if (_cachedHotOffers == null ||
        _cachedHotOffers!.isEmpty) {
      return Container(
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 24,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Assets.images.premiumEmptybg.provider(),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          spacing: 10,
          children: [
            Text(
              'Keep Playing!\nExciting Rewards Await!',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Tyrads.instance.showOffers(
                  context,
                  route: TyradsDeepRoutes.ACTIVE_OFFERS,
                  launchMode: Tyrads.instance.launchMode,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: const Size(double.maxFinite, 34),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Continue Playing',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Tyrads.instance.colorPremium ??
                      Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ],
        ),
      );
    }
    var privacyAccepted = Tyrads.instance.prefs.getBool(
            AcmoKeyNames.PRIVACY_ACCEPTED_FOR_USER_ID +
                Tyrads.instance.publisherUserID) ??
        false;
    return CardContainer(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.25),
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              top: 16,
              right: 16,
            ),
            child: Row(
              children: [
                Assets.icons.diamond.image(
                  height: 12,
                  color: Tyrads.instance.colorPremium ??
                      Theme.of(context).colorScheme.secondary,
                ),
                const SizedBox(width: 10),
                Text(
                  'Premium Games',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Tyrads.instance.colorPremium ??
                        Theme.of(context).colorScheme.secondary,
                  ),
                ),
                const Spacer(),
                  InkWell(
                    onTap: () {
                      Tyrads.instance.showOffers(
                        context,
                        launchMode: Tyrads.instance.launchMode,
                      );
                    },
                    child: Row(
                      spacing: 4,
                      children: [
                        Text(
                          t.dashboard.moreOffers,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: Tyrads.instance.colorPremium ??
                                Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                        RotatedBox(
                          quarterTurns: 1,
                          child: Assets.icons.angleUp.image(
                            width: 12,
                            color: Tyrads.instance.colorPremium ??
                                Theme.of(context).colorScheme.secondary,
                          ),
                        )
                      ],
                    ),
                  ),
              ],
            ),
          ),
          if (widget.widgetStyle == PremiumWidgetStyles.list)
            const SizedBox(
              height: 16,
            ),
          if (widget.widgetStyle == PremiumWidgetStyles.list)
            ..._cachedHotOffers!.asMap().entries.map((entry) {
              var e = entry.value as AcmoOffersModel;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: AcmoOfferListItem(
                  key: ValueKey(e.campaignId),
                  loadingIndex: loadingIndex,
                  onButtonTap: AcmoPlatform.isAndroid
                      ? privacyAccepted
                          ? () async {
                              await _controller.openOffer(
                                clickUrl: e.tracking.clickUrl,
                                s2sClickUrl: e.tracking.s2sClickUrl,
                                isRetryDownload: e.isRetryDownload,
                                isInstalled: e.isInstalled,
                                previewUrl: e.app.previewUrl,
                                campaignId: e.campaignId,
                              );
                            }
                          : () => Tyrads.instance.showOffers(
                                context,
                                route: TyradsDeepRoutes.OFFERS,
                                campaignID: e.campaignId,
                                launchMode: Tyrads.instance.launchMode,
                              )
                      : () async {
                          await _controller.openOffer(
                            clickUrl: e.tracking.clickUrl,
                            s2sClickUrl: e.tracking.s2sClickUrl,
                            isRetryDownload: e.isRetryDownload,
                            isInstalled: e.isInstalled,
                            previewUrl: e.app.previewUrl,
                            campaignId: e.campaignId,
                          );
                        },
                  e: e,
                  currencySales: _controller.currencySales.data?.currencySales,
                  index: entry.key,
                ),
              );
            }),
          if (widget.widgetStyle == PremiumWidgetStyles.sliderCards)
            ClipRRect(
              child: SizedBox(
                height: itemHeight + 80,
                child: AcmoCarouselSlider(
                  itemCount: _controller.hotOffers.length,
                  viewportFraction: 1,
                  indicatorInactiveColor:
                      Tyrads.instance.colorPremium?.withValues(alpha: 0.3) ??
                          Theme.of(context)
                              .colorScheme
                              .secondary
                              .withValues(alpha: 0.3),
                  indicatorActiveColor: Tyrads.instance.colorPremium ??
                      Theme.of(context).colorScheme.secondary,
                  itemBuilder: (context, index) {
                    final itemLoadingNotifier =
                        _itemLoadingNotifiers.putIfAbsent(
                            _controller.hotOffers[index].campaignId,
                            () => ValueNotifier(false));
                    return GestureDetector(
                      onTap: () => Tyrads.instance.showOffers(
                        context,
                        route: TyradsDeepRoutes.OFFERS,
                        campaignID: _controller.hotOffers[index].campaignId,
                        launchMode: Tyrads.instance.launchMode,
                      ),
                      child: AcmoNewOfferWallItem(
                        itemScaleFactor: 3.1,
                        currencySaleModel: _controller.currencySales,
                        item: _controller.hotOffers[index],
                        margin: const EdgeInsets.all(16),
                        isPremiumWidget: true,
                        isLoading: itemLoadingNotifier,
                        onButtonClick: AcmoPlatform.isAndroid
                            ? privacyAccepted
                                ? () async {
                                    await _controller.openOffer(
                                      clickUrl: _controller
                                          .hotOffers[index].tracking.clickUrl,
                                      s2sClickUrl: _controller.hotOffers[index]
                                          .tracking.s2sClickUrl,
                                      isRetryDownload: _controller
                                          .hotOffers[index].isRetryDownload,
                                      isInstalled: _controller
                                          .hotOffers[index].isInstalled,
                                      previewUrl: _controller
                                          .hotOffers[index].app.previewUrl,
                                      campaignId: _controller
                                          .hotOffers[index].campaignId,
                                    );
                                  }
                                : () => Tyrads.instance.showOffers(
                                      context,
                                      route: TyradsDeepRoutes.OFFERS,
                                      campaignID: _controller
                                          .hotOffers[index].campaignId,
                                      launchMode: Tyrads.instance.launchMode,
                                    )
                            : () async {
                                await _controller.openOffer(
                                  clickUrl: _controller
                                      .hotOffers[index].tracking.clickUrl,
                                  s2sClickUrl: _controller
                                      .hotOffers[index].tracking.s2sClickUrl,
                                  isRetryDownload: _controller
                                      .hotOffers[index].isRetryDownload,
                                  isInstalled:
                                      _controller.hotOffers[index].isInstalled,
                                  previewUrl: _controller
                                      .hotOffers[index].app.previewUrl,
                                  campaignId:
                                      _controller.hotOffers[index].campaignId,
                                );
                              },
                        onTap: () => Tyrads.instance.showOffers(
                          context,
                          route: TyradsDeepRoutes.OFFERS,
                          campaignID: _controller.hotOffers[index].campaignId,
                          launchMode: Tyrads.instance.launchMode,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          // if (_activeOffersCount == 0)
          //   TextButton(
          //     onPressed: () {
          //       Tyrads.instance.showOffers(
          //         context,
          //         launchMode: Tyrads.instance.launchMode,
          //       );
          //     },
          //     child: Text(
          //       'See Other Offers',
          //       style: GoogleFonts.poppins(
          //         fontSize: 12,
          //         fontWeight: FontWeight.w600,
          //         color: Tyrads.instance.colorPremium ??
          //             Theme.of(context).colorScheme.secondary,
          //       ),
          //     ),
          //   ),
          // if (widget.showMyOffers && _activeOffersCount > 0)
            ActiveOfferButton(
              key: ValueKey(t.dashboard.myGames),
              activatedCount: _activeOffersCount,
            ),
        ],
      ),
    );
  }
}
