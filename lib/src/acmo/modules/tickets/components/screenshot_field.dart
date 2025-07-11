import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyrads_sdk/src/acmo/modules/tickets/controller.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';

class ScreenshotContainer extends StatelessWidget {
  const ScreenshotContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = AcmoTicketsController();
    return ValueListenableBuilder(
        valueListenable: controller.screenshotErrorText,
        builder: (context, error, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Screenshot',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.maxFinite,
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: error != null
                        ? const Color(0xFFFF554A)
                        : const Color(0xFFE0E2E7),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ValueListenableBuilder(
                    valueListenable: controller.fileName,
                    builder: (context, fileName, _) {
                      return Text(
                        fileName ?? 'Upload your file here...',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: fileName != null
                              ? Colors.black
                              : Colors.grey.shade800,
                        ),
                      );
                    }),
              ),
              if (error != null)
                const SizedBox(
                  height: 6,
                ),
              error != null
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      spacing: 8,
                      children: [
                        Assets.icons.info.image(
                          width: 16,
                          height: 16,
                          color: const Color(0xFFFF554A),
                        ),
                        Text(
                          "This field can't be empty",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: const Color(0xFFFF554A),
                          ),
                        ),
                      ],
                    )
                  : const SizedBox.shrink(),
            ],
          );
        });
  }
}