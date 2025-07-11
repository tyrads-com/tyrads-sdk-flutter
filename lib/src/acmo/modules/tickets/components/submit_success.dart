import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyrads_sdk/src/acmo/core/components/appbar.dart';
import 'package:tyrads_sdk/src/acmo/core/components/bottombar_button.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';

class AcmoTicketSubmitSuccessPage extends StatelessWidget {
  const AcmoTicketSubmitSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AcmoAppBar(
        titleText: t.ticketSubmitted.title,
      ),
      bottomNavigationBar: AcmoBottomBarButton(
        showButton: ValueNotifier(true),
        label: 'Ok',
        onTap: () {
          Navigator.of(context)
            ..pop()
            ..pop();
        },
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.icons.badgeCheck.image(
                height: 55,
                color: Theme.of(context).colorScheme.secondary,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Ticket Submitted Successfully!',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Thank you for reaching out! Our support team is reviewing your request and will get back to you soon.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF323434),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
