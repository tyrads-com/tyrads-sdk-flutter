
import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';

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
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 14,
                  height: 16.94 / 14,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "No offers ",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  TextSpan(
                    text: "available",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                    text: " right now\nPlease try again later!",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}