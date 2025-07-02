import 'package:awesome_select_plus/awesome_select.dart';
import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/common.dart';
import 'package:tyrads_sdk/src/app_config.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';
import '../../core/components/appbar.dart';
import '../../../gen/assets.gen.dart';
import 'components/list_tile.dart';

class AcmoPrivacyTermsPage extends StatefulWidget {
   const AcmoPrivacyTermsPage({super.key});

  @override
  State<AcmoPrivacyTermsPage> createState() => _AcmoPrivacyTermsPageState();
}

class _AcmoPrivacyTermsPageState extends State<AcmoPrivacyTermsPage> {
   final List<S2Choice<String>> languageOptions = [
    S2Choice<String>(value: 'en', title: 'English'),
    S2Choice<String>(value: 'es', title: 'Spanish'),
    S2Choice<String>(value: 'id', title: 'Indonesian'),
    S2Choice<String>(value: 'ja', title: 'Japanese'),
    S2Choice<String>(value: 'ko', title: 'Korean'),
    S2Choice<String>(value: 'device', title: 'Device Default'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AcmoAppBar(
        titleText: t.privacyTerms.title,
      ),
      body: Column(children: [
        AcmoHelpItemComponent(
          icon: Assets.images.privacy
              .image(color: Theme.of(context).colorScheme.secondary),
          title: t.privacyTerms.privacyPolicy,
          onTap: () async {
            acmoLaunchURLForce(AcmoConfig.PRIVACY_POLICY);
          },
        ),
        AcmoHelpItemComponent(
          icon: Assets.images.terms
              .image(color: Theme.of(context).colorScheme.secondary),
          title: t.privacyTerms.termsOfService,
          onTap: () async {
            acmoLaunchURLForce(AcmoConfig.TERMS_OF_SERVICE);
          },
        ),
        SmartSelect<String>.single(
          title: t.language,
          selectedValue: Tyrads.instance.selectedLanguage,
          choiceItems: languageOptions,
          onChange: (state) async{
            var selectedLanguage = state.value;
            Tyrads.instance.changeLanguage(selectedLanguage);
            if(mounted){
              setState(() {});
            }
          },
        ),
        const SizedBox(
          height: 16,
        )
      ]),
    );
  }
}