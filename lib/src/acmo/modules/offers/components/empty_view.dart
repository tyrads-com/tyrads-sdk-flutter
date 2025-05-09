
import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:styled_text/styled_text.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';

class AcmoEmptyView extends StatelessWidget {
  const AcmoEmptyView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Assets.images.emptyIcon.image(height: 128),
          SizedBox(
            width: MediaQuery.of(context).size.width * .75,
            child: StyledText(
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                height: 16.94 / 14,
                color: Colors.black,
              ),
              text: t.offers.emptyMessage,
              tags: {
                'b': StyledTextTag(
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
              },
            ),
          ),
        ],
      ),
    );
  }
}