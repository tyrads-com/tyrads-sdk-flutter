import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/core/components/appbar.dart';
import 'package:tyrads_sdk/src/acmo/core/components/button_3_cta.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';

import '../../../gen/assets.gen.dart';

class AcmoTicketRaisedPage extends StatelessWidget {
  const AcmoTicketRaisedPage({Key? key}) : super(key: key);

  final bottomNavigationIndex = 1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AcmoAppBar(
          titleText: t.ticketSubmitted.title,
        ),
        body: const AcmoBodyOfferIssues());
  }
}

class AcmoBodyOfferIssues extends StatefulWidget {
  const AcmoBodyOfferIssues({
    Key? key,
  }) : super(key: key);

  @override
  State<AcmoBodyOfferIssues> createState() => _AcmoBodyOfferIssuesState();
}

class _AcmoBodyOfferIssuesState extends State<AcmoBodyOfferIssues> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 56,
                    ),
                     Text(
                      t.ticketSubmitted.header,
                      style: const TextStyle(color: Colors.black, fontSize: 41),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    SizedBox(
                        width: 250,
                        child: FittedBox(
                            child: Assets.images.submitComplete.image(width: 250, height: 400))),
                    const SizedBox(
                      height: 22,
                    ),
                     Text(
                      t.ticketSubmitted.subheader,
                      style: const TextStyle(color: Colors.black, fontSize: 21),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                     Text(
                      t.ticketSubmitted.footnote,
                      style: const TextStyle(color: Colors.black, fontSize: 9),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: AcmoButton_3_Cta(
              label: t.ticketSubmitted.back,
              onTap: () async {
                Navigator.of(context)
                  ..pop()
                  ..pop()
                  ..pop();
              },
            ),
          ),
        )
      ],
    );
  }
}
