import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:styled_text/tags/styled_text_tag.dart';
import 'package:styled_text/widgets/styled_text.dart';

class AcmoOverlayMessage extends StatelessWidget {
  const AcmoOverlayMessage({
    super.key,
    required this.icon,
    required this.styledMessage,
  });

  final Widget icon;
  final String styledMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withValues(alpha: 0.25),
      alignment: Alignment.topLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 20,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
          color: Color(0xFFA4A4A4),
        ),
        child: Row(
          spacing: 10,
          children: [
            icon,
            Flexible(
              child: StyledText(
                text: styledMessage,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 12,
                ),
                tags: {
                  'b': StyledTextTag(
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}