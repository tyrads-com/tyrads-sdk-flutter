import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../gen/assets.gen.dart';

class AcmoButtonOfferView extends StatelessWidget {
  const AcmoButtonOfferView({
    super.key,
    required this.onTap,
    this.label = "Play Now",
    this.labelColor,
    this.isLoading = false,
    this.disabledLabel,
    this.isDisabled = false,
    this.showIcon = false,
    this.color,
  });

  final Function onTap;
  final String label;
  final Color? labelColor;
  final String? disabledLabel;
  final bool isLoading;
  final bool isDisabled;
  final bool showIcon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (!isLoading && !isDisabled) onTap();
      },
      child: Card(
        child: Container(
          decoration: BoxDecoration(
            color: isDisabled
                ? const Color(0xFFE0E2E7)
                : color ?? Theme.of(context).colorScheme.secondary,
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          // onPressed: ()=>callback(),
          child: SizedBox(
            width: double.maxFinite,
            height: 42,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
                if (isLoading)
                  const SizedBox(
                    width: 10,
                    height: 10,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  ),
                if (isDisabled && showIcon)
                  Assets.icons.lock.image(
                    height: 16,
                    width: 16,
                    color: const Color(0xFFA3A9B6),
                  ),
                Text(
                  isDisabled ? (disabledLabel ?? label) : label,
                  style: GoogleFonts.poppins(
                      color:
                          isDisabled ? const Color(0xFFA3A9B6) : labelColor ?? Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
