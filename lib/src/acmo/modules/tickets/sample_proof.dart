import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyrads_sdk/src/acmo/core/components/bottombar_button.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoPageOfferIssuesSamplePurchase extends StatelessWidget {
  const AcmoPageOfferIssuesSamplePurchase({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: AcmoBodyOfferIssues());
  }
}

class AcmoBodyOfferIssues extends StatefulWidget {
  const AcmoBodyOfferIssues({
    super.key,
  });

  @override
  State<AcmoBodyOfferIssues> createState() => _AcmoBodyOfferIssuesState();
}

class _AcmoBodyOfferIssuesState extends State<AcmoBodyOfferIssues> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .8,
                      child: FittedBox(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Stack(
                            children: [
                              Assets.images.sampleProof.image(
                                width: 294,
                                height: 527,
                              ),
                              Positioned.fill(
                                child: Container(
                                  color: Colors.black.withValues(alpha: 0.04),
                                ),
                              ),
                              Positioned(
                                top: 169,
                                left: 13,
                                child: Container(
                                  height: 24,
                                  width: 245,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                    color: const Color(0xFF2CB388),
                                    width: 2,
                                  )),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .7,
                      child: Text(
                        t.tickets.instructions,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: AcmoBottomBarButton(
            label: t.tickets.understand,
            showButton: ValueNotifier(true),
            onTap: () async {
              Tyrads.instance.back();
            },
          ),
        )
      ],
    );
  }
}
