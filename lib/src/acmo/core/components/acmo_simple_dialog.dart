import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:styled_text/tags/styled_text_tag.dart';
import 'package:styled_text/widgets/styled_text.dart';

class AcmoSimpleDialog extends StatelessWidget {
  const AcmoSimpleDialog({
    super.key,
    required this.title,
    this.titleIcon,
    required this.styledInformation,
    this.textAlign,
  });

  final String title;
  final Widget? titleIcon;
  final String styledInformation;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      insetPadding: const EdgeInsets.all(36),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.close,
                size: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: titleIcon == null ? MainAxisAlignment.center : MainAxisAlignment.start,
              children: [
                titleIcon ?? const SizedBox(),
                if(titleIcon != null) const SizedBox(width: 8),
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Divider(
              color: Color(0xFFE0E2E7),
              thickness: 1,
              indent: 0,
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: StyledText(
              text: styledInformation,
              textAlign: textAlign ?? TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 12,
              ),
              tags: {
                'b': StyledTextTag(
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              },
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
