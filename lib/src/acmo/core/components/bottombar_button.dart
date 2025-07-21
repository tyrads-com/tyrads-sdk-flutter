import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/core/components/button_offer_view.dart';

class AcmoBottomBarButton extends StatelessWidget {
  const AcmoBottomBarButton({
    super.key,
    required this.showButton,
    required this.onTap,
    this.label = 'Play Now',
    this.isDisabled = false,
    this.showLockIcon = false,
    this.color,
  });

  final ValueNotifier<bool> showButton;
  final VoidCallback onTap;
  final String label;
  final bool isDisabled;
  final bool showLockIcon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: showButton,
      builder: (context, value, child) {
        return AnimatedCrossFade(
          firstChild: const SizedBox(),
          secondChild: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 18,
                  offset: const Offset(0, -16),
                  color: Colors.black.withValues(alpha: 0.06),
                )
              ],
            ),
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.maxFinite,
              child: AcmoButtonOfferView(
                label: label,
                isDisabled: isDisabled,
                showIcon: showLockIcon,
                color: color,
                onTap: onTap,
              ),
            ),
          ),
          crossFadeState:
              value ? CrossFadeState.showSecond : CrossFadeState.showFirst,
          duration: const Duration(milliseconds: 300),
        );
      },
    );
  }
}
