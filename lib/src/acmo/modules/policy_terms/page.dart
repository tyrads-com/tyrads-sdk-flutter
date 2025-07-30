import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/common.dart';
import 'package:tyrads_sdk/src/app_config.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';
import '../../../gen/assets.gen.dart';
import '../../core/components/appbar.dart';
import 'components/language_page.dart';
import 'components/list_tile.dart';

class AcmoPrivacyTermsPage extends StatefulWidget {
  const AcmoPrivacyTermsPage({super.key, this.showAppBar = true});
  final bool showAppBar;


  @override
  State<AcmoPrivacyTermsPage> createState() => _AcmoPrivacyTermsPageState();
}

class _AcmoPrivacyTermsPageState extends State<AcmoPrivacyTermsPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final isDesktop = screenWidth >= 1024;
    final isTablet = screenWidth >= 600 && !isDesktop;

    return Scaffold(
      appBar: widget.showAppBar? AcmoAppBar(
        titleText: t.privacyTerms.title,
      ): null,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          children: [
            AcmoHelpItemComponent(
              icon: Assets.icons.privacy.image(
                color: Colors.black,
                height: 24,
              ),
              title: t.privacyTerms.privacyPolicy,
              onTap: () => acmoLaunchURLForce(AcmoConfig.PRIVACY_POLICY),
            ),
            const SizedBox(height: 12),
            AcmoHelpItemComponent(
              icon: Assets.icons.terms.image(
                color: Colors.black,
              ),
              title: t.privacyTerms.termsOfService,
              onTap: () => acmoLaunchURLForce(AcmoConfig.TERMS_OF_SERVICE),
            ),
            const SizedBox(height: 12),
            AcmoHelpItemComponent(
                icon: Assets.icons.language.image(
                  color: Colors.black,
                  height: 24,
                ),
                title: t.language,
                onTap: () {
                  if (isTablet || isDesktop) {
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
                                        color: Colors.black
                                            .withValues(alpha: 0.06),
                                      )
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Languages",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                        ),
                                      ),
                                      const Spacer(),
                                      GestureDetector(
                                        onTap: () => Navigator.pop(ctx),
                                        child:
                                        Assets.icons.circleXOutlined.image(
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
                                  child: LanguagePage(
                                    showAppBar: false,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ).then((_) {
                      if (mounted) {
                        setState(() {});
                      }
                    });
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LanguagePage(),
                      ),
                    ).then((_) {
                      if (mounted) {
                        setState(() {});
                      }
                    });
                  }
                }),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
