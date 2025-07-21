import 'package:shared_preferences/shared_preferences.dart';
import 'package:tyrads_sdk/src/acmo/core/constants/key_names.dart';
import 'package:tyrads_sdk/src/acmo/modules/usage_stats/widgets/usage_stats_tile.dart';
import 'package:tyrads_sdk/src/acmo/modules/users/pages/age_gender.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

import 'privacy_policy.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcmoUsagePermissionsPage extends StatelessWidget {
  const AcmoUsagePermissionsPage({super.key, this.closeButtononTap});
  final void Function()? closeButtononTap;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: CloseonTap(onTap: closeButtononTap)),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 30),
                    child: Column(
                      children: [
                        const Body(),
                        const SizedBox(height: 32,),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.1),
                                blurRadius: 10,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: AcmoAppUsageStatsTile(onGrant: () async {
                            SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                            prefs.setBool(
                                AcmoKeyNames.PRIVACY_ACCEPTED_FOR_USER_ID +
                                    Tyrads.instance.publisherUserID,
                                true);
                            Widget page;
                            if (Tyrads.instance.newUser) {
                              page = const AcmoUsersUpdatePage();
                            } else {
                              page = const AcmoOffersPage();
                            }
                            Tyrads.instance.to(page, replace: true);
                          }),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
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
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            t.usagePermissions.title,
            style: GoogleFonts.lexend(
                textStyle:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Assets.images.privacyBanner.image(
            height: 240,
          ),
        ),
      ],
    );
  }
}
