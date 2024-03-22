import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tyrads_sdk/src/acmo/core/components/appbar.dart';
import 'package:tyrads_sdk/src/acmo/core/components/loading.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/page.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/components/list_item_card.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/controller.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoActiveOffersPage extends StatefulWidget {
  const AcmoActiveOffersPage({super.key});

  @override
  State<AcmoActiveOffersPage> createState() => _AcmoActiveOffersPageState();
}

class _AcmoActiveOffersPageState extends State<AcmoActiveOffersPage> {
  final _controller = AcmoOffersController();

  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  onItemClick(id) {
    Tyrads.instance.to(AcmoOfferDetailsPage(
      id: id,
    ));
  }

  var showCompleted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AcmoAppBar(
        titleText: "Active Offers",
      ),
      body: FutureBuilder(
          future: _controller.loadActiveOffers(),
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
                    await _controller.loadActiveOffers();
                    _refreshController.refreshCompleted();
                    setState(() {});
                  },
                  child: SingleChildScrollView(
                    child: Column(children: [
                      if (_controller.expiringItems.isNotEmpty)
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: ListTile(
                              visualDensity: VisualDensity.compact,
                              title: Text(
                                "Expiring Offers",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              )),
                        ),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          var item = _controller.expiringItems[index];
                          return InkWell(
                            onTap: () {
                              onItemClick(item.campaignId);
                            },
                            child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: AcmoComponentOfferItemCard(item: item)),
                          );
                        },
                        itemCount: _controller.expiringItems.length,
                        shrinkWrap: true,
                      ),
                      if (_controller.activeItems.isNotEmpty)
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: ListTile(
                            visualDensity: VisualDensity.compact,
                            title: Text(
                              "Active Offers",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          var item = _controller.activeItems[index];
                          return InkWell(
                            onTap: () {
                              onItemClick(item.campaignId);
                            },
                            child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: AcmoComponentOfferItemCard(item: item)),
                          );
                        },
                        itemCount: _controller.activeItems.length,
                        shrinkWrap: true,
                      ),
                      if (_controller.completedItems.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: ListTile(
                              visualDensity: VisualDensity.compact,
                              title: const Text(
                                "Completed Offers",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ),
                              trailing: IconButton(
                                icon: Icon(showCompleted
                                    ? Icons.arrow_drop_up_outlined
                                    : Icons.arrow_drop_down_outlined),
                                onPressed: () {
                                  setState(() {
                                    showCompleted = !showCompleted;
                                  });
                                },
                              )),
                        ),
                      if (showCompleted)
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            var item = _controller.completedItems[index];
                            return InkWell(
                              onTap: () {
                                onItemClick(item.campaignId);
                              },
                              child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  child:
                                      AcmoComponentOfferItemCard(item: item)),
                            );
                          },
                          itemCount: _controller.completedItems.length,
                          shrinkWrap: true,
                        ),
                      const SizedBox(
                        height: 150,
                      )
                    ]),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: InkWell(
                    onTap: (() {
                      Navigator.pop(context);
                    }),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 40,
                            color: Colors.grey,
                            child: const Center(
                                child: Text(
                              'Back',
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
