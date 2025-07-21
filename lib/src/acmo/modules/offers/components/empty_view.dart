import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:styled_text/styled_text.dart';

class AcmoEmptyView extends StatelessWidget {
  const AcmoEmptyView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height -
          kToolbarHeight -
          kBottomNavigationBarHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.icons.wind.image(
            height: 58,
            color: const Color(0xFFA3A9B6),
          ),
          const SizedBox(
            height: 32,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .75,
            child: StyledText(
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                height: 16.94 / 14,
                color: Colors.black,
              ),
              text: 'No offers available yet!',
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
