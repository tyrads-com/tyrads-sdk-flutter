import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:styled_text/styled_text.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/common.dart';
import 'package:tyrads_sdk/src/acmo/core/services/localization_service.dart';
import 'package:tyrads_sdk/src/acmo/modules/legal/usage_permissions.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoPrivacyPolicyPage extends StatelessWidget {
  const AcmoPrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: CloseonTap(
                onTap: () {
                  Tyrads.instance.back();
                },
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                  child: Column(
                    children: [
                      const Body(),
                      const SizedBox(
                        height: 24,
                      ),
                      SizedBox(
                          height: MediaQuery.sizeOf(context).height - 510,
                          child: const Scrollbar(
                            thumbVisibility: true,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16),
                                    child: Info(),
                                  ),
                                  SizedBox(
                                    height: 190,
                                  )
                                ],
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 190,
                color: Colors.white,
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 16,
                  children: [
                    const Info2(),
                    TwoButtons(
                      acceptOnTap: () {
                        Tyrads.instance.to(AcmoUsagePermissionsPage(
                          closeButtononTap: () {
                            Tyrads.instance.back();
                          },
                        ), replace: true);
                      },
                      rejectOntap: () {
                        Tyrads.instance.back();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Info2 extends StatelessWidget {
  const Info2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localization = LocalizationService();
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.65,
      child: StyledText(
        style: GoogleFonts.poppins(
          height: 1.3,
          fontWeight: FontWeight.w400,
          color: Colors.black,
          fontSize: 14,
        ),
        text:
            localization.translate('data.initialization.intro.label.iHaveRead'),
        tags: {
          "tos": StyledTextActionTag(
            (text, attributes) => acmoLaunchURLForce(
              "https://tyrads.com/tyrsdk-privacy-policy/",
            ),
            style: GoogleFonts.poppins(
              color: Colors.green,
            ),
          ),
          "pp": StyledTextActionTag(
            (text, attr) => acmoLaunchURLForce(
              'https://tyrads.com/tyrsdk-privacy-policy/',
            ),
            style: GoogleFonts.poppins(
              color: Colors.green,
            ),
          ),
        },
      ),
    );
  }
}

class TwoButtons extends StatelessWidget {
  const TwoButtons({
    super.key,
    this.acceptOnTap,
    this.rejectOntap,
  });
  final void Function()? acceptOnTap;
  final void Function()? rejectOntap;
  @override
  Widget build(BuildContext context) {
    final localization = LocalizationService();
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: acceptOnTap,
              child: Container(
                height: 35,
                width: 160,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    localization
                        .translate('data.initialization.intro.cta.accept'),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            GestureDetector(
              onTap: rejectOntap,
              child: Container(
                height: 35,
                width: 150,
                decoration: const BoxDecoration(),
                child: Center(
                  child: Text(
                    localization
                        .translate('data.initialization.intro.cta.reject'),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Color.fromRGBO(179, 44, 44, 1),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Info extends StatelessWidget {
  const Info({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localization = LocalizationService();
    return StyledText(
      textAlign: TextAlign.left,
      text: localization.translate('data.initialization.legal.explanation'),
      style: GoogleFonts.openSans(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: const Color.fromRGBO(0, 0, 0, 0.61),
      ),
      tags: {
        "link": StyledTextActionTag(
          (_, attrs) => acmoLaunchURLForce(attrs),
        ),
      },
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localization = LocalizationService();
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      child: Column(
        children: [
          Text(
            localization.translate('data.initialization.intro.title'),
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          Assets.images.privacyBanner.image(
            height: 160,
          ),
          Text(
            localization.translate('data.initialization.intro.subtitle'),
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}

class CloseonTap extends StatelessWidget {
  const CloseonTap({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: const Icon(
        Icons.close,
        color: Color.fromRGBO(196, 196, 196, 1),
        size: 24,
      ),
    );
  }
}
