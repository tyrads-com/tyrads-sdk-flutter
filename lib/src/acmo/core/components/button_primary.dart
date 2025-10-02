import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoComponentButtonPrimary extends StatelessWidget {
  const AcmoComponentButtonPrimary({
    super.key,
    this.onTap,
    required this.titleText,
    this.isLoading = false,
  });

  final Function()? onTap;
  final String titleText;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Tyrads.instance.colorMain ?? Theme.of(context).colorScheme.secondary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: onTap,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (isLoading)
                      const SizedBox(
                        width: 10,
                        height: 10,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.2,
                          color: Color(0xffa3a9b6),
                        ),
                      ),
                    if (isLoading)
                      const SizedBox(
                        width: 10,
                      ),
                    Text(
                      titleText,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ],
    );
  }
}
