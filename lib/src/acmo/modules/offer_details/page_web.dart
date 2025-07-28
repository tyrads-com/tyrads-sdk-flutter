// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_network/image_network.dart';
import 'package:numeral/numeral.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:styled_text/styled_text.dart';
import 'package:tyrads_sdk/src/acmo/core/components/appbar_with_help.dart';
import 'package:tyrads_sdk/src/acmo/core/components/button_offer_view.dart';
import 'package:tyrads_sdk/src/acmo/core/components/loading.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/platform.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/toasts.dart';
import 'package:tyrads_sdk/src/acmo/modules/help/page.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/controller.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/widgets/impression_tracker.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

import 'widgets/countdown.dart';
import 'widgets/normal_events.dart';
import 'widgets/purchase_card.dart';

class AcmoOfferDetailsPageWeb extends StatefulWidget {
  final int id;

  const AcmoOfferDetailsPageWeb({super.key, required this.id});

  @override
  State<AcmoOfferDetailsPageWeb> createState() =>
      _AcmoOfferDetailsPageWebState();
}

class _AcmoOfferDetailsPageWebState extends State<AcmoOfferDetailsPageWeb> {
  late final _controller = AcmoOffersDetailsController(widget.id);
  static const double IMAGE_ASPECT_RATIO = 1.91;
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _playNowKey = GlobalKey();
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  var isInstalled = ValueNotifier(false);
  late final _futureData = _controller.loadOfferDetails(widget.id);
  var itemHeight = 0.0;
  var itemWidth = 0.0;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      itemWidth = MediaQuery.of(context).size.width < 1200.0
          ? MediaQuery.of(context).size.width
          : 1200.0;
      itemHeight = itemWidth / IMAGE_ASPECT_RATIO;
    } else {
      itemHeight = MediaQuery.of(context).size.height < 627.0
          ? MediaQuery.of(context).size.height
          : 627.0;
      itemWidth = itemHeight * IMAGE_ASPECT_RATIO;
    }
    return Scaffold(
        appBar: AcmoAppBarWithHelp(
          titleText: t.offerDetails.title,
          onTap: () {
            Tyrads.instance.to(AcmoHelpPage(
              id: widget.id, currencyUrl: '',
            ));
          },
          showHelp: isInstalled,
          // playNowKey: _playNowKey,
        ),
        body: FutureBuilder(
            future: _futureData,
            builder: (context, snapshot) {
              if (!snapshot.hasData) return const AcmoComponentLoading();
              WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                isInstalled.value = _controller.item.isInstalled;
              });
              return Stack(
                children: [
                  ImpressionTracker(controller: _controller),
                  SmartRefresher(
                    controller: _refreshController,
                    header: const WaterDropMaterialHeader(),
                    enablePullDown: true,
                    enablePullUp: false,
                    onRefresh: () async {
                      await _controller.loadOfferDetails(widget.id);
                      _refreshController.refreshCompleted();
                      if (mounted) {
                        setState(() {});
                      }
                    },
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: itemHeight,
                            child: Stack(
                              children: [
                                Container(
                                    height: itemHeight,
                                    width: MediaQuery.sizeOf(context).width,
                                    color: Colors.black),
                                SizedBox(
                                  child: Center(
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(0)),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: ImageNetwork(
                                          image: _controller
                                                  .item
                                                  .creative
                                                  .creativePacks
                                                  .first
                                                  .creatives
                                                  ?.first
                                                  ?.fileUrl ??
                                              '',
                                          width: itemWidth,
                                          height: itemHeight,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Container(
                                      height: itemHeight,
                                      width: itemWidth,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Colors.black.withOpacity(0.9),
                                          Colors.black.withOpacity(0.7),
                                          Colors.black.withOpacity(0.5),
                                          Colors.black.withOpacity(0.3),
                                          Colors.black.withOpacity(0.1),
                                          Colors.black.withOpacity(0.0),
                                          Colors.black.withOpacity(0.0),
                                          Colors.black.withOpacity(0.0),
                                          Colors.black.withOpacity(0.1),
                                          Colors.black.withOpacity(0.5),
                                          Colors.black.withOpacity(0.7),
                                          Colors.black.withOpacity(0.9),
                                        ],
                                      ))),
                                ),
                                Center(
                                  child: Container(
                                      height: itemHeight,
                                      width: itemWidth,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                          Colors.black.withOpacity(0.9),
                                          Colors.black.withOpacity(0.7),
                                          Colors.black.withOpacity(0.5),
                                          Colors.black.withOpacity(0.3),
                                          Colors.black.withOpacity(0.1),
                                          Colors.black.withOpacity(0.0),
                                          Colors.black.withOpacity(0.0),
                                        ],
                                      ))),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: SizedBox(
                                    width: itemWidth,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 24),
                                      child: ListTile(
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                vertical: -8, horizontal: 8),
                                        leading: SizedBox.square(
                                          dimension: 48,
                                          child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(8)),
                                            child: ImageNetwork(
                                              image: _controller
                                                  .item.app.thumbnail,
                                              width: 48,
                                              height: 48,
                                            ),
                                          ),
                                        ),
                                        title: Text(_controller.item.app.title,
                                            maxLines: 1,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14,
                                                color: Colors.white)),
                                        subtitle: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                ImageNetwork(
                                                    image: _controller
                                                        .item
                                                        .currency
                                                        .adUnitCurrencyIcon,
                                                    width: 16,
                                                    height: 16),
                                                const SizedBox(
                                                  width: 4,
                                                ),
                                                Text(
                                                  _controller
                                                      .item
                                                      .campaignPayout
                                                      .totalPayoutConverted
                                                      .numeral(digits: 2),
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              _controller.item.currency
                                                  .adUnitCurrencyName,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 14,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                        //                                         trailing: const Padding(
                                        //   padding: EdgeInsets.all(8.0),
                                        //   child: SizedBox(
                                        //       width: 74,
                                        //       height: 31,
                                        //       child: AcmoButton_3(
                                        //         label: "Play Now",
                                        //         onTap: null,
                                        //       )),
                                        // ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          if (_controller.item.capReached)
                            Container(
                                constraints:
                                    const BoxConstraints(minHeight: 60),
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(164, 164, 164, 1),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: Text(
                                      t.offerDetails.capReached,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                )),

                          if (_controller.item.isRetryDownload &&
                              !_controller.item.isInstalled)
                            Container(
                                constraints:
                                    const BoxConstraints(minHeight: 60),
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(241, 124, 15, 1),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 38, vertical: 10),
                                    child: StyledText(
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                      text: t.offerDetails.retryDownloadMessage,
                                      tags: {
                                        'b': StyledTextTag(
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      },
                                    ),
                                  ),
                                )),
                          if (_controller.item.expiredOn != null &&
                              ((_controller.item.expiredOn!
                                          .millisecondsSinceEpoch -
                                      DateTime.now().millisecondsSinceEpoch) >
                                  0))
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 0),
                              child: Container(
                                  constraints:
                                      const BoxConstraints(minHeight: 36),
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(241, 124, 15, 1),
                                    //   borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        t.offerDetails.completeWithin,
                                        style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      AcmoComponentCountdown(
                                        seconds: (_controller.item.expiredOn!
                                                    .millisecondsSinceEpoch -
                                                DateTime.now()
                                                    .millisecondsSinceEpoch) ~/
                                            1000,
                                      ),
                                    ],
                                  )),
                            ),
                          const SizedBox(
                            height: 24,
                          ),

                          Center(
                            child: SizedBox(
                              width: itemWidth,
                              child: Wrap(
                                alignment: WrapAlignment.spaceBetween,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                children: [
                                  ConstrainedBox(
                                    constraints:
                                        const BoxConstraints(maxWidth: 600),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            height: 280,
                                            child: AcmoOfferEventsNormal(
                                              controller: _controller,
                                            )),
                                        const SizedBox(
                                          height: 24,
                                        ),
                                        if (!_controller.item.isInstalled)
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 31),
                                            child: DefaultTextStyle.merge(
                                              style: const TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black54),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  if (defaultTargetPlatform ==
                                                      TargetPlatform.iOS)
                                                    Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          StyledText(
                                                            text: t.offerDetails
                                                                .downloadIntro,
                                                            tags: {
                                                              "b": StyledTextTag(
                                                                  style: const TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700))
                                                            },
                                                          ),
                                                          const SizedBox(
                                                              height: 16),
                                                          StyledText(
                                                            text: t.offerDetails
                                                                .iosSteps.step1,
                                                            tags: {
                                                              "b": StyledTextTag(
                                                                  style: const TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700))
                                                            },
                                                          ),
                                                          const SizedBox(
                                                              height: 16),
                                                          StyledText(
                                                            text: t.offerDetails
                                                                .iosSteps.step2,
                                                            tags: {
                                                              "b": StyledTextTag(
                                                                  style: const TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700))
                                                            },
                                                          ),
                                                          const SizedBox(
                                                              height: 16),
                                                          StyledText(
                                                            text: t.offerDetails
                                                                .iosSteps.step3,
                                                            tags: {
                                                              "b": StyledTextTag(
                                                                  style: const TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700))
                                                            },
                                                          ),
                                                          const SizedBox(
                                                              height: 16),
                                                          StyledText(
                                                            text: t.offerDetails
                                                                .downloadNote,
                                                            tags: {
                                                              "b": StyledTextTag(
                                                                  style: const TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700))
                                                            },
                                                          ),
                                                        ])
                                                  else
                                                    Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          StyledText(
                                                            text: t.offerDetails
                                                                .downloadIntro,
                                                            tags: {
                                                              "b": StyledTextTag(
                                                                  style: const TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700))
                                                            },
                                                          ),
                                                          const SizedBox(
                                                              height: 16),
                                                          StyledText(
                                                            text: t
                                                                .offerDetails
                                                                .androidSteps
                                                                .step1,
                                                            tags: {
                                                              "b": StyledTextTag(
                                                                  style: const TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700))
                                                            },
                                                          ),
                                                          const SizedBox(
                                                              height: 16),
                                                          StyledText(
                                                            text: t
                                                                .offerDetails
                                                                .androidSteps
                                                                .step2,
                                                            tags: {
                                                              "b": StyledTextTag(
                                                                  style: const TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700))
                                                            },
                                                          ),
                                                          const SizedBox(
                                                              height: 16),
                                                          StyledText(
                                                            text: t
                                                                .offerDetails
                                                                .androidSteps
                                                                .step3,
                                                            tags: {
                                                              "b": StyledTextTag(
                                                                  style: const TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700))
                                                            },
                                                          ),
                                                          const SizedBox(
                                                              height: 16),
                                                          StyledText(
                                                            text: t.offerDetails
                                                                .downloadNote,
                                                            tags: {
                                                              "b": StyledTextTag(
                                                                  style: const TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700))
                                                            },
                                                          )
                                                        ]),
                                                  const SizedBox(
                                                    height: 54,
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        else
                                          Column(
                                            children: [
                                              PurchaseCard(
                                                duplicateEvents:
                                                    _controller.duplicateEvents,
                                                purchaseEvents:
                                                    _controller.purchaseEvents,
                                                dailyPurchaseEvents: _controller
                                                    .dailyPurchaseEvents,
                                                maxPoints: _controller
                                                    .item
                                                    .microCharge
                                                    .totalConversion,
                                                earnedPoints: _controller
                                                    .item
                                                    .microCharge
                                                    .earnedConversion,
                                                currencyIcon: _controller
                                                    .item
                                                    .currency
                                                    .adUnitCurrencyIcon,
                                                currencyName: _controller
                                                    .item
                                                    .currency
                                                    .adUnitCurrencyName,
                                                controller: _controller,
                                              ),
                                              const SizedBox(
                                                height: 36,
                                              )
                                            ],
                                          ),
                                      ],
                                    ),
                                  ),
                                  if (kIsWeb)
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              // vertical: 38,
                                              horizontal: 16),
                                          child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(16)),
                                            child: SizedBox(
                                              width: 380,
                                              height: 402,
                                              child: Column(
                                                children: [
                                                  Container(
                                                    color:
                                                        const Color(0xFFD9D9D9),
                                                    height: 32,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Row(
                                                        children: [
                                                          Text(t
                                                              .offerDetails
                                                              .availableOn
                                                              .availableOn),
                                                          const Spacer(),
                                                          if (_controller.item
                                                                  .app.store
                                                                  .toLowerCase() ==
                                                              'apple')
                                                            Assets.icons
                                                                .appleLogo
                                                                .image(
                                                                    height: 16,
                                                                    width: 16)
                                                          else
                                                            Assets.icons
                                                                .androidLogo
                                                                .image(
                                                                    height: 16,
                                                                    width: 16)
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    color: const Color.fromRGBO(
                                                        187, 187, 187, 0.11),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              16.0),
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Text(
                                                                t
                                                                    .offerDetails
                                                                    .availableOn
                                                                    .method1,
                                                                style: const TextStyle(
                                                                    color: Colors
                                                                        .black54,
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    vertical:
                                                                        3),
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  t
                                                                      .offerDetails
                                                                      .availableOn
                                                                      .method1ScanQR,
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: SizedBox(
                                                              width: 136,
                                                              height: 136,
                                                              child: PrettyQrView.data(
                                                                  data: _controller
                                                                          .item
                                                                          .tracking
                                                                          .clickUrl ??
                                                                      ''),
                                                            ),
                                                          ),
                                                          const Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    vertical:
                                                                        4),
                                                            child: Row(
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Divider(
                                                                    color: Colors
                                                                        .black54,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Row(
                                                            children: [
                                                              Text(
                                                                t
                                                                    .offerDetails
                                                                    .availableOn
                                                                    .method2,
                                                                style: const TextStyle(
                                                                    color: Colors
                                                                        .black54,
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    vertical:
                                                                        3),
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  t
                                                                      .offerDetails
                                                                      .availableOn
                                                                      .method2CopyURL,
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Card(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      top: 8,
                                                                      bottom: 8,
                                                                      left: 8),
                                                              child: SizedBox(
                                                                width: double
                                                                    .infinity,
                                                                child:
                                                                    TextFormField(
                                                                  readOnly:
                                                                      true,
                                                                  controller: TextEditingController(
                                                                      text: _controller
                                                                          .item
                                                                          .tracking
                                                                          .clickUrl),
                                                                  decoration:
                                                                      InputDecoration(
                                                                          isDense:
                                                                              true,
                                                                          border:
                                                                              const OutlineInputBorder(),
                                                                          suffixIcon:
                                                                              InkWell(
                                                                            onTap:
                                                                                () async {
                                                                              await Clipboard.setData(ClipboardData(text: _controller.item.tracking.clickUrl ?? ''));
                                                                              WidgetsBinding.instance.addPostFrameCallback((_) {
                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                  SnackBar(
                                                                                    content: Text(t.offerDetails.availableOn.popUpButtonSuccessCopyURL),
                                                                                    width: 200,
                                                                                    behavior: SnackBarBehavior.floating,
                                                                                  ),
                                                                                );
                                                                              });
                                                                            },
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsets.all(2.0),
                                                                              child: Container(
                                                                                decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary, borderRadius: BorderRadius.circular(2)),
                                                                                child: Center(
                                                                                    child: Text(
                                                                                  t.offerDetails.availableOn.buttonCopy,
                                                                                  style: const TextStyle(color: Colors.white, fontSize: 12),
                                                                                )),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          suffixIconConstraints: BoxConstraints.tight(const Size(
                                                                              70,
                                                                              38)),
                                                                          contentPadding: const EdgeInsets
                                                                              .symmetric(
                                                                              vertical: 9,
                                                                              horizontal: 3)),
                                                                ),
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  if (kIsWeb)
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 300),
                                        child: AcmoButtonOfferView(
                                          key: _playNowKey,
                                          label: (_controller
                                                      .item.isRetryDownload &&
                                                  !_controller.item.isInstalled)
                                              ? t.offerDetails.retry
                                              : t.offerDetails.playNow,
                                          onTap: () async {
                                            _controller.openOffer();
                                          },
                                          disabledLabel: t.offerDetails.playNow,
                                          isDisabled:
                                              _controller.item.capReached,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (AcmoPlatform.isAndroid || AcmoPlatform.isIOS)
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            AcmoButtonOfferView(
                              label: t.offerDetails.playNow,
                              onTap: () async {
                                _controller.openOffer();
                              },
                              disabledLabel: t.offerDetails.playNow,
                              isDisabled: _controller.item.capReached,
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              );
            }));
  }
}
