import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numeral/numeral.dart';
import 'package:timelines_plus/timelines_plus.dart';
import 'package:tyrads_sdk/src/acmo/core/components/acmo_simple_dialog.dart';
import 'package:tyrads_sdk/src/acmo/core/components/filled_onpress_button.dart';
import 'package:tyrads_sdk/src/acmo/modules/help/page.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/controller.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/models/offer_details.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/widgets/countdown.dart';
import 'package:tyrads_sdk/src/acmo/modules/tickets/page.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class OffersTimeline extends StatefulWidget {
  const OffersTimeline({
    super.key,
    required AcmoOffersDetailsController controller,
  }) : _controller = controller;

  final AcmoOffersDetailsController _controller;

  @override
  State<OffersTimeline> createState() => _OffersTimelineState();
}

class _OffersTimelineState extends State<OffersTimeline>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _rotationAnimation;

  final ValueNotifier<bool> showAllEvents = ValueNotifier<bool>(false);

  void _toggleTimeline() {
    showAllEvents.value = !showAllEvents.value;
    if (showAllEvents.value) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );

    _rotationAnimation = Tween<double>(begin: 0.0, end: -0.5).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    showAllEvents.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildHeader(),
            AnimatedSize(
              duration: const Duration(milliseconds: 250),
              child: ValueListenableBuilder(
                  valueListenable: showAllEvents,
                  builder: (context, showAll, child) {
                    return _buildTimeline(showAll);
                  }),
            ),
            if (widget._controller.allPayoutEvents.length > 2)
              _buildExpandButton(),
            if (widget._controller.item.isInstalled) const SizedBox(height: 8),
            if (widget._controller.item.isInstalled)
              AcmoOutlinedButton(
                title: "Need Help?",
                onPressed: () {
                  Tyrads.instance.to(AcmoHelpPage(
                    id: widget._controller.item.campaignId,
                    currencyUrl:
                        widget._controller.item.currency.adUnitCurrencyIcon,
                  ));
                },
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
          child: Row(
            children: [
              Text(
                "Active Task",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF333333),
                ),
              ),
              // const SizedBox(width: 12),
              // Container(
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              //   decoration: BoxDecoration(
              //     color: const Color(0xFFE0F7F5),
              //     borderRadius: BorderRadius.circular(5),
              //   ),
              //   child: Text(
              //     "100% BONUS",
              //     style: GoogleFonts.poppins(
              //       fontSize: 12,
              //       fontWeight: FontWeight.bold,
              //       color: const Color(0xFF00BCD4),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
        const Divider(
          color: Color(0xFFE6E6E6),
          thickness: 1,
          height: 25,
        ),
      ],
    );
  }

  Widget _buildTimeline(bool showAll) {
    final displayedTasks = widget._controller.getPayoutEventsToShow(showAll);

    final currentActiveItem = widget._controller.getCurrentActiveEvent(
        displayedTasks, widget._controller.item.isInstalled);

    return Timeline.tileBuilder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      theme: TimelineThemeData(
        nodePosition: 0,
        connectorTheme: const ConnectorThemeData(
          thickness: 1.5,
          color: Color(0xFFE0E0E0),
          space: 4.0,
        ),
        indicatorTheme: const IndicatorThemeData(
          size: 20.0,
          position: 0.1,
        ),
      ),
      builder: TimelineTileBuilder.connected(
        contentsBuilder: (_, index) {
          final isLastItem = index == displayedTasks.length - 1;
          return _buildTimelineItem(
              displayedTasks[index], currentActiveItem, isLastItem);
        },
        connectorBuilder: (_, index, connectorType) {
          Color connectorColor = Colors.grey.shade300;

          if (widget._controller.item.isInstalled &&
              displayedTasks[index].conversionStatus != null) {
            connectorColor = Theme.of(context).colorScheme.secondary;
          }

          return SolidLineConnector(
            color: connectorColor,
            thickness: 1.5,
          );
        },
        indicatorBuilder: (_, index) =>
            _buildIndicator(displayedTasks[index], currentActiveItem),
        itemCount: displayedTasks.length,
      ),
    );
  }

  Widget _buildTimelineItem(
      PayoutEvents item, PayoutEvents? activeItem, bool isLast) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTaskIcon(item, activeItem),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.eventName,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 14 / 12,
                        color: (widget._controller.item.isInstalled &&
                                    item.conversionStatus != null) ||
                                item.id == activeItem?.id
                            ? const Color(0xFF1E2020)
                            : const Color(0xFFA3A9B6),
                      ),
                    ),
                    const SizedBox(height: 2),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CachedNetworkImage(
                          imageUrl: widget
                              ._controller.currencyDetails.adUnitCurrencyIcon,
                          width: 14,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          item.payoutAmountConverted.numeral(digits: 2),
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            height: 14 / 12,
                            fontWeight: FontWeight.w700,
                            color: _getRewardColor(
                                item.conversionStatus?.toLowerCase(),
                                item.id == activeItem?.id),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          const Padding(
            padding: EdgeInsets.only(left: 0),
            child: Divider(
              color: Color(0xFFEEEEEE),
              thickness: 1,
            ),
          ),
          if (widget._controller.item.isInstalled)
            _buildStatusText(item, activeItem),
          if (!widget._controller.item.isInstalled && !isLast)
            const SizedBox(
              height: 16,
            ),
          if (item.conversionStatus?.toLowerCase() == "rejected" &&
              item.maxTimeRemainSeconds != 0 &&
              !item.isTicketSubmitted)
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AcmoOutlinedButton(
                    title: "Submit Ticket",
                    onPressed: () {
                      Tyrads.instance.to(AcmoTicketsPage(
                        id: widget._controller.item.campaignId,
                        eventID: item.id,
                      ));
                    }),
                const SizedBox(height: 24),
              ],
            )
        ],
      ),
    );
  }

  Widget _buildTaskIcon(PayoutEvents item, PayoutEvents? activeItem) {
    Color bgColor = _getIconBgColor(item, activeItem);

    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Assets.images.silverStar.image(
          width: 16,
          height: 16,
          color: _getIconColor(item, activeItem),
        ),
      ),
    );
  }

  Widget _buildStatusText(PayoutEvents item, PayoutEvents? activeItem) {
    String? statusText;
    Color? statusColor;

    switch (item.conversionStatus?.toLowerCase()) {
      case "approved":
        statusText = "Completed";
        statusColor = const Color(0xFF1E2020);
      case "rejected":
        statusText = item.isTicketSubmitted
            ? "Progress rejected"
            : "Progress rejected. Please contact our support";
        statusColor = Colors.redAccent;
      case "pending":
        statusText = "Pending";
        statusColor = const Color(0xFFF4A004);
      case null:
        statusText = "Complete previous task";
        statusColor = const Color(0xFFA3A9B6);
    }
    if (item.maxTimeRemainSeconds != null &&
        item.maxTimeRemainSeconds != 0 &&
        (activeItem?.id == item.id)) {
      return Container(
        margin: const EdgeInsets.only(bottom: 26),
        padding: const EdgeInsets.symmetric(
          vertical: 2,
          horizontal: 12,
        ),
        decoration: BoxDecoration(
          color: const Color(0xFFFF554A),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 4,
          children: [
            Text(
              "Complete Within",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            ),
            AcmoComponentCountdown(
              seconds: item.maxTimeRemainSeconds != null
                  ? item.maxTimeRemainSeconds!.toInt()
                  : 0,
              formatType: "hh:mm:ss",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
              onFinish: () {},
            )
          ],
        ),
      );
    }
    if (item.maxTimeRemainSeconds != null &&
        item.maxTimeRemainSeconds == 0 &&
        item.conversionStatus?.toLowerCase() == "rejected") {
      return Padding(
        padding: statusText != null
            ? const EdgeInsets.only(bottom: 26)
            : EdgeInsets.zero,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 5,
          children: [
            Text(
              "Expired due to maxtime",
              style: GoogleFonts.poppins(
                fontSize: 10,
                color: const Color(0xFF1E2020),
                fontWeight: FontWeight.normal,
              ),
            ),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (_) {
                      return AcmoSimpleDialog(
                        title: "Expired Due to Maxtime",
                        titleIcon: Assets.images.helpIcon.image(
                          width: 15,
                          color: const Color(0xFF1E2020),
                        ),
                        styledInformation:
                            "This task expired as the maximum time was reached.\n\nPlease continue to the next task to earn rewards.",
                        textAlign: TextAlign.left,
                      );
                    });
              },
              child: Assets.images.helpIcon.image(
                width: 12,
                height: 12,
                color: const Color(0xFF1E2020),
              ),
            ),
          ],
        ),
      );
    }
    return Padding(
      padding: statusText != null
          ? const EdgeInsets.only(bottom: 26)
          : EdgeInsets.zero,
      child: Text(
        statusText ?? "",
        style: GoogleFonts.poppins(
          fontSize: 10,
          color: statusColor,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }

  Widget _buildIndicator(PayoutEvents item, PayoutEvents? activeItem) {
    if ((item.maxTimeRemainSeconds != null &&
            item.maxTimeRemainSeconds != 0 &&
            item.conversionStatus == null &&
            activeItem?.id == item.id) ||
        item.conversionStatus?.toLowerCase() == "pending") {
      return DotIndicator(
        color: Colors.white,
        size: 26,
        border: Border.all(
          color: Colors.white,
          width: 5,
        ),
        child: Assets.icons.timeFast.image(
          width: 12,
          height: 12,
          color: const Color(0xFFFFA726),
        ),
      );
    }
    if (item.maxTimeRemainSeconds != null &&
        item.maxTimeRemainSeconds == 0 &&
        item.conversionStatus?.toLowerCase() == "rejected") {
      return DotIndicator(
        color: Colors.white,
        size: 26,
        border: Border.all(
          color: Colors.white,
          width: 5,
        ),
        child: Assets.icons.timeDelete.image(
          width: 12,
          height: 12,
          color: const Color(0xFFA3A9B6),
        ),
      );
    }

    switch (item.conversionStatus?.toLowerCase()) {
      case 'approved':
        return DotIndicator(
          color: Colors.white,
          size: 26,
          border: Border.all(
            color: Colors.white,
            width: 5,
          ),
          child: Assets.icons.checkCircle.image(
            width: 12,
            height: 12,
            color: Theme.of(context).colorScheme.secondary,
          ),
        );
      case 'rejected':
        return DotIndicator(
          color: Colors.white,
          size: 26,
          border: Border.all(
            color: Colors.white,
            width: 5,
          ),
          child: Assets.icons.circleX.image(
            width: 12,
            height: 12,
            color: const Color(0xFFFF554A),
          ),
        );
      default:
        return DotIndicator(
          color: const Color(0xFFF0F1F3),
          size: 26,
          border: Border.all(
            color: Colors.white,
            width: 5,
          ),
        );
    }
  }

  Color _getIconColor(PayoutEvents item, PayoutEvents? activeItem) {
    if ((item.maxTimeRemainSeconds != null &&
            item.maxTimeRemainSeconds != 0 &&
            item.conversionStatus == null &&
            activeItem?.id == item.id) ||
        item.conversionStatus?.toLowerCase() == "pending") {
      return const Color(0xFFF4A004);
    }
    if (item.maxTimeRemainSeconds != null &&
        item.maxTimeRemainSeconds == 0 &&
        item.conversionStatus?.toLowerCase() == 'rejected') {
      return const Color(0xFFA3A9B6);
    }
    switch (item.conversionStatus?.toLowerCase()) {
      case 'approved':
        return Theme.of(context).colorScheme.secondary;
      case 'rejected':
        return const Color(0xFFFF554A);
      case 'pending':
      default:
        return const Color(0xFFA3A9B6);
    }
  }

  Color _getIconBgColor(PayoutEvents item, PayoutEvents? activeItem) {
    if ((item.maxTimeRemainSeconds != null &&
            item.maxTimeRemainSeconds != 0 &&
            item.conversionStatus == null &&
            activeItem?.id == item.id) ||
        item.conversionStatus?.toLowerCase() == "pending") {
      return const Color(0xFFFFEECE);
    }
    if (item.maxTimeRemainSeconds != null &&
        item.maxTimeRemainSeconds == 0 &&
        item.conversionStatus?.toLowerCase() == 'rejected') {
      return const Color(0xFFF0F1F3);
    }
    switch (item.conversionStatus?.toLowerCase()) {
      case "approved":
        return Theme.of(context).colorScheme.secondary.withValues(alpha: 0.2);
      case "rejected":
        return const Color(0xFFFFF1F0);
      case "pending":
      default:
        return const Color(0xFFF0F1F3);
    }
  }

  Color _getRewardColor(String? status, bool isCurrentItem) {
    switch (status) {
      case null:
        return isCurrentItem
            ? Theme.of(context).colorScheme.secondary
            : const Color(0xFFA3A9B6);
      case "approved":
      case "rejected":
      default:
        return Theme.of(context).colorScheme.secondary;
    }
  }

  Widget _buildExpandButton() {
    return Center(
      child: IconButton(
        onPressed: _toggleTimeline,
        icon: RotationTransition(
          turns: _rotationAnimation,
          child: Assets.icons.angleDown
              .image(color: Theme.of(context).colorScheme.secondary, width: 24),
        ),
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        visualDensity: VisualDensity.compact,
      ),
    );
  }
}
