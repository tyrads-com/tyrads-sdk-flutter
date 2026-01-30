import 'package:flutter/foundation.dart' show ValueNotifier;
import 'package:tyrads_sdk/src/acmo/modules/in_app_notification/controllers.dart';

enum PromoType {
  limitedTimeOffer,
  currencySale,
}

class PromoAction {
  final PromoType type;
  final Duration delayAfter;

  final dynamic data;

  PromoAction({
    required this.type,
    this.delayAfter = Duration.zero,
    this.data,
  });
}

class AcmoInAppNotificationManager {
  AcmoInAppNotificationManager._();
  static final instance = AcmoInAppNotificationManager._();

  final _controller = AcmoInAppNotificationController.instance;

  final ValueNotifier<List<PromoAction>> promoQueue =
      ValueNotifier([]);

  Future<void> evaluatePromotions() async {
    final List<PromoAction> queue = [];

    if (_controller.activeOffers.isNotEmpty) {
      final campaignIds = _controller.activeOffers.map((e) => e.campaignId).toList();
      final hasShown = await _controller.hasShownLimitedTimeOfferNotification(campaignIds);
      
      if (!hasShown) {
        queue.add(
          PromoAction(
            type: PromoType.limitedTimeOffer,
            data: campaignIds,
            delayAfter: const Duration(milliseconds: 300),
          ),
        );
      }
    }

    if (_controller.currencySales != null) {
      final saleId = _controller.currencySales!.name ?? 'default_sale';
      final hasShown = await _controller.hasShownCurrencySalesNotification(saleId);

      if (!hasShown) {
        queue.add(
          PromoAction(
            type: PromoType.currencySale,
            data: saleId,
          ),
        );
      }
    }

    if (queue.isNotEmpty) {
      promoQueue.value = queue;
    }
  }

  void clearQueue() {
    promoQueue.value = [];
  }
}
