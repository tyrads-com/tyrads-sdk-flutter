import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tyrads_sdk/src/acmo/core/components/loading.dart';
import 'package:tyrads_sdk/src/acmo/modules/tickets/controller.dart';
import 'package:tyrads_sdk/src/acmo/modules/tickets/issues_raised.dart';
import 'package:tyrads_sdk/src/app_config.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

import '../../core/components/appbar.dart';
import '../../core/components/button_3_cta.dart';
import '../../../gen/assets.gen.dart';

class AcmoTicketsPage extends StatelessWidget {
  const AcmoTicketsPage({Key? key, required this.id}) : super(key: key);
  final int id;

  final bottomNavigationIndex = 1;
  @override
  Widget build(BuildContext context) {
    // if (_controller.loading.isTrue) return AcmoComponentPageLoading();
    return Scaffold(
        appBar: const AcmoAppBar(
          titleText: "I didn't receive my points",
        ),
        body: AcmoBodyOfferIssues(
          id: id,
        ));
  }
}

class AcmoBodyOfferIssues extends StatefulWidget {
  const AcmoBodyOfferIssues({
    Key? key,
    required this.id,
  }) : super(key: key);

  final int id;
  @override
  State<AcmoBodyOfferIssues> createState() => _AcmoBodyOfferIssuesState();
}

class _AcmoBodyOfferIssuesState extends State<AcmoBodyOfferIssues> {
  late final _controller = AcmoTicketsController(widget.id);

  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _controller.load(widget.id),
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
                  await _controller.load(widget.id);
                  _refreshController.refreshCompleted();
                  setState(() {});
                },
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(32.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'We are more than happy to help!',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Please select which task(s) that you think you achieved but you didn’t get the TPoints',
                              style: TextStyle(
                                  fontSize: 11, color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 24, right: 24, bottom: 10, top: 0),
                        child: Column(
                          children: [
                            ..._controller.items.map((item) {
                              return Column(
                                children: [
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 56,
                                      ),
                                      Text(
                                        item.category,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Column(
                                      children: item.events.map((e) {
                                    return Column(
                                      children: [
                                        Row(
                                          children: [
                                            if ((e.isTicketSubmitted))
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 12, right: 16),
                                                child: Assets.images.pendingIcon
                                                    .image(width: 16),
                                              )
                                            else
                                              Checkbox(
                                                onChanged: e.isTicketSubmitted
                                                    ? null
                                                    : (bool? value) {
                                                        if (_controller
                                                            .submitEventIds
                                                            .contains(e.id)) {
                                                          _controller
                                                              .submitEventIds
                                                              .remove(e.id);
                                                        } else {
                                                          _controller
                                                              .submitEventIds
                                                              .clear();
                                                          _controller
                                                              .submitEventIds
                                                              .add(e.id);
                                                        }
                                                        setState(() {});
                                                      },
                                                value: _controller
                                                    .submitEventIds
                                                    .contains(e.id),
                                              ),
                                            Expanded(
                                              child: Card(
                                                color: e.isTicketSubmitted
                                                    ? Colors.white10
                                                    : null,
                                                child: ListTile(
                                                    dense: true,
                                                    title: Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 150,
                                                          child: Text(
                                                            e.payoutType.toLowerCase() ==
                                                                    "cpi"
                                                                ? "Download Failed"
                                                                : e.eventName,
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 13,
                                                                color: e.isTicketSubmitted
                                                                    ? AcmoConfig
                                                                        .SECONDARY_COLOR
                                                                    : Colors
                                                                        .black),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          width: 4,
                                                        ),
                                                      ],
                                                    ),
                                                    trailing: SizedBox(
                                                      width: 50,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          if (e
                                                              .isTicketSubmitted)
                                                            const Icon(
                                                              Icons.check,
                                                              size: 16,
                                                              color: AcmoConfig
                                                                  .SECONDARY_COLOR,
                                                            ),
                                                        ],
                                                      ),
                                                    )),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    );
                                  }).toList()),
                                ],
                              );
                            }).toList(),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 200,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: AcmoButton_3_Cta(
                    isLoading: _controller.submiting,
                    label: "Submit",
                    onTap: () async {
                      await _controller.submitTicket();
                      Tyrads.instance.to(const AcmoTicketRaisedPage());
                    },
                  ),
                ),
              )
            ],
          );
        });
  }
}
