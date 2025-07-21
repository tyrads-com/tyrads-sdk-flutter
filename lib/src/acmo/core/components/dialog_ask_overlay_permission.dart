import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:styled_text/styled_text.dart';
import 'package:tyrads_sdk/src/acmo/core/components/button_3_wrap.dart';
import '../../../gen/assets.gen.dart';
import '../helpers/common.dart';
class AcmoDialogAskOverlayPermission extends StatelessWidget {
  const AcmoDialogAskOverlayPermission({super.key});
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Dialog(
        elevation: 2,
        child: SizedBox(
          width: 330,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const SizedBox(
                        width: 277,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 8,top: 4),
                              child: Icon(Icons.close,color: Colors.black,size: 16,),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "Now you can get paid by",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 16, fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.lexend().fontFamily),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "PLAYING PER MINUTE!",
                  style: TextStyle(
                    color:Theme.of(context).colorScheme.secondary,
                    fontSize: 21, fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.lexend().fontFamily),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Assets.images.playtimeTracking.image(height: 250, width: 272),
              const SizedBox(
                height: 24,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Permit Accessibility Access",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: StyledText(
                  text:
                      "*You agree that Tyr Rewards uses the Accessibility Service API and uses this to enable our playtime features, so that we can reward you out for your gameplay",
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black38),
                  tags: {
                    'blue': StyledTextTag(
                        style: const TextStyle(color: Color(0xFF828CF5))),
                    'orange': StyledTextTag(
                        style: const TextStyle(color: Color(0xFFF8B148))),
                  },
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              InkWell(
                onTap: () {
                  acmoLaunchURLForce(
                      "https://support.tyrrewards.com/en/articles/9012704-playtime-explanation");
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Text(
                    "Read article",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AcmoButton_3_Wrap(
                      label: "Click to accept",
                      activeColor: true,
                      width: 200,
                      onTap: () async {
                        Navigator.pop(context,true);
                      },
                    ),
                    const SizedBox(height: 8,),
                    AcmoButton_3_Wrap(
                      label: "Not now",
                      width: 100,
                      color: Colors.transparent,
                      textColor: Colors.black38,
                      onTap: () async {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
