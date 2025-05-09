import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/common.dart';
import 'package:tyrads_sdk/src/app_config.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';
import '../../../gen/assets.gen.dart';
import '../../core/components/appbar.dart';
import 'components/language_page.dart';
import 'components/list_tile.dart';

class AcmoPrivacyTermsPage extends StatefulWidget {
  const AcmoPrivacyTermsPage({super.key});

  @override
  State<AcmoPrivacyTermsPage> createState() => _AcmoPrivacyTermsPageState();
}

class _AcmoPrivacyTermsPageState extends State<AcmoPrivacyTermsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AcmoAppBar(
        titleText: t.privacyTerms.title,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          children: [
            AcmoHelpItemComponent(
              icon: Assets.icons.privacy.image(
                color: Colors.black,
                height: 24,
              ),
              title: t.privacyTerms.privacyPolicy,
              onTap: () => acmoLaunchURLForce(AcmoConfig.PRIVACY_POLICY),
            ),
            const SizedBox(height: 12),
            AcmoHelpItemComponent(
              icon: Assets.icons.terms.image(
                color: Colors.black,
              ),
              title: t.privacyTerms.termsOfService,
              onTap: () => acmoLaunchURLForce(AcmoConfig.TERMS_OF_SERVICE),
            ),
            const SizedBox(height: 12),
            AcmoHelpItemComponent(
                icon: Assets.icons.language.image(
                  color: Colors.black,
                  height: 24,
                ),
                title: t.language,
                onTap: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LanguagePage()))
                      .then((_) {
                    if (mounted) {
                      setState(() {});
                    }
                  });
                }),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
