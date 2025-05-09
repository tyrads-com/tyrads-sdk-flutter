import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/core/components/loading.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class Loading {
  static OverlayEntry? _overlayEntry;
  static bool _isLoadingVisible = false;

  static void open() {
    if (_isLoadingVisible) return;

    _isLoadingVisible = true;

    _overlayEntry = OverlayEntry(
      builder: (context) => Stack(
        children: [
          ModalBarrier(
            color: Colors.black.withOpacity(0.5),
            dismissible: false,
          ),
          const Center(
            child: AcmoComponentLoading(),
          ),
        ],
      ),
    );

    Overlay.of(Tyrads.instance.navKey.currentContext!).insert(_overlayEntry!);
  }

  static void dismiss() {
    if (_isLoadingVisible && _overlayEntry != null) {
      _isLoadingVisible = false;
      _overlayEntry!.remove();
      _overlayEntry = null;
    }
  }
}
