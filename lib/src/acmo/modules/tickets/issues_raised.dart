import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/core/components/appbar.dart';
import 'package:tyrads_sdk/src/acmo/core/components/button_3_cta.dart';

import '../../../gen/assets.gen.dart';

class AcmoTicketRaisedPage extends StatelessWidget {
  const AcmoTicketRaisedPage({Key? key}) : super(key: key);

  final bottomNavigationIndex = 1;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: AcmoAppBar(
          titleText: 'I didn’t receive my points',
        ),
        body: AcmoBodyOfferIssues());
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
                    const Text(
                      'We’re on it..',
                      style: TextStyle(color: Colors.black, fontSize: 41),
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
                    const Text(
                      'We know what we’re doing',
                      style: TextStyle(color: Colors.black, fontSize: 21),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    const Text(
                      'trust me.',
                      style: TextStyle(color: Colors.black, fontSize: 9),
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
              label: "Back to offer page",
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
