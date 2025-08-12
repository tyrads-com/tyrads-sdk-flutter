import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class ActiveOfferButton extends StatelessWidget {
  const ActiveOfferButton({super.key, required this.activatedCount});

  final int activatedCount;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        Tyrads.instance.showOffers(
          context,
          route: TyradsDeepRoutes.ACTIVE_OFFERS,
          launchMode: Tyrads.instance.launchMode,
        );
      }),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 42,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(42),
                  border: Border.all(
                    color: Tyrads.instance.colorPremium ??
                        Theme.of(context).colorScheme.secondary,
                    width: 2,
                  ),
                ),
                child: Center(
                    child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      t.offers.activeOffersCta,
                      style: TextStyle(
                        color: Tyrads.instance.colorPremium ??
                            Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    if (activatedCount > 0)
                      Container(
                        height: 20,
                        width: 20,
                        margin: const EdgeInsets.only(left: 8),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFFF554A),
                        ),
                        child: Center(
                          child: Text(
                            activatedCount > 99
                                ? '99+'
                                : activatedCount.toString(),
                            maxLines: 1,
                            softWrap: false,
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      )
                  ],
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
