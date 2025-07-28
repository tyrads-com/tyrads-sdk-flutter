import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';
import '../../core/components/appbar.dart';
import 'components/list_tile.dart';

class AcmoHelpPage extends StatelessWidget {
  const AcmoHelpPage({super.key, required this.id, required this.currencyUrl});
  final int id;
  final String currencyUrl;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AcmoAppBar(
        titleText: "I didn’t receive my TPoints",
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            AcmoHelpItemComponent(
              icon: CachedNetworkImage(
                imageUrl: currencyUrl,
                width: 16,
              ),
              title: "I didn’t receive my TPoints",
              onTap: () async {
                // Tyrads.instance.to(
                //   AcmoTicketsPage(
                //     id: id,
                //   ),
                // );
              },
            ),
            // AcmoHelpItemComponent(
            //   icon: Assets.images.faqs.image(
            //     color: Theme.of(context).colorScheme.secondary
            //     ),
            //   title: t.help.items.faqs.title,
            //   onTap: () {
            //     acmoLaunchURLForce('https://support.tyrrewards.com/');
            //   },
            // ),
            const SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}
