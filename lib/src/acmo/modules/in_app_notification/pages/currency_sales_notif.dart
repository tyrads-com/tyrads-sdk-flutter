import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyrads_sdk/src/acmo/modules/in_app_notification/widgets/count_down.dart';
import 'package:tyrads_sdk/src/acmo/modules/in_app_notification/widgets/notification_card.dart';
import 'package:tyrads_sdk/src/acmo/modules/in_app_notification/controllers.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';

class CurrencySalesDialog extends StatefulWidget {
  const CurrencySalesDialog({super.key});

  @override
  State<CurrencySalesDialog> createState() => _CurrencySalesDialogState();
}

class _CurrencySalesDialogState extends State<CurrencySalesDialog> {
  final _controller = AcmoInAppNotificationController.instance;

  void _closeDialog() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color(0x80000000),
          child: Center(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                NotificationCard(
                  onDismiss: _closeDialog,
                  width: 328,
                  icon: Assets.icons.coinStack,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Bonus Rewards\nUnlocked!",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        child: Divider(
                          thickness: 1,
                          color: Color(0xFFE0E2E7),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text.rich(
                          textAlign: TextAlign.center,
                          TextSpan(
                            text:
                                'You get ${_controller.currencySaleMultiplier}X bonus rewards!\n',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    'Go to offerwall and activate new offer!',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 24,
                        margin: const EdgeInsets.only(
                            top: 16, left: 16, right: 16),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF554A),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Bonus Expires in ',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              AcmoComponentCountdown(
                                key: const ValueKey(
                                    'currency_sale_countdown'),
                                countdownId: 'currency_sale_countdown',
                                seconds: _controller
                                    .currencySaleRemainingSeconds,
                                formatType: 'hh:mm:ss',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        width: double.maxFinite,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        child: OutlinedButton(
                          onPressed: () {
                            Tyrads.instance.showOffers();
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: const Color(0xFFFFFFFF),
                            side: BorderSide(
                              color: Tyrads.instance.colorMain ??
                                  const Color(0xFF02B5BE),
                              width: 2,
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 12,
                            ),
                          ),
                          child: Text(
                            "Go to Offerwall",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Tyrads.instance.colorMain ??
                                  const Color(0xFF02B5BE),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
