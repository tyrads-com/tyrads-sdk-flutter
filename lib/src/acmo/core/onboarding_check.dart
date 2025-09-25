
import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/core/constants/key_names.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/platform.dart';
import 'package:tyrads_sdk/src/acmo/modules/legal/privacy_policy.dart';
import 'package:tyrads_sdk/src/acmo/modules/legal/usage_permissions.dart';
import 'package:tyrads_sdk/src/acmo/modules/usage_stats/controller.dart';
import 'package:tyrads_sdk/src/acmo/modules/users/pages/age_gender.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';
import 'package:usage_stats_new/usage_stats.dart';

class OnboardingCheck {
  OnboardingCheck._();

  static final _instance = OnboardingCheck._();
  static OnboardingCheck get instance => _instance;

  Future<bool> checkOnboardingStatus(BuildContext context) async {
    if (await Tyrads.instance.waitAndCheck() == false) {
      return false;
    }
    if (!context.mounted) {
      return false;
    }

    final navigator = Navigator.of(context);

    if (!navigator.context.mounted) {
      return false;
    }

    Tyrads.instance.parentContext = context;

    final prefs = Tyrads.instance.prefs;

    var privacyAccepted = prefs.getBool(
            AcmoKeyNames.PRIVACY_ACCEPTED_FOR_USER_ID +
                Tyrads.instance.publisherUserID) ??
        false;

    if (!privacyAccepted) {
      final result = await navigator.push(
        MaterialPageRoute(
          builder: (c) =>
              const AcmoPrivacyPolicyPage(isReturningToWidget: true),
        ),
      );
      if (!navigator.context.mounted) {
        return false;
      }

      if (result != true) {
        return false;
      }
    }

    final postPrivacyCheck = prefs.getBool(
            AcmoKeyNames.PRIVACY_ACCEPTED_FOR_USER_ID +
                Tyrads.instance.publisherUserID) ??
        false;

    if (!postPrivacyCheck) return false;

    if (AcmoPlatform.isAndroid) {
      final usageController = AcmoControllerUsageStats();
      bool status = await UsageStats.checkUsagePermission() ?? false;

      if (!status) {
        final result = await navigator.push(
          MaterialPageRoute(
            builder: (c) =>
                const AcmoUsagePermissionsPage(isReturningToWidget: true),
          ),
        );
        if (!context.mounted) return false;

        if (result != true) return false;

        bool newStatus = await UsageStats.checkUsagePermission() ?? false;
        
        if (!newStatus) {
          return false;
        }
        usageController.saveUsageStats();
      } else {
        usageController.saveUsageStats();
      }
    }

    if (Tyrads.instance.newUser) {
      final result = await navigator.push(
        MaterialPageRoute(
          builder: (c) => const AcmoUsersUpdatePage(isReturningToWidget: true),
        ),
      );

      if (!navigator.context.mounted) {
        return false;
      }

      if (result != true) {
        return false;
      }
    }

    return true;
  }
}
