import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/common.dart';
import 'package:tyrads_sdk/src/acmo/modules/tickets/page.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';
import '../../core/components/appbar.dart';
import '../../../gen/assets.gen.dart';
import 'components/list_tile.dart';

class AcmoHelpPage extends StatelessWidget {
  const AcmoHelpPage({Key? key, required this.id}) : super(key: key);
  final int id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AcmoAppBar(
        titleText: 'Get Help',
      ),
      body: Column(children: [
        AcmoHelpItemComponent(
          icon: Assets.images.sadFace.image(),
          title: "I didn’t receive my points",
          onTap: () async {
            Tyrads.instance.to(AcmoTicketsPage(
              id: id,
            ));
          },
        ),
        AcmoHelpItemComponent(
          icon: Assets.images.faqs.image(),
          title: "FAQs",
          onTap: () {
            acmoLaunchURLForce('https://support.tyrrewards.com/');
          },
        ),
        const SizedBox(
          height: 16,
        )
      ]),
    );
  }
}
