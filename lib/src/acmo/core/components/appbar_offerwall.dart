import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyrads_sdk/src/acmo/modules/policy_terms/page.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
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
    this.onRefresh,
  });

  final String titleText;
  final Function()? onBack;
  final Function()? onTap;
  final Function()? onRefresh;
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
    final screenWidth = MediaQuery.of(context).size.width;

    final isDesktop = screenWidth >= 1024;
    final isTablet = screenWidth >= 600 && !isDesktop;

    return AppBar(
      leading: !widget.showLeading
          ? null
          : IconButton(
              icon: Assets.icons.angleLeft.image(
                height: 16,
                color: Tyrads.instance.colorHeaderFg,
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
          onTap: () async {
            if (isDesktop || isTablet) {
              showDialog(
                context: context,
                builder: (ctx) {
                  return Dialog(
                    insetPadding: EdgeInsets.symmetric(
                      horizontal: isDesktop ? 200 : 100,
                      vertical: 40,
                    ),
                    backgroundColor: const Color(0xFFF0F1F3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  offset: const Offset(0, 4),
                                  color: Colors.black.withValues(alpha: 0.06),
                                )
                              ],
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Settings",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                const Spacer(),
                                GestureDetector(
                                  onTap: () => Navigator.pop(ctx),
                                  child: Assets.icons.circleXOutlined.image(
                                    height: 16,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Expanded(
                            child: AcmoPrivacyTermsPage(
                              showAppBar: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            } else {
              await Tyrads.instance.to(const AcmoPrivacyTermsPage());
              widget.onRefresh?.call();
            }
          },
          child: Row(
            children: [
              Icon(Icons.menu, size: 22, color: Tyrads.instance.colorHeaderFg),
            ],
          ),
        ),
        const SizedBox(
          width: 16,
        )
      ],
      title: Text(
        widget.titleText,
        style: GoogleFonts.poppins(
          fontSize: 15.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
