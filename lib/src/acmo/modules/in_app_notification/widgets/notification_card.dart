import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class NotificationCard extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;

  final VoidCallback? onDismiss;

  const NotificationCard({
    super.key,
    required this.child,
    this.width = 328,
    this.height = 454.49,
    this.onDismiss,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          padding: const EdgeInsets.only(top: 30, bottom: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Tyrads.instance.colorMain ?? const Color(0xFF02B5BE),
                const Color(0xFFFFFFFF),
              ],
              stops: const [0.0, 0.8628],
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0x40000000),
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: child,
        ),
        Positioned(
            top: -26,
            left: 36,
            child: Assets.icons.coinCoins.image(
              width: 90,
              height: 90,
            )),
        Positioned(
          top: 12,
          right: 46,
          child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                onDismiss?.call();
              },
              child: Assets.icons.circleX.image(
                width: 24,
                height: 24,
              )),
        ),
      ],
    );
  }
}
