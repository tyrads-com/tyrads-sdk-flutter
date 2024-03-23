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

  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AcmoAppBarOfferwall(titleText: "Offers"),
      body: FutureBuilder(
          future: _controller.loadOffers(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const AcmoComponentLoading();
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
                      children: _controller.items
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}
