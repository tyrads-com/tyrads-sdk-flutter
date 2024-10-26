import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/modules/policy_terms/page.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

@protected
class AcmoAppBarOfferwall extends StatefulWidget
    implements PreferredSizeWidget {
  const AcmoAppBarOfferwall({
    super.key,
    required this.titleText,
    this.onBack,
    this.onTap,
    this.showLeading = true,
  });
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
        actions: [
          GestureDetector(
            onTap: () {
              Tyrads.instance.to(const AcmoPrivacyTermsPage());
            },
            child: Row(
              children: [
                Icon(Icons.menu,
                    size: 24, color: Tyrads.instance.colorHeaderFg),
              ],
            ),
          ),
          const SizedBox(
            width: 16,
          )
        ],
        title: Text(widget.titleText));
  }
}
