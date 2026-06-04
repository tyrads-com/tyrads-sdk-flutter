import 'dart:developer';

import 'package:tyrads_sdk/src/acmo/modules/in_app_notification/inapp_notification_executor.dart';
import 'package:tyrads_sdk/src/acmo/modules/in_app_notification/inapp_notificattions_manager.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoInAppContextBridge {
  AcmoInAppContextBridge._();
  static final instance = AcmoInAppContextBridge._();
  bool _listenerAttached = false;
  bool _isRetrying = false;

  void init() {
    log(name: "Tyrads SDK", "Initializing In-App Notification Context Bridge...");
    _ensureListening();
    _tryExecute();
  }

  void _ensureListening() {
    if (_listenerAttached) return;
    _listenerAttached = true;
    log(name: "Tyrads SDK", "Attaching listener to promo queue.");
    AcmoInAppNotificationManager.instance.promoQueue
        .addListener(_onQueueChanged);
  }

  void _onQueueChanged() {
    log(name: "Tyrads SDK", "Queue changed, items: ${AcmoInAppNotificationManager.instance.promoQueue.value.length}");
    _tryExecute();
  }

  void _tryExecute() {
    final queue = AcmoInAppNotificationManager.instance.promoQueue.value;
    if (queue.isEmpty) {
      log(name: "Tyrads SDK", "Queue is empty, skipping execution.");
      return;
    }

    Future.microtask(() async {
      if (!_listenerAttached) {
        log(name: "Tyrads SDK", "Bridge disposed, aborting execution.");
        return;
      }
      log(name: "Tyrads SDK", "Checking for context...");

      final liveCtx = Tyrads.instance.navKey.currentContext;

      if (liveCtx == null || !liveCtx.mounted) {
        log(name: "Tyrads SDK", "Context is not ready or unmounted. Retrying in 1.5s...");

        if (!_isRetrying) {
          _isRetrying = true;
          await Future.delayed(const Duration(milliseconds: 1500));
          _isRetrying = false;
          _tryExecute();
        }
        return;
      }

      final liveQueue = AcmoInAppNotificationManager.instance.promoQueue.value;
      if (liveQueue.isEmpty) {
        log(name: "Tyrads SDK", "Queue became empty before execution.");
        return;
      }

      log(name: "Tyrads SDK", "Executing ${liveQueue.length} promotions on context: $liveCtx");

      await Future.delayed(const Duration(milliseconds: 500));
      if (!liveCtx.mounted) {
        log(name: "Tyrads SDK", "Context unmounted during delay.");
        return;
      }

      try {
        await AcmoPromoExecutor.instance.execute(liveCtx, liveQueue);
        log(name: "Tyrads SDK", "Execution finished successfully.");
      } catch (e) {
        log(name: "Tyrads SDK", "Execution failed: $e");
      } finally {
        AcmoInAppNotificationManager.instance.clearQueue();
        log(name: "Tyrads SDK", "Queue cleared.");
      }
    });
  }

  void dispose() {
    log(name: "Tyrads SDK", "Disposing bridge.");
    AcmoInAppNotificationManager.instance.promoQueue
        .removeListener(_onQueueChanged);
    _listenerAttached = false;
  }
}
