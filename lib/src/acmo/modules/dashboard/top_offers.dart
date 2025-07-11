import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/core/components/loading.dart';
import 'package:tyrads_sdk/src/acmo/modules/dashboard/widgets/offer_item.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/components/offer_slider/body.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/controller.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class TopOffersWidget extends StatefulWidget {
  static final GlobalKey<_TopOffersWidgetState> globalKey = GlobalKey<_TopOffersWidgetState>();

  const TopOffersWidget({
    super.key,
    this.showMore = true,
    this.showMyOffers = true,
    this.showMyOffersEmptyView = false,
    this.widgetStyle = 1,
  });

  final bool showMore;
  final bool showMyOffers;
  final bool showMyOffersEmptyView;
  final int widgetStyle;

  @override
  State<TopOffersWidget> createState() => _TopOffersWidgetState();
}

class _TopOffersWidgetState extends State<TopOffersWidget> with WidgetsBindingObserver {
  final _controller = AcmoOffersController();
  List<dynamic>? _cachedHotOffers;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _loadData();
  }

  Future<void> _loadData() async {
    if (_cachedHotOffers == null) {
      setState(() => _isLoading = true);
      await _controller.loadTopOffers();
      setState(() {
        _cachedHotOffers = _controller.hotOffers;
        _isLoading = false;
      });
    }
  }

  void forceRebuild(){
    _refreshData();
  }

  void _refreshData() async {
    await _controller.loadTopOffers();
    setState(() {
      _cachedHotOffers = _controller.hotOffers;
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
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var itemHeight = (MediaQuery.of(context).size.width) / 1.91;

    if (_isLoading && _cachedHotOffers == null) {
      return const AcmoComponentLoading();
    }

    if (_cachedHotOffers == null || _cachedHotOffers!.isEmpty) {
      return widget.showMyOffersEmptyView
          ? const TopOffersMyGamesButton()
          : const SizedBox();
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 2,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        color: Colors.white,
        surfaceTintColor: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 16, 12, 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: Tyrads.instance.colorPremium,
                    child: const Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    t.dashboard.suggestedOffers,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  if (widget.showMore)
                    InkWell(
                      onTap: () {
                        Tyrads.instance.showOffers(context);
                      },
                      child: Row(
                        children: [
                          Text(
                            t.dashboard.moreOffers,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Tyrads.instance.colorPremium,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 12,
                            color: Tyrads.instance.colorPremium,
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            if (widget.widgetStyle == 1)
              ..._cachedHotOffers!.asMap().entries.map((entry) {
                var e = entry.value;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: AcmoOfferListItem(
                    key: ValueKey(t.dashboard.myGames),
                    e: e,
                    index: entry.key,
                  ),
                );
              }),
            if (widget.widgetStyle == 2)
              SizedBox(
                height: 270,
                child: GestureDetector(
                  child: AcmoOfferSliderBody(
                    key: ValueKey(t.dashboard.myGames),
                    controller: _controller,
                    height: itemHeight,
                    shrinkOffset: 0,
                    fromDashboard: true,
                  ),
                ),
              ),
            if (widget.widgetStyle == 3)
              SizedBox(
                height: 100,
                child: GestureDetector(
                  child: AcmoOfferSliderBody(
                    key: ValueKey(t.dashboard.myGames),
                    controller: _controller,
                    height: 195,
                    shrinkOffset: 10,
                    fromDashboard: true,
                    showOnlyFooter: true,
                  ),
                ),
              ),
            if (widget.widgetStyle == 4)
              Container(
                height: itemHeight + 30,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: AcmoOfferSliderBody(
                  key: ValueKey(t.dashboard.myGames),
                  controller: _controller,
                  height: itemHeight,
                  shrinkOffset: 10,
                  fromDashboard: true,
                  showOnlyImage: true,
                ),
              ),
            if (widget.showMyOffers)  TopOffersMyGamesButton(
              key: ValueKey(t.dashboard.myGames),
            ),
          ],
        ),
      ),
    );
  }
}

class TopOffersMyGamesButton extends StatelessWidget {
  const TopOffersMyGamesButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB( 8, 4, 8, 12),
      child: SizedBox(
        width: double.infinity,
        child: TextButton(
            onPressed: () => Tyrads.instance.showOffers(context,
                route: TyradsDeepRoutes.CAMPAIGNS_ACTIVATED),
            style: TextButton.styleFrom(
              backgroundColor: Tyrads.instance.colorPremium,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    10), // Added this for squared corners with slight curve
              ),
            ),
            child: Text(t.dashboard.myGames,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w600))),
      ),
    );
  }
}