
import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/core/components/skeleton_loading.dart';
import 'package:tyrads_sdk/src/acmo/modules/premium_widgets/widgets/card_container.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class PremiumWidgetsLoading extends StatelessWidget {
  const PremiumWidgetsLoading({
    super.key,
    required this.widgetStyle,
    required this.itemHeight,
  });

  final PremiumWidgetStyles widgetStyle;
  final double itemHeight;

  @override
  Widget build(BuildContext context) {
    return CardContainer(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.25),
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        spacing: 16,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AcmoCustomSkeleton(width: 120, height: 18),
              AcmoCustomSkeleton(width: 120, height: 18),
            ],
          ),
          if (widgetStyle == PremiumWidgetStyles.list)
            ...List.generate(
              4,
              (index) => const ListTile(
                contentPadding: EdgeInsets.zero,
                leading: AcmoCustomSkeleton(
                  width: 54,
                  height: 54,
                  borderRadius: 4,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 2,
                  children: [
                    AcmoCustomSkeleton(
                      width: 130,
                      height: 16,
                    ),
                    AcmoCustomSkeleton(
                      width: 65,
                      height: 16,
                    ),
                  ],
                ),
                trailing: AcmoCustomSkeleton(
                  width: 80,
                  height: 42,
                  borderRadius: 8,
                ),
              ),
            )
          else
            AcmoCustomSkeleton(
              width: double.maxFinite,
              height: itemHeight,
            ),
          if (widgetStyle == PremiumWidgetStyles.sliderCards)
            const AcmoCustomSkeleton(
              width: 50,
              height: 8,
            ),
          const AcmoCustomSkeleton(
            width: double.maxFinite,
            height: 42,
            borderRadius: 21,
          ),
        ],
      ),
    );
  }
}