import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                backgroundColor: Theme.of(context).colorScheme.secondary,
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
                        child: CircularProgressIndicator(),
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
