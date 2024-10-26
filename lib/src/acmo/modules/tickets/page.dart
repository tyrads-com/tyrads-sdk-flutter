import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:numeral/numeral.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tyrads_sdk/src/acmo/core/components/button_chip_3.dart';
import 'package:tyrads_sdk/src/acmo/core/components/loading.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/toasts.dart';
import 'package:tyrads_sdk/src/acmo/modules/tickets/controller.dart';
import 'package:tyrads_sdk/src/acmo/modules/tickets/model/tickets.dart';
import 'package:tyrads_sdk/src/acmo/modules/tickets/sample_proof.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';
import '../../core/components/appbar.dart';
import '../../core/components/button_3_cta.dart';
import '../../../gen/assets.gen.dart';

class AcmoTicketsPage extends StatefulWidget {
  const AcmoTicketsPage({super.key, required this.id});
  final int id;

  @override
  State<AcmoTicketsPage> createState() => _AcmoTicketsPageState();
}

class _AcmoTicketsPageState extends State<AcmoTicketsPage> {
  late final _controller = AcmoTicketsController(widget.id);

  late final _futureData = _controller.load(widget.id);

  @override
  Widget build(BuildContext context) {
    // if (_controller.loading.isTrue) return AcmoComponentPageLoading();
    return Scaffold(
        appBar: const AcmoAppBar(
          titleText: "I didn't receive my points",
        ),
        body: FutureBuilder(
            future: _futureData,
            builder: (context, snapshot) {
              if (!snapshot.hasData) return const AcmoComponentLoading();
              return AcmoTicketsBody(controller: _controller);
            }));
  }
}

class AcmoTicketsBody extends StatefulWidget {
  const AcmoTicketsBody({super.key, required this.controller});
  final AcmoTicketsController controller;
  @override
  State<AcmoTicketsBody> createState() => _AcmoTicketsBodyState();
}

class _AcmoTicketsBodyState extends State<AcmoTicketsBody>
    with WidgetsBindingObserver {
  final _refreshController = RefreshController(initialRefresh: false);
  late final _controller = widget.controller;
  final ImagePicker _picker = ImagePicker();
  ImageProvider? image;
  String fileName = "";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Stack(
        children: [
          SmartRefresher(
            controller: _refreshController,
            header: const WaterDropMaterialHeader(),
            enablePullDown: true,
            enablePullUp: false,
            onRefresh: () async {
              await _controller.load(_controller.id);
              if (mounted) {
                setState(() {
                  _refreshController.refreshCompleted();
                });
              }              
            },
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _titleTexts(),
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
                              if (item.events.isNotEmpty)
                                _groupCategoryRow(item),
                              Column(
                                  children: item.events.map((e) {
                                return _eventItemRow(e, context, item);
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
                  _formKey.currentState!.save();
                  if (_formKey.currentState!.validate()) {
                    acmoSnackbar("Submitting ticket");
                    await _controller.submitTicket();
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding _titleTexts() {
    return const Padding(
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
            'Please select which task(s) that you think you achieved but you didn’t get the points',
            style: TextStyle(fontSize: 11, color: Colors.black54),
          ),
        ],
      ),
    );
  }

  Row _groupCategoryRow(AcmoTicketsModel item) {
    return Row(
      children: [
        const SizedBox(
          width: 56,
        ),
        Text(
          item.category,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Column _eventItemRow(
      AcmoTicketEventsModel e, BuildContext context, AcmoTicketsModel item) {
    return Column(
      children: [
        Row(
          children: [
            if (e.conversionStatus.toLowerCase() == 'approved' ||
                e.ticketStatus.toLowerCase() == 'approved')
              Container(
                width: 38,
              )
            else if (e.ticketStatus.toLowerCase() == 'rejected')
               SizedBox(
                width: 38,
                 child: Center(
                   child: Container(
                    width: 16,
                    height: 16,
                    color: const Color.fromRGBO(220, 41, 41, 0.7),
                    child: const Icon(
                      Icons.close_rounded,
                      size: 16,
                      color: Colors.white ,
                    ),
                                 ),
                 ),
               )
            else if (e.isTicketSubmitted)
              SizedBox(
                width: 38,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, right: 16),
                  child: Assets.images.pendingIcon.image(
                      width: 16,
                      color: Theme.of(context).colorScheme.secondary),
                ),
              )
            else
              SizedBox(
                width: 38,
                child: Checkbox(
                  onChanged:
                      (e.isTicketSubmitted || e.conversionStatus == 'approved')
                          ? null
                          : (bool? value) {
                              _controller.fd.clear();
                              if (_controller.submitEventIds.contains(e.id)) {
                                _controller.submitEventIds.remove(e.id);
                              } else {
                                _controller.submitEventIds.clear();
                                _controller.submitEventIds.add(e.id);
                              }
                              setState(() {
                                fileName = "";
                              });
                            },
                  value: _controller.submitEventIds.contains(e.id),
                ),
              ),
            __eventTileRow(e, context),
          ],
        ),
        if (_controller.submitEventIds.contains(e.id))
          _gamePlayerIdRow(context, e, item)
      ],
    );
  }

  Expanded __eventTileRow(AcmoTicketEventsModel e, BuildContext context) {
    return Expanded(
      child: Card(
        shadowColor: e.ticketStatus.toLowerCase() == "rejected"
            ? const Color.fromRGBO(220, 31, 31, 0.25)
            : null,
        color: () {
          if (e.ticketStatus.toLowerCase() == 'rejected') {
            return const Color.fromRGBO(220, 31, 31, 0.25);
          } else if (e.isTicketSubmitted ||
              e.conversionStatus.toLowerCase() == 'approved') {
            return const Color.fromRGBO(233, 233, 233, 1);
          } else {
            return null;
          }
        }(),
        child: ListTile(
            dense: true,
            title: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 235,
                  child: Text(
                    e.payoutType.toLowerCase() == "cpi"
                        ? "Download Failed"
                        : e.eventName,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      color: () {
                        return e.ticketStatus.toLowerCase() == 'approved' ||
                                e.conversionStatus.toLowerCase() == 'approved'
                            ? Theme.of(context).colorScheme.secondary
                            : Colors.black;
                      }(),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
              ],
            ),
            trailing: SizedBox(
              width: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (e.conversionStatus.toLowerCase() == 'approved' ||
                          e.ticketStatus.toLowerCase() == 'approved')
                        Icon(
                          Icons.check,
                          size: 16,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      const SizedBox(width: 4),
                      CachedNetworkImage(
                          imageUrl: e.currencyIcon, width: 15, height: 15),
                      const SizedBox(width: 5),
                      Text(e.payoutAmountConverted.numeral(digits: 2),
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                    ],
                  ),
                  Text(e.currencyName,
                      style: const TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      )),
                ],
              ),
            )),
      ),
    );
  }

  Column _gamePlayerIdRow(
      BuildContext context, AcmoTicketEventsModel e, AcmoTicketsModel item) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 8, top: 8, bottom: 8),
          child: Column(
            children: [
              Row(
                children: [
                  const Text('Game Player ID:',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 12)),
                  const SizedBox(
                    width: 3,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 165,
                    child: TextFormField(
                      onChanged: (v) {
                        _controller.fd["gamePlayerId"] = v;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a valid game player ID';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 3, horizontal: 3)),
                    ),
                  )
                ],
              ),
              if (_controller.submitEventIds.contains(e.id) &&
                  item.category.toLowerCase() == "microcharge")
                _orderIdRow(context),
              const SizedBox(
                height: 4,
              ),
              //if(e.eventCategory.toLowerCase() == "purchase")
              _screenShotRow(context, e),
            ],
          ),
        ),
      ],
    );
  }

  Column _orderIdRow(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
            const Text('Order ID:',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12)),
            const SizedBox(
              width: 40,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 165,
              child: TextFormField(
                onChanged: (v) {
                  _controller.fd["orderId"] = v;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter order id';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    isDense: true,
                    border: OutlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 3, horizontal: 3)),
              ),
            )
          ],
        ),
      ],
    );
  }

  Column _screenShotRow(BuildContext context, AcmoTicketEventsModel e) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              'Screenshot:',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
            ),
            const SizedBox(
              width: 24,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 165,
              child: TextFormField(
                readOnly: true,
                controller: TextEditingController(text: fileName),
                validator: (v) {
                  if (v == null || v.isEmpty) {
                    return "Please select a screenshot";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    isDense: true,
                    border: const OutlineInputBorder(),
                    suffixIcon: InkWell(
                      onTap: () async {
                        final XFile? pFile = await _picker.pickImage(
                            source: ImageSource.gallery);
                        onImageChange(pFile, e.id);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.secondary,
                              borderRadius: BorderRadius.circular(2)),
                          child: const Center(
                              child: Text(
                            "Browse",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )),
                        ),
                      ),
                    ),
                    suffixIconConstraints:
                        BoxConstraints.tight(const Size(70, 24)),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 3)),
              ),
            )
          ],
        ),
        if (e.eventCategory.toLowerCase() == "purchase") _sampleProofRow(),
      ],
    );
  }

  Column _sampleProofRow() {
    return Column(
      children: [
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            const Text('Not sure what to attach? Click here for see example',
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    fontSize: 9,
                    fontStyle: FontStyle.italic)),
            const Spacer(),
            SizedBox(
              width: 70,
              height: 24,
              child: AcmoComponentButtonChip3(
                  outline: true,
                  // icon: Icons.info_outline,
                  onTap: () {
                    Tyrads.instance
                        .to(const AcmoPageOfferIssuesSamplePurchase());
                  },
                  labelText: "Prev"),
            )
          ],
        ),
      ],
    );
  }

  onImageChange(XFile? pFile, eventID) async {
    if (pFile != null) {
      image = MemoryImage(await pFile.readAsBytes());
      fileName = pFile.path.split('/').last;
      var mimeType = pFile.mimeType;
      var type = mimeType?.split('/').firstOrNull ?? "image";
      var subType = mimeType?.split('/').lastOrNull ?? "png";
      _controller.fd['image'] = await dio.MultipartFile.fromFile(
        pFile.path,
        filename: fileName,
        contentType: MediaType(type, subType), //importa
      );
    }
    setState(() {
      fileName = fileName;
    });
  }
}
