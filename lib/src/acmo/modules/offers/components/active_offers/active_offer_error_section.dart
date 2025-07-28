import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_network/image_network.dart';
import 'package:styled_text/styled_text.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';

class AcmoActiveOfferErrorSection extends StatelessWidget {
  const AcmoActiveOfferErrorSection({
    super.key,
    required this.imageUrl,
    required this.icon,
    this.title,
    this.coinUrl,
    required this.styledText,
    this.onTapMoreInfo,
  });

  final String imageUrl;
  final Widget icon;
  final String? title;
  final String? coinUrl;
  final String styledText;
  final VoidCallback? onTapMoreInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 32),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: const Color(0xFFF0F1F3),
            width: 1,
          )),
      child: Column(
        spacing: 16,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              ImageNetwork(
                image: imageUrl,
                borderRadius: BorderRadius.circular(16),
                width: 56,
                height: 56,
              ),
              Positioned(
                child: Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color: const Color(0xFF000000).withValues(alpha: 0.35),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: icon,
                  ),
                ),
              ),
            ],
          ),
          if (title != null)
            Text(
              title!,
              style: GoogleFonts.poppins(
                fontSize: 12,
              ),
            ),
          StyledText(
            text: styledText,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 12,
            ),
            tags: {
              'b': StyledTextTag(
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                ),
              ),
              'coin': StyledTextWidgetBuilderTag(
                size: const Size(14, 14),
                (context, _, text) => ImageNetwork(
                  image: coinUrl ?? "",
                  height: 14,
                  width: 14,
                ),
              )
            },
          ),
          GestureDetector(
            onTap: onTapMoreInfo,
            child: Row(
              spacing: 8,
              mainAxisSize: MainAxisSize.min,
              children: [
                Assets.images.infoIcon.image(
                  width: 16,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                Text(
                  "More Information",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
