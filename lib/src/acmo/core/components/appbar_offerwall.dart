import 'package:flutter/material.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';
@protected
class AcmoAppBarOfferwall extends StatefulWidget
    implements PreferredSizeWidget {
  const AcmoAppBarOfferwall({
    Key? key,
    required this.titleText,
    this.onBack,
    this.onTap,
    this.showLeading = true,
  }) : super(key: key);
  final String titleText;
  final Function()? onBack;
  final Function()? onTap;
  final bool showLeading;

  @override
  State<AcmoAppBarOfferwall> createState() => _AcmoAppBarOfferwallState();

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

class _AcmoAppBarOfferwallState extends State<AcmoAppBarOfferwall> {
  var isSearching = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: !widget.showLeading
            ? null
            : IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {
                  if (widget.onBack != null) {
                    widget.onBack!();
                  } else {
                    Tyrads.instance.back();
                  }
                },
              ),
        title: Text(widget.titleText));
  }
}
