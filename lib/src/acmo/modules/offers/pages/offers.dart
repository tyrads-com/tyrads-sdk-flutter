import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tyrads_sdk/src/acmo/core/components/appbar_offerwall.dart';
import 'package:tyrads_sdk/src/acmo/core/components/loading.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/page.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/components/list_item_card.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/controller.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/pages/active_offers.dart';
import 'package:tyrads_sdk/src/app_config.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoOffersPage extends StatefulWidget {
  const AcmoOffersPage({super.key});

  @override
  State<AcmoOffersPage> createState() => _AcmoOffersPageState();
}

class _AcmoOffersPageState extends State<AcmoOffersPage> {
  final _controller = AcmoOffersController();
  late final _futureData = _controller.loadOffers();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AcmoAppBarOfferwall(titleText: "Offers"),
      body: FutureBuilder(
          future: _futureData,
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const AcmoComponentLoading();
            return  AcmoOffersBody(controller: _controller);
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

class _AcmoOffersBodyState extends State<AcmoOffersBody> with WidgetsBindingObserver {
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
    return Stack(
      children: [
        SmartRefresher(
          controller: _refreshController,
          header: const WaterDropMaterialHeader(),
          enablePullDown: true,
          enablePullUp: false,
          onRefresh: () async {
            await _controller.loadOffers();
            _refreshController.refreshCompleted();
            setState(() {});
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                ..._controller.items
                    .map((e) => InkWell(
                        onTap: () {
                          Tyrads.instance.to(AcmoOfferDetailsPage(
                            id: e.campaignId,
                          ));
                        },
                        child: AcmoComponentOfferItemCard(
                          item: e,
                        )))
                    .toList(),
                const SizedBox(
                  height: 100,
                )
              ],
            ),
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
                    color: AcmoConfig.SECONDARY_COLOR,
                    child: const Center(
                        child: Text(
                      'Active offers',
                      // _controller.activeItems.length.toString() +
                      //     " ${AppTextKeys.ACTIVE_OFFERS.tr}!",
                      style: TextStyle(color: Colors.white, fontSize: 14),
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
