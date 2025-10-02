import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyrads_sdk/src/acmo/core/components/button_primary.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/toasts.dart';
import 'package:tyrads_sdk/src/acmo/core/services/localization_service.dart';
import 'package:tyrads_sdk/src/acmo/modules/users/components/gender_select.dart';
import 'package:tyrads_sdk/src/acmo/modules/users/controller.dart';
import 'package:tyrads_sdk/src/acmo/modules/web_sdk/web_sdk.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

import '../components/age_select.dart';

class AcmoUsersUpdatePage extends StatefulWidget {
  final bool isReturningToWidget;

  const AcmoUsersUpdatePage({
    super.key,
    this.isReturningToWidget = false,
  });

  @override
  State<AcmoUsersUpdatePage> createState() => _AcmoUsersUpdatePageState();
}

class _AcmoUsersUpdatePageState extends State<AcmoUsersUpdatePage> {
  final _controller = AcmoUsersController();
  final localization = LocalizationService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Stack(
        children: [
          // Align(
          //     alignment: Alignment.bottomCenter,
          //     child: SizedBox(
          //         width: double.infinity,
          //         child: Assets.images.singupBg.image(fit: BoxFit.fitWidth))),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          localization
                              .translate('data.initialization.userInfo.title'),
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Tyrads.instance.colorMain ??
                                Theme.of(context).colorScheme.secondary,
                            height: 27.5 / 16,
                          ),
                        ),
                        const SizedBox(
                          height: 56,
                        ),
                        Text(
                          localization.translate(
                              'data.initialization.userInfo.chooseGender.label'),
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Tyrads.instance.colorMain ??
                                Theme.of(context).colorScheme.secondary,
                            height: 27.5 / 16,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                            height: 120,
                            child: AcmoComponentGenderSelect(
                              onChanged: (v) {
                                _controller.fd['gender'] = v;
                              },
                            )),
                        const SizedBox(
                          height: 100,
                        ),
                        Text(
                          localization.translate(
                              'data.initialization.userInfo.chooseAge.label'),
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Tyrads.instance.colorMain ??
                                Theme.of(context).colorScheme.secondary,
                            height: 27.5 / 16,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        AcmoComponentAgeSelector(
                          onChanged: (v) {
                            _controller.fd['age'] = v;
                          },
                        ),
                      ],
                    ),
                    // Assets.images.
                    const SizedBox(
                      height: 55,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: AcmoComponentButtonPrimary(
                        isLoading: _controller.submiting,
                        titleText: localization.translate(
                            'data.initialization.userInfo.cta.continue'),
                        onTap: _controller.submiting
                            ? null
                            : () async {
                                if (_controller.fd['age'] == "" ||
                                    _controller.fd['gender'] == "" ||
                                    _controller.fd['age'] == null ||
                                    _controller.fd['gender'] == null) {
                                  acmoSnackbar(
                                      "Please select gender and age to proceed.");
                                  return;
                                }
                                if (mounted) {
                                  setState(() {
                                    _controller.submiting = true;
                                  });
                                }
                                await _controller.updateUser(
                                    Tyrads.instance.publisherUserID);
                                if (widget.isReturningToWidget) {
                                  if (!context.mounted) return;
                                  // if (AcmoPlatform.isIOS) {
                                    Navigator.pop(context, true);
                                  // } else {
                                  //   Navigator.of(context)
                                  //     ..pop(true)
                                  //     ..pop(true);
                                  // }
                                } else {
                                  Tyrads.instance
                                      .to(const AcmoWebSdk(), replace: true);
                                }
                              },
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
