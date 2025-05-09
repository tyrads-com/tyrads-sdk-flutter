import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

import '../../../gen/assets.gen.dart';

class AcmoAppBarWithHelp extends StatefulWidget implements PreferredSizeWidget {
  const AcmoAppBarWithHelp(
      {Key? key,
      required this.titleText,
      this.onBack,
      this.onTap,
      required this.showHelp})
      : super(key: key);
  final String titleText;
  final Function()? onBack;
  final Function()? onTap;
  final ValueNotifier<bool> showHelp;

  @override
  State<AcmoAppBarWithHelp> createState() => _AcmoAppBarWithHelpState();

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

class _AcmoAppBarWithHelpState extends State<AcmoAppBarWithHelp> {
  var isSearching = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
        ),
        onPressed: () {
          if (widget.onBack != null) {
            widget.onBack!();
          } else {
            Navigator.pop(context);
          }
        },
      ),
      title: Text(
        widget.titleText,
        style: GoogleFonts.poppins(
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        ValueListenableBuilder<bool>(
            valueListenable: widget.showHelp,
            builder: (context, value, child) {
              if (value) {
                return GestureDetector(
                  onTap: widget.onTap,
                  child: Row(
                    children: [
                      Assets.images.helpIcon.image(
                          height: 16,
                          width: 16,
                          color: Tyrads.instance.colorHeaderFg),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        t.help.title, //"Help",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                );
              } else {
                return Container();
              }
            }),
        const SizedBox(
          width: 16,
        )
      ],
    );
  }
}
