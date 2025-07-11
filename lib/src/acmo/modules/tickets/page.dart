import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numeral/numeral.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tyrads_sdk/src/acmo/core/components/appbar.dart';
import 'package:tyrads_sdk/src/acmo/core/components/bottombar_button.dart';
import 'package:tyrads_sdk/src/acmo/core/components/filled_onpress_button.dart';
import 'package:tyrads_sdk/src/acmo/core/components/loading_coins.dart';
import 'package:tyrads_sdk/src/acmo/core/components/overlay_loading.dart';
import 'package:tyrads_sdk/src/acmo/modules/tickets/components/acmo_text_field.dart';
import 'package:tyrads_sdk/src/acmo/modules/tickets/components/screenshot_field.dart';
import 'package:tyrads_sdk/src/acmo/modules/tickets/controller.dart';
import 'package:tyrads_sdk/src/acmo/modules/tickets/model/tickets.dart';
import 'package:tyrads_sdk/src/acmo/modules/tickets/sample_proof.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoTicketsPage extends StatefulWidget {
  const AcmoTicketsPage({
    super.key,
    required this.id,
    this.eventID,
  });

  final int id;
  final int? eventID;

  @override
  State<AcmoTicketsPage> createState() => _AcmoTicketsPageState();
}

class _AcmoTicketsPageState extends State<AcmoTicketsPage> {
  final _controller = AcmoTicketsController();
  final _refreshController = RefreshController(initialRefresh: false);

  late ValueNotifier<bool> _isPlayButtonVisible;
  late ValueNotifier<bool> _isSubmitButtonDisabled;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _isPlayButtonVisible = ValueNotifier<bool>(false);
    _isSubmitButtonDisabled = ValueNotifier<bool>(true);
    _controller.load(widget.id);
    _controller.loading.addListener(() {
      _isPlayButtonVisible.value = !_controller.loading.value;
      _updateSubmitButtonState();
    });
    _controller.selectedEventID.addListener(() {
      _updateSubmitButtonState();
    });

    _controller.screenshotErrorText.addListener(() {
      _updateSubmitButtonState();
    });
  }

  @override
  void dispose() {
    _controller.selectedEventID.value = null;
    _controller.fd.clear();
    _controller.fileName.value = null;
    _controller.screenshot = null;
    super.dispose();
  }

  void _updateSubmitButtonState() {
    final bool isEventSelected = _controller.selectedEventID.value != null;
    final bool hasScreenshotError =
        _controller.screenshotErrorText.value != null;

    _formKey.currentState?.validate();
    final bool isFormInvalid =
        _formKey.currentState != null && !_formKey.currentState!.validate();

    _isSubmitButtonDisabled.value = !_isPlayButtonVisible.value ||
        !isEventSelected ||
        hasScreenshotError ||
        isFormInvalid;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AcmoAppBar(
        titleText: "I didn't receive my TPoints",
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: _isSubmitButtonDisabled,
        builder: (context, isDisabled, child) => AcmoBottomBarButton(
          label: "Submit Ticket",
          showButton: _isPlayButtonVisible,
          isDisabled: isDisabled,
          onTap: () async {
            if (_controller.fileName.value == null) {
              _controller.screenshotErrorText.value =
                  "This field can't be empty";
              return;
            } else {
              _controller.screenshotErrorText.value = null;
            }
            if (_formKey.currentState!.validate()) {
              Loading.open();
              await _controller.submitTicket(widget.id);
              Loading.dismiss();
            }
          },
        ),
      ),
      body: ValueListenableBuilder(
        valueListenable: _controller.loading,
        builder: (context, value, child) => value
            ? const AcmoLoadingCoins()
            : SmartRefresher(
                controller: _refreshController,
                header: const WaterDropMaterialHeader(),
                enablePullDown: true,
                enablePullUp: false,
                onRefresh: () async {
                  await _controller.load(widget.id);
                  if (mounted) {
                    setState(() {
                      _refreshController.refreshCompleted();
                    });
                  }
                },
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildSectionHeader("We're more than happy to help!"),
                        const SizedBox(height: 8),
                        Text(
                          "Select the task(s) you think you've completed but didn't receive TPoints",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 16),
                        if (_controller.taskEvents.isNotEmpty) ...[
                          _buildSectionHeader("Tasks"),
                          const SizedBox(height: 16),
                          ...List.generate(
                            _controller.taskEvents.length,
                            (index) {
                              final event = _controller.taskEvents[index];
                              final isLastItem =
                                  index == _controller.taskEvents.length - 1;
                              const isTaskEvent = true;

                              final isAvailableToSubmit =
                                  (_controller.currentActiveEvent != null &&
                                          _controller.currentActiveEvent?.id ==
                                              event.id &&
                                          !event.isTicketSubmitted) ||
                                      (event.ticketStatus == "" &&
                                          event.conversionStatus ==
                                              "rejected" &&
                                          event.maxTimeRemainSeconds != null &&
                                          event.maxTimeRemainSeconds != 0);
                              return ValueListenableBuilder(
                                valueListenable: _controller.selectedEventID,
                                builder: (context, selectedId, child) {
                                  final bool isEventSelected =
                                      selectedId == event.id;
                                  return TicketEventsItem(
                                    formKey: _formKey,
                                    isLastItem: isLastItem,
                                    event: event,
                                    isAvailableToSubmit: isAvailableToSubmit,
                                    isEventSelected: isEventSelected,
                                    selectedEventId:
                                        _controller.selectedEventID,
                                    isTaskEvent: isTaskEvent,
                                    onFieldChange: _updateSubmitButtonState,
                                  );
                                },
                              );
                            },
                          ),
                          const SizedBox(height: 16),
                        ],
                        if (_controller.microchargeEvents.isNotEmpty) ...[
                          _buildSectionHeader("Bonus Rewards"),
                          const SizedBox(height: 16),
                          ...List.generate(
                            _controller.microchargeEvents.length,
                            (index) {
                              final event =
                                  _controller.microchargeEvents[index];
                              final isLastItem = index ==
                                  _controller.microchargeEvents.length - 1;

                              const isTaskEvent = false;

                              final isAvailableToSubmit = ((!event
                                          .allowDuplicateEvents &&
                                      (event.maxTimeRemainSeconds == null ||
                                          event.maxTimeRemainSeconds != 0) &&
                                      !event.isTicketSubmitted) ||
                                  (event.allowDuplicateEvents &&
                                      (!event.isTicketSubmitted ||
                                          (event.conversionStatus ==
                                                  "rejected" &&
                                              event.ticketStatus == ""))));

                              return ValueListenableBuilder(
                                valueListenable: _controller.selectedEventID,
                                builder: (context, selectedId, child) {
                                  final bool isEventSelected =
                                      selectedId == event.id;
                                  return TicketEventsItem(
                                    formKey: _formKey,
                                    isLastItem: isLastItem,
                                    event: event,
                                    isAvailableToSubmit: isAvailableToSubmit,
                                    isEventSelected: isEventSelected,
                                    selectedEventId:
                                        _controller.selectedEventID,
                                    isTaskEvent: isTaskEvent,
                                    onFieldChange: _updateSubmitButtonState,
                                  );
                                },
                              );
                            },
                          ),
                          const SizedBox(height: 10),
                        ],
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }

  Text _buildSectionHeader(String title) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class TicketEventsItem extends StatelessWidget {
  const TicketEventsItem({
    super.key,
    required this.isLastItem,
    required this.event,
    required this.isAvailableToSubmit,
    required this.isEventSelected,
    required this.isTaskEvent,
    required this.formKey,
    required ValueNotifier<int?> selectedEventId,
    this.onFieldChange,
  }) : _selectedEventId = selectedEventId;

  final bool isLastItem;
  final AcmoTicketEventsModel event;
  final bool isAvailableToSubmit;
  final bool isEventSelected;
  final bool isTaskEvent;
  final GlobalKey<FormState> formKey;
  final ValueNotifier<int?> _selectedEventId;
  final VoidCallback? onFieldChange;

  @override
  Widget build(BuildContext context) {
    final controller = AcmoTicketsController();
    return Container(
      padding: const EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: isLastItem ? 0 : 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: _getBgColor(event, isAvailableToSubmit),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              if (isAvailableToSubmit) {
                if (isEventSelected) {
                  _selectedEventId.value = null;
                  controller.screenshot = null;
                  controller.fileName.value = null;
                  controller.screenshotErrorText.value = null;
                  controller.fd.clear();
                } else {
                  _selectedEventId.value = event.id;
                }
                onFieldChange?.call();
              }
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    spacing: 8,
                    children: [
                      _buildPrefixIcon(
                          event, isEventSelected, isAvailableToSubmit),
                      Flexible(
                        child: Text(
                          event.eventName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: isAvailableToSubmit
                                ? FontWeight.w500
                                : FontWeight.w400,
                            color: _getFgColor(event, isAvailableToSubmit),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  spacing: 4,
                  children: [
                    CachedNetworkImage(
                      imageUrl: event.currencyIcon,
                      width: 14,
                    ),
                    Text(
                      "${event.payoutAmountConverted.numeral(digits: 2)} ${event.currencyName}",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: isAvailableToSubmit
                            ? FontWeight.w500
                            : FontWeight.w400,
                        color: _getFgColor(event, isAvailableToSubmit),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Visibility(
            visible: !(isAvailableToSubmit),
            child: Column(
              children: [
                const SizedBox(
                  height: 8,
                ),
                _buildTextStatus(event),
              ],
            ),
          ),
          AnimatedSize(
            duration: const Duration(milliseconds: 250),
            child: Visibility(
              visible: isEventSelected && isAvailableToSubmit,
              child: Form(
                key: formKey,
                child: Column(
                  spacing: 16,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(),
                    const Divider(
                      height: 0,
                      thickness: 1,
                      color: Color(0xFFE0E2E7),
                    ),
                    AcmoTextFormField(
                      title: 'User ID',
                      hintText: 'Input UID...',
                      onChanged: (text) {
                        controller.fd['gamePlayerId'] = text;
                        onFieldChange?.call();
                      },
                    ),
                    if (!isTaskEvent)
                      AcmoTextFormField(
                        title: 'Order ID',
                        hintText: 'Input Order ID...',
                        onChanged: (text) {
                          controller.fd['orderId'] = text;
                          onFieldChange?.call();
                        },
                      ),
                    const ScreenshotContainer(),
                    AcmoOutlinedButton(
                      title: 'Browse File',
                      onPressed: () async {
                        await controller.onBrowseFile();
                        onFieldChange?.call();
                      },
                    ),
                    if (!isTaskEvent)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Click here to see example',
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF505252),
                              fontSize: 10,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Tyrads.instance.to(
                                const AcmoPageOfferIssuesSamplePurchase(),
                              );
                            },
                            child: Container(
                              height: 32,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                  color: const Color(0xFFD4F2F3),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Text(
                                  'Preview',
                                  style: GoogleFonts.poppins(
                                    color: const Color(0xFF00BCD4),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

_buildPrefixIcon(
    AcmoTicketEventsModel item, bool isSelected, bool isAvailableToSubmit) {
  final conversionStatus = item.conversionStatus.toLowerCase();
  final ticketStatus = item.ticketStatus.toLowerCase();
  if (isAvailableToSubmit) {
    return isSelected
        ? Assets.icons.checkCircle.image(height: 18, width: 18)
        : Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: _getFgColor(item, isAvailableToSubmit), width: 1.5),
            ),
            // child: const Center(
            //   child:
            // ),
          );
  }
  if (ticketStatus == 'approved' || conversionStatus == 'approved') {
    return Icon(
      Icons.check,
      color: _getFgColor(item, isAvailableToSubmit),
    );
  }
  if (ticketStatus == 'new') {
    return Assets.icons.pending.image(
      height: 18,
      color: _getFgColor(item, isAvailableToSubmit),
    );
  }
  if (ticketStatus == 'rejected' &&
      !(item.maxTimeRemainSeconds != null &&
          item.maxTimeRemainSeconds == 0 &&
          conversionStatus == 'rejected')) {
    return Assets.icons.circleXOutlined
        .image(height: 18, color: _getFgColor(item, isAvailableToSubmit));
  }
  if (conversionStatus == '') {
    return Container(
      height: 18,
      width: 18,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: const Color(0xFFA3A9B6),
          width: 1.5,
        ),
      ),
    );
  }
  return Container(
    height: 18,
    width: 18,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border:
          Border.all(color: _getFgColor(item, isAvailableToSubmit), width: 1.5),
    ),
  );
}

Text _buildTextStatus(
  AcmoTicketEventsModel item,
) {
  final conversionStatus = item.conversionStatus.toLowerCase();
  final ticketStatus = item.ticketStatus.toLowerCase();
  String? textStatus;
  Color? textColor;
  if (ticketStatus == "new" && item.isTicketSubmitted) {
    textStatus = "Your ticket is being processed";
    textColor = const Color(0xFFFFC14A);
  }
  if (conversionStatus == "approved" && ticketStatus == "") {
    textStatus = "Completed";
    textColor = const Color(0xFFA3A9B6);
  }
  if (ticketStatus == "approved") {
    textStatus = "Your ticket has been approved";
    textColor = const Color(0xFF23C965);
  }
  if (ticketStatus == "rejected") {
    textStatus = "Your ticket has been rejected.";
    textColor = const Color(0xFFFF554A);
  }
  if (item.maxTimeRemainSeconds != null &&
      item.maxTimeRemainSeconds == 0 &&
      item.conversionStatus.toLowerCase() == "rejected") {
    textStatus = "Expired due to maxtime";
    textColor = const Color(0xFFA3A9B6);
  }
  if (conversionStatus == '' && !item.isTicketSubmitted) {
    textStatus = "You haven’t reached this level";
    textColor = const Color(0xFFA3A9B6);
  }
  return Text(
    textStatus ?? '',
    style: GoogleFonts.poppins(
      fontSize: 10,
      color: textColor,
    ),
  );
}

Color _getBgColor(AcmoTicketEventsModel item, bool isAvailableToSubmit) {
  final ticketStatus = item.ticketStatus.toLowerCase();
  if (isAvailableToSubmit) {
    return Colors.white;
  }
  if (ticketStatus == "new" && item.isTicketSubmitted) {
    return const Color(0xFFFFFCF6);
  }
  if (item.maxTimeRemainSeconds != null &&
      item.maxTimeRemainSeconds == 0 &&
      item.conversionStatus.toLowerCase() == "rejected") {
    return const Color(0xFFE0E2E7);
  }
  switch (ticketStatus) {
    case "approved":
      return const Color(0xFFF4FCF7);
    case "rejected":
      return const Color(0xFFFFF1F0);
    case "":
      return const Color(0xFFE0E2E7);
    default:
      return Colors.white;
  }
}

Color _getFgColor(AcmoTicketEventsModel item, bool isAvailableToSubmit) {
  final conversionStatus = item.conversionStatus.toLowerCase();
  final ticketStatus = item.ticketStatus.toLowerCase();
  if (isAvailableToSubmit) {
    return const Color(0xFF1E2020);
  }
  if (ticketStatus == "new" && item.isTicketSubmitted) {
    return const Color(0xFFFFC14A);
  }
  if ((conversionStatus == "approved" ||
          conversionStatus == '' ||
          (item.maxTimeRemainSeconds != null &&
              item.maxTimeRemainSeconds == 0 &&
              conversionStatus == 'rejected')) &&
      ticketStatus == "") {
    return const Color(0xFFA3A9B6);
  }
  if (ticketStatus == "rejected" &&
      !(item.maxTimeRemainSeconds != null &&
          item.maxTimeRemainSeconds == 0 &&
          conversionStatus == 'rejected')) {
    return const Color(0xFFFF554A);
  }
  switch (ticketStatus) {
    case "approved":
      return const Color(0xFF23C965);
    case "":
      return const Color(0xFF1E2020);
    default:
      return const Color(0xFFA3A9B6);
  }
}
