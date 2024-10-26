import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/modules/tickets/page.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';
import '../../core/components/appbar.dart';
import '../../../gen/assets.gen.dart';
import 'components/list_tile.dart';

class AcmoHelpPage extends StatelessWidget {
  const AcmoHelpPage({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AcmoAppBar(
        titleText: 'Get Help',
      ),
      body: Column(children: [
        AcmoHelpItemComponent(
          icon: Assets.images.sadFace.image(
            color: Theme.of(context).colorScheme.secondary
          ),
          title: "I didn’t receive my points",
          onTap: () async {
            Tyrads.instance.to(AcmoTicketsPage(
              id: id,
            ));
          },
        ),
        // AcmoHelpItemComponent(
        //   icon: Assets.images.faqs.image(
        //     color: Theme.of(context).colorScheme.secondary
        //     ),
        //   title: "FAQs",
        //   onTap: () {
        //     acmoLaunchURLForce('https://support.tyrrewards.com/');
        //   },
        // ),
        const SizedBox(
          height: 16,
        )
      ]),
    );
  }
}
