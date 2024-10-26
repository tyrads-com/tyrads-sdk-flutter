import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';
import '../../core/components/button_3_cta.dart';

class AcmoPageOfferIssuesSamplePurchase extends StatelessWidget {
  const AcmoPageOfferIssuesSamplePurchase({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: AcmoBodyOfferIssues());
  }
}

class AcmoBodyOfferIssues extends StatefulWidget {
  const AcmoBodyOfferIssues({
    super.key,
  });

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
                      height: 70,
                    ),
                    SizedBox(
                        width: 250,
                        child: FittedBox(
                            child: Assets.images.sampleProof.image(width: 250, height: 500))),
                    const SizedBox(
                      height: 22,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Please attach Order ID and Screenshot like shown above.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
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
              label: "I Understand",
              onTap: () async {
                Tyrads.instance.back();
              },
            ),
          ),
        )
      ],
    );
  }
}
