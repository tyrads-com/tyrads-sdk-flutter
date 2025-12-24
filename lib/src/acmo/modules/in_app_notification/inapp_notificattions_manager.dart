import 'package:flutter/foundation.dart' show ValueNotifier;
import 'package:tyrads_sdk/src/acmo/modules/in_app_notification/controllers.dart';

enum PromoType {
  limitedTimeOffer,
  currencySale,
}

class PromoAction {
  final PromoType type;
  final Duration delayAfter;

  PromoAction({
    required this.type,
    this.delayAfter = Duration.zero,
  });
}

class AcmoInAppNotificationManager {
  AcmoInAppNotificationManager._();
  static final instance = AcmoInAppNotificationManager._();

  final _controller = AcmoInAppNotificationController.instance;

  final ValueNotifier<List<PromoAction>> promoQueue =
      ValueNotifier([]);

  bool _shownLimited = false;
  bool _shownCurrency = false;

  void evaluatePromotions() {
    final List<PromoAction> queue = [];

    if (_controller.activeOffers.isNotEmpty && !_shownLimited) {
      _shownLimited = true;
      queue.add(
        PromoAction(
          type: PromoType.limitedTimeOffer,
          delayAfter: const Duration(milliseconds: 300),
        ),
      );
    }

    if (_controller.currencySales != null && !_shownCurrency) {
      _shownCurrency = true;
      queue.add(
        PromoAction(
          type: PromoType.currencySale,
        ),
      );
    }

    if (queue.isNotEmpty) {
      promoQueue.value = queue;
    }
  }

  void clearQueue() {
    promoQueue.value = [];
  }
}
