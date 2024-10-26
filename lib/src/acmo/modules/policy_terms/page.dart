import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/common.dart';
import 'package:tyrads_sdk/src/app_config.dart';
import '../../core/components/appbar.dart';
import '../../../gen/assets.gen.dart';
import 'components/list_tile.dart';

class AcmoPrivacyTermsPage extends StatelessWidget {
  const AcmoPrivacyTermsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AcmoAppBar(
        titleText: 'Privacy & Terms',
      ),
      body: Column(children: [
        AcmoHelpItemComponent(
          icon: Assets.images.privacy
              .image(color: Theme.of(context).colorScheme.secondary),
          title: "Privacy Policy",
          onTap: () async {
            acmoLaunchURLForce(AcmoConfig.PRIVACY_POLICY);
          },
        ),
        AcmoHelpItemComponent(
          icon: Assets.images.terms
              .image(color: Theme.of(context).colorScheme.secondary),
          title: "Terms of Service",
          onTap: () async {
            acmoLaunchURLForce(AcmoConfig.TERMS_OF_SERVICE);
          },
        ),
        const SizedBox(
          height: 16,
        )
      ]),
    );
  }
}
