import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tyrads_sdk/src/acmo/core/components/appbar.dart';
import 'package:tyrads_sdk/src/acmo/core/components/loading.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/page.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/page_web.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/components/empty_view.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/components/list_item_card.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/controller.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoActiveOffersPage extends StatefulWidget {
  const AcmoActiveOffersPage({super.key});

  @override
  State<AcmoActiveOffersPage> createState() => _AcmoActiveOffersPageState();
}

class _AcmoActiveOffersPageState extends State<AcmoActiveOffersPage> {
  final _controller = AcmoOffersController();
  late final _futureData = _controller.loadActiveOffers();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AcmoAppBar(
        titleText: t.activeOffers.title,
      ),
      body: FutureBuilder(
          future: _futureData,
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const AcmoComponentLoading();
            return AcmoActiveOffersBody(controller: _controller);
          }),
    );
  }
}

class AcmoActiveOffersBody extends StatefulWidget {
  const AcmoActiveOffersBody({super.key, required this.controller});

  final AcmoOffersController controller;
  @override
  State<AcmoActiveOffersBody> createState() => _AcmoActiveOffersBodyState();
}

class _AcmoActiveOffersBodyState extends State<AcmoActiveOffersBody>
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

  onItemClick(id) {
    if (kIsWeb) {
      Tyrads.instance.to(AcmoOfferDetailsPageWeb(
        id: id,
      ));
    } else {
      Tyrads.instance.to(AcmoOfferDetailsPage(
        id: id,
      ));
    }
  }

  var showCompleted = false;
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
            await _controller.loadActiveOffers();
            if (mounted) {
              setState(() {
                _refreshController.refreshCompleted();
              });
            }
          },
          child: SingleChildScrollView(
            child: Column(children: [
              if (_controller.expiringItems.isEmpty &&
                  _controller.activeItems.isEmpty &&
                  _controller.completedItems.isEmpty)
                AcmoEmptyView(
                  key: ValueKey(t.activeOffers.title),
                ),
              if (_controller.expiringItems.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ListTile(
                      visualDensity: VisualDensity.compact,
                      title: Text(
                        t.activeOffers.expiringTitle,
                        style: const TextStyle(
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
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: AcmoComponentOfferItemCard(item: item)),
                  );
                },
                itemCount: _controller.expiringItems.length,
                shrinkWrap: true,
              ),
              if (_controller.activeItems.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ListTile(
                    visualDensity: VisualDensity.compact,
                    title: Text(
                      t.activeOffers.activeTitle,
                      style: const TextStyle(
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
                        padding: const EdgeInsets.symmetric(horizontal: 4),
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
                      title: Text(
                        t.activeOffers.completedTitle,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      trailing: IconButton(
                        icon: Icon(showCompleted
                            ? Icons.arrow_drop_up_outlined
                            : Icons.arrow_drop_down_outlined),
                        onPressed: () {
                          if (mounted) {
                            setState(() {
                              showCompleted = !showCompleted;
                            });
                          }
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
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: AcmoComponentOfferItemCard(item: item)),
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
                    child: Center(
                        child: Text(
                      t.activeOffers.back,
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
