import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/pages/offers.dart';
import 'package:tyrads_sdk/src/acmo/modules/users/components/gender_select.dart';
import 'package:tyrads_sdk/src/acmo/modules/users/controller.dart';
import 'package:tyrads_sdk/src/app_config.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

import '../../../../gen/assets.gen.dart';
import '../../offers/components/button_primary.dart';
import '../components/age_select.dart';

class AcmoUsersUpdatePage extends StatefulWidget {
  const AcmoUsersUpdatePage({Key? key}) : super(key: key);

  @override
  State<AcmoUsersUpdatePage> createState() => _AcmoUsersUpdatePageState();
}

class _AcmoUsersUpdatePageState extends State<AcmoUsersUpdatePage> {
  final _controller = AcmoUsersController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  width: double.infinity,
                  child: Assets.images.singupBg.image(fit: BoxFit.fitWidth))),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 48),
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
                          'Last step..\nYou’re almost there!',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: AcmoConfig.SECONDARY_COLOR),
                        ),
                        const SizedBox(
                          height: 56,
                        ),
                        const Text(
                          'Choose Your Gender',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: AcmoConfig.SECONDARY_COLOR),
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
                          height: 56,
                        ),
                        const Text(
                          'Choose Your Age',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: AcmoConfig.SECONDARY_COLOR),
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
                      height: 57,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: AcmoComponentButtonPrimary(
                        isLoading: _controller.submiting,
                        titleText: "Continue",
                        onTap: _controller.submiting
                            ? null
                            : () {
                                setState(() {
                                  _controller.submiting = true;
                                });
                                _controller.updateUser(
                                    Tyrads.instance.publisherUserID);
                                Tyrads.instance.to(const AcmoOffersPage(),replace: true);
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
