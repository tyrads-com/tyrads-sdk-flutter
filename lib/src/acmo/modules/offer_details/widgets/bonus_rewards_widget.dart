import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numeral/numeral.dart';
import 'package:timelines_plus/timelines_plus.dart' show DotIndicator;
import 'package:tyrads_sdk/src/acmo/core/components/acmo_simple_dialog.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/controller.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/models/offer_details.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/widgets/countdown.dart'
    show AcmoComponentCountdown;
import 'package:tyrads_sdk/src/acmo/modules/tickets/page.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class BonusRewardsWidget extends StatelessWidget {
  const BonusRewardsWidget({
    super.key,
    required this.controller,
  });

  final AcmoOffersDetailsController controller;

  MicroChargeEvents? getCurrentActiveEvent(
    List<MicroChargeEvents> events,
  ) {
    try {
      return events.firstWhere((e) => e.conversionStatus.isEmpty);
    } catch (e) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    const Color textColor = Colors.white;
    const double borderRadius = 16.0;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(borderRadius),
                    topRight: Radius.circular(borderRadius),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Bonus Rewards",
                          style: GoogleFonts.poppins(
                            color: textColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                        // const Icon(
                        //   Icons.info_outline,
                        //   color: textColor,
                        //   size: 18,
                        // ),
                      ],
                    ),
                    // const Divider(
                    //   color: textColor,
                    //   thickness: 1,
                    //   height: 34,
                    // ),
                    // Row(
                    //   children: [
                    //     Image.asset(
                    //       'packages/tyrads_sdk/assets/icons/star.png',
                    //       width: 28,
                    //       height: 28,
                    //       color: Colors.amber,
                    //     ),
                    //     const SizedBox(width: 6),
                    //     Expanded(
                    //       child: Text(
                    //         "Earn up to 150% bonus with \nQuick & Daily Rewards!",
                    //         style: GoogleFonts.poppins(
                    //           color: textColor,
                    //           fontWeight: FontWeight.w700,
                    //           fontSize: 14,
                    //         ),
                    //       ),
                    //     ),
                    //     Image.asset(
                    //       'packages/tyrads_sdk/assets/icons/arrow-down.png',
                    //       width: 32,
                    //       height: 32,
                    //       color: textColor,
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
              Positioned(
                right: -16,
                top: -24,
                child: Assets.images.galaxyStar.image(
                  height: 200,
                  width: 200,
                ),
              ),
            ],
          ),

          // Main Content with rounded corners
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(borderRadius),
              bottomRight: Radius.circular(borderRadius),
            ),
            child: Container(
              color: Theme.of(context).colorScheme.secondary,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(borderRadius),
                    topRight: Radius.circular(borderRadius),
                    bottomLeft: Radius.circular(14),
                    bottomRight: Radius.circular(14),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [
                      0.05,
                      0.25,
                    ],
                    colors: [
                      Color(0xFFE4F9F9),
                      Colors.white,
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                    left: 16,
                    right: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (controller.quickRewards.isNotEmpty)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildSectionHeader("Quick Rewards"),
                            const SizedBox(height: 16),
                            _buildDivider(indent: 0),
                            const SizedBox(height: 16),
                            ...List.generate(
                              controller.quickRewards.length,
                              (index) => Padding(
                                padding:
                                    index == controller.quickRewards.length - 1
                                        ? const EdgeInsets.only(
                                            bottom: 15,
                                          )
                                        : EdgeInsets.zero,
                                child: _buildQuickRewardItem(
                                    context,
                                    controller.quickRewards[index],
                                    getCurrentActiveEvent(
                                        controller.quickRewards)),
                              ),
                            ),
                          ],
                        ),
                      if (controller.dailyRewards.isNotEmpty)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildSectionHeader("Daily Rewards"),
                            const SizedBox(height: 16),
                            _buildDivider(indent: 0),
                            ...[
                              const SizedBox(height: 16),
                              ...List.generate(
                                controller.dailyRewards.length,
                                (index) => Padding(
                                  padding: index ==
                                          controller.dailyRewards.length - 1
                                      ? const EdgeInsets.only(
                                          bottom: 15,
                                        )
                                      : EdgeInsets.zero,
                                  child: _buildDailyRewardItem(
                                    context,
                                    item: controller.dailyRewards[index],
                                    isInstalled: controller.item.isInstalled,
                                    isLastItem: index ==
                                        controller.dailyRewards.length - 1,
                                  ),
                                ),
                              ),
                            ]
                          ],
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
        fontSize: 14,
        color: const Color(0xFF1E2020),
      ),
    );
  }

  Widget _buildDivider({double? indent}) {
    return Divider(
      color: const Color(0xFFE0E2E7),
      thickness: 1,
      height: 1,
      indent: indent ?? 25,
    );
  }

  Widget _buildIndicator(BuildContext context, MicroChargeEvents item,
      MicroChargeEvents? activeItem) {
    if (item.maxTimeRemainSeconds != null &&
        item.maxTimeRemainSeconds != 0) {
      return DotIndicator(
        size: 16,
        color: Colors.white,
        child: Assets.icons.timeFast.image(
          width: 12,
          height: 12,
          color: const Color(0xFFFFA726),
        ),
      );
    }
    if (item.maxTimeRemainSeconds != null &&
        item.maxTimeRemainSeconds == 0 &&
        item.conversionStatus.toLowerCase() == "rejected") {
      return DotIndicator(
        size: 16,
        color: Colors.white,
        child: Assets.icons.timeDelete.image(
          width: 12,
          height: 12,
          color: const Color(0xFFA3A9B6),
        ),
      );
    }

    switch (item.conversionStatus.toLowerCase()) {
      case 'approved':
        return DotIndicator(
          color: Colors.white,
          size: 16,
          child: Assets.icons.checkCircle.image(
            width: 12,
            height: 12,
            color: Theme.of(context).colorScheme.secondary,
          ),
        );
      case 'rejected':
        return DotIndicator(
          color: Colors.white,
          size: 16,
          child: Assets.icons.circleX.image(
            width: 12,
            height: 12,
            color: const Color(0xFFFF554A),
          ),
        );
      case 'pending':
      default:
        return const DotIndicator(
          color: Color(0xFFF0F1F3),
          size: 16,
        );
    }
  }

  Widget _buildStatusText(BuildContext context, MicroChargeEvents item,
      MicroChargeEvents? activeItem) {
    String? statusText;
    Color? statusColor;

    switch (item.conversionStatus.toLowerCase()) {
      case "approved":
        statusText = "Completed";
        statusColor = Colors.black87;
      case "rejected":
        statusText = item.isTicketSubmitted
            ? "Progress rejected"
            : "Progress rejected. Please contact our support";
        statusColor = Colors.redAccent;
      case "pending":
        statusText = "Complete previous task";
        statusColor = const Color(0xFF1E2020);
    }
    if (item.maxTimeRemainSeconds != null &&
        item.maxTimeRemainSeconds != 0) {
      return Padding(
        padding: const EdgeInsets.only(
          bottom: 24,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 4,
          children: [
            Text(
              "Complete Within",
              style: GoogleFonts.poppins(
                color: const Color(0xFFFF554A),
                fontWeight: FontWeight.w400,
                fontSize: 10,
              ),
            ),
            AcmoComponentCountdown(
              seconds: item.maxTimeRemainSeconds != null
                  ? item.maxTimeRemainSeconds!.toInt()
                  : 0,
              formatType: "hh:mm:ss",
              style: GoogleFonts.poppins(
                color: const Color(0xFFFF554A),
                fontWeight: FontWeight.w400,
                fontSize: 10,
              ),
              onFinish: () {},
            )
          ],
        ),
      );
    }
    if (item.maxTimeRemainSeconds != null &&
        item.maxTimeRemainSeconds == 0 &&
        item.conversionStatus.toLowerCase() == "rejected") {
      return Padding(
        padding: EdgeInsets.zero,
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
                  },
                );
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
          ? const EdgeInsets.only(bottom: 10)
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

  Widget _buildQuickRewardItem(BuildContext context, MicroChargeEvents item,
      MicroChargeEvents? activeItem) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: _buildIndicator(context, item, activeItem),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.eventName,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  CachedNetworkImage(
                    imageUrl: controller.currencyDetails.adUnitCurrencyIcon,
                    width: 14,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    item.payoutAmountConverted.numeral(digits: 2),
                    style: GoogleFonts.poppins(
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              _buildDivider(indent: 0),
              const SizedBox(height: 8),
              _buildStatusText(context, item, activeItem),
              if (item.conversionStatus.toLowerCase() == "rejected" &&
                  item.maxTimeRemainSeconds != 0 &&
                  !item.isTicketSubmitted)
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildButton(
                        title: "Submit Ticket",
                        onPress: () {
                          Tyrads.instance.to(AcmoTicketsPage(
                            id: controller.item.campaignId,
                          ));
                        }),
                    const SizedBox(height: 24),
                  ],
                )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildButton({
    required String title,
    required VoidCallback onPress,
  }) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF00BCD4), width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.poppins(
              color: const Color(0xFF00BCD4),
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDailyRewardItem(
    BuildContext context, {
    required MicroChargeEvents item,
    required bool isInstalled,
    required isLastItem,
  }) {
    final color = ((item.dailyCount == item.dailyLimit) || !isInstalled)
        ? const Color(0xFFA3A9B6)
        : Theme.of(context).colorScheme.secondary;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 12,
          children: [
            Flexible(
              child: Text(
                item.eventName,
                style: GoogleFonts.poppins(
                  color: const Color(0xFF1E2020),
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ),
            item.limit != 0
                ? Text(
                    "Total Limit: ${item.count}/${item.limit}",
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF667085),
                      fontSize: 10,
                    ),
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Total Limit: ",
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF667085),
                          fontSize: 10,
                        ),
                      ),
                      Assets.icons.infinity.image(
                        width: 13,
                        color: const Color(0xFF667085),
                      ),
                    ],
                  ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(
            top: 8,
            bottom: isLastItem ? 0 : 16,
          ),
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
          decoration: BoxDecoration(
            color: item.dailyCount == item.dailyLimit || !isInstalled
                ? const Color(0xFFE0E2E7)
                : null,
            borderRadius: BorderRadius.circular(8),
            border: item.dailyCount == item.dailyLimit || !isInstalled
                ? null
                : Border.all(color: color, width: 2),
          ),
          child: Row(
            children: [
              item.eventName.toLowerCase().contains('purchase')
                  ? Assets.icons.shoppingCart.image(
                      color: color,
                      height: 19,
                    )
                  : Assets.icons.clapperPlay.image(
                      color: color,
                      height: 19,
                    ),
              const SizedBox(width: 8),
              CachedNetworkImage(
                imageUrl: controller.currencyDetails.adUnitCurrencyIcon,
                height: 14,
              ),
              const SizedBox(width: 8),
              Text(
                "${item.payoutAmountConverted.numeral(digits: 2)} Bonus",
                style: GoogleFonts.poppins(
                  color: color,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              const Spacer(),
              item.dailyLimit != 0
                  ? Text(
                      "(${item.dailyCount}/${item.dailyLimit})",
                      style: GoogleFonts.poppins(
                        color: color,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    )
                  : Assets.icons.infinity.image(
                      color: color,
                      width: 15,
                    ),
            ],
          ),
        ),
      ],
    );
  }
}
