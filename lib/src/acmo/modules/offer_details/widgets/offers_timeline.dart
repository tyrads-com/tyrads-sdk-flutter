import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:timelines_plus/timelines_plus.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/controller.dart';

class OffersTimeline extends StatefulWidget {
  const OffersTimeline({
    super.key,
    required AcmoOffersDetailsController controller,
  }) : _controller = controller;

  final AcmoOffersDetailsController _controller;

  @override
  State<OffersTimeline> createState() => _OffersTimelineState();
}

class _OffersTimelineState extends State<OffersTimeline> {
  bool showFullTimeline = false;

  void _toggleTimeline() {
    setState(() {
      showFullTimeline = !showFullTimeline;
    });
  }

  @override
  Widget build(BuildContext context) {
    final itemCount = showFullTimeline ? widget._controller.allPayoutEvents.length : 2;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            _buildTimeline(itemCount),
            _buildExpandButton(),
            const SizedBox(height: 8),
            _buildHelpButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 4.0, bottom: 8.0),
          child: Text(
            "Active Task",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1A1A1A),
            ),
          ),
        ),
        Divider(
          color: Color(0xFFEEEEEE),
          thickness: 1,
        ),
      ],
    );
  }

  Widget _buildTimeline(int itemCount) {
    return SizedBox(
      height: showFullTimeline ? null : 150,
      child: Timeline.tileBuilder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        theme: TimelineThemeData(
          nodePosition: 0,
          connectorTheme: const ConnectorThemeData(
            thickness: 2.0,
            color: Color(0xffE0E0E0),
            space: 4.0, // Add space between connector and indicator
          ),
          indicatorTheme: const IndicatorThemeData(
            size: 18.0, // Increased size of the indicator
            color: Color(0xffE0E0E0),
          ),
        ),
        builder: TimelineTileBuilder.connected(
          contentsBuilder: (_, index) => _buildTimelineItem(index),
          connectorBuilder: (_, index, __) {
            if (!showFullTimeline && index > 0) return null;
            return const SolidLineConnector(
              color: Color(0xFFE0E0E0),
              thickness: 2,
            );
          },
          indicatorBuilder: (_, __) => DotIndicator(
            color: const Color(0xFFE0E0E0), // Grey background for the circles
            size: 18, // Increased size
            border: Border.all(
              color: const Color(0xFFE0E0E0),
              width: 2,
            ),
          ),
          itemExtentBuilder: (_, __) => 70,
          itemCount: itemCount,
        ),
      ),
    );
  }

  Widget _buildTimelineItem(int index) {
    final isFirstItem = index == 0;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 4.0, bottom: 4.0),
          child: Row(
            children: [
              _buildItemIcon(),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      isFirstItem ? "Reach Island Level 3" : "Reach Island Level 5",
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF9E9E9E),
                      ),
                    ),
                    const SizedBox(height: 4),
                    _buildRewardInfo(isFirstItem),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (index == 0 || (index == 1 && !showFullTimeline) ||
            (showFullTimeline && index < widget._controller.allPayoutEvents.length - 1))
          const Divider(
            color: Color(0xFFEEEEEE),
            thickness: 1,
            height: 12,
            indent: 15,
          ),
      ],
    );
  }

  Widget _buildItemIcon() {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
          child: Image.asset(
            'packages/tyrads_sdk/assets/images/silver-star.png',
            width: 20,
            height: 20,
            color: Colors.grey,
          )
      ),
    );
  }

  Widget _buildRewardInfo(bool isFirstItem) {
    return Row(
      children: [
        Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey.shade500, width: 1.5),
          ),
          child: const Center(
            child: Text(
              "T",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
          ),
        ),
        const SizedBox(width: 4),
        Text(
          isFirstItem ? "400K" : "500K",
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Color(0xFF9E9E9E),
          ),
        ),
      ],
    );
  }

  Widget _buildExpandButton() {
    return Transform.translate(
      offset: const Offset(0, -10),
      child: Center(
        child: IconButton(
          onPressed: _toggleTimeline,
          icon: Image.asset(
            showFullTimeline
                ? 'packages/tyrads_sdk/assets/icons/angle_up.png'
                : 'packages/tyrads_sdk/assets/icons/angle_down.png',
            width: 36,
            height: 36,
            color: const Color(0xFF00BCD4),
          ),
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          visualDensity: VisualDensity.compact,
        ),
      ),
    );
  }

  Widget _buildHelpButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF00BCD4), width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            "Need Help?",
            style: TextStyle(
              color: Color(0xFF00BCD4),
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
