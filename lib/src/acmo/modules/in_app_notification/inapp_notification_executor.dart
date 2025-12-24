import 'package:flutter/material.dart' show BuildContext, showDialog, Colors;
import 'package:tyrads_sdk/src/acmo/modules/in_app_notification/inapp_notificattions_manager.dart';
import 'package:tyrads_sdk/src/acmo/modules/in_app_notification/pages/currency_sales_notif.dart';
import 'package:tyrads_sdk/src/acmo/modules/in_app_notification/pages/limited_time_offer_notif.dart';

class AcmoPromoExecutor {
  AcmoPromoExecutor._();
  static final instance = AcmoPromoExecutor._();

  bool _isShowing = false;

  Future<void> execute(
    BuildContext context,
    List<PromoAction> actions,
  ) async {
    if (_isShowing || actions.isEmpty) return;
    _isShowing = true;

    for (final action in actions) {
      if (!context.mounted) break;

      switch (action.type) {
        case PromoType.limitedTimeOffer:
          await showDialog(
            context: context,
            barrierColor: Colors.transparent,
            builder: (_) => const LimitedTimeOfferDialog(),
          );
          break;

        case PromoType.currencySale:
          await showDialog(
            context: context,
            barrierColor: Colors.transparent,
            builder: (_) => const CurrencySalesDialog(),
          );
          break;
      }

      if (action.delayAfter != Duration.zero) {
        await Future.delayed(action.delayAfter);
      }
    }

    _isShowing = false;
  }
}
