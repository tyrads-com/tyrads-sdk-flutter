import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/common.dart';
import 'package:tyrads_sdk/src/acmo/modules/legal/usage_permissions.dart';
import 'package:tyrads_sdk/src/app_config.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoPrivacyPolicyPage extends StatelessWidget {
  const AcmoPrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                      const SizedBox(height: 24,),
                      SizedBox(height: MediaQuery.sizeOf(context).height - 510,                     
                        child: const Scrollbar(
                          thumbVisibility: true,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  child: Info(),
                                ),
                                SizedBox(height:190,)
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
                height: 170,
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 20,),
                            const Info2(),
                            const SizedBox(height: 24,),
                    TwoButtons(
                      acceptOnTap: () {
                        Tyrads.instance
                            .to( AcmoUsagePermissionsPage(
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
    return RichText(
      text: TextSpan(
        style: GoogleFonts.inter(
          textStyle: const TextStyle(
              height: 1.3,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              fontSize: 14),
        ),
        children: [
           TextSpan(
            text: t.privacyPolicy.agreementPrefix,
          ),
          TextSpan(
            text: t.privacyPolicy.privacyText,
            style: GoogleFonts.inter(
              textStyle:  TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 14),
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                acmoLaunchURLForce(AcmoConfig.PRIVACY_POLICY);
              },
          ),
           TextSpan(
            text: t.privacyPolicy.and,
          ),
          TextSpan(
            text: t.privacyPolicy.termsText,
            style: GoogleFonts.inter(
              textStyle:  TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 14),
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                acmoLaunchURLForce(AcmoConfig.TERMS_OF_SERVICE);
              },
          ),
        ],
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
                    t.privacyPolicy.accept,
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
            const SizedBox(height: 10),
            GestureDetector(
              onTap: rejectOntap,
              child: Container(
                height: 35,
                width: 150,
                decoration: const BoxDecoration(),
                child: Center(
                  child: Text(
                    t.privacyPolicy.reject,
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
    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        style: GoogleFonts.openSans(
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(0, 0, 0, 0.61),
          ),
        ),
        children: [
          TextSpan(
            text: t.privacyPolicy.consentInfo,
          ),
          TextSpan(
            text: "https://tyrads.com/tyrsdk-privacy-policy/",
            style: const TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                acmoLaunchURLForce("https://tyrads.com/tyrsdk-privacy-policy/");
              },
          ),
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            t.privacyPolicy.title,
            style: GoogleFonts.lexend(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 16)),
            textAlign: TextAlign.center,
          ),
          Assets.images.privacyBanner.image(
            height: 180,
          ),
          Text(
            t.privacyPolicy.subtitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.lexend(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w400, fontSize: 14, height: 1.6),
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
