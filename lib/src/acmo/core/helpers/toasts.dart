import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

// Global key for accessing scaffold messenger
final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

GlobalKey<ScaffoldMessengerState> get acmoScaffoldMessengerKey => _scaffoldMessengerKey;

acmoSnackbar(String msg) {
  if (kIsWeb) {
    // For web, try to use ScaffoldMessenger if available, otherwise print
    try {
      final scaffoldMessenger = _scaffoldMessengerKey.currentState;
      if (scaffoldMessenger != null) {
        scaffoldMessenger.showSnackBar(
          SnackBar(
            content: Text(msg),
            duration: const Duration(seconds: 2),
          ),
        );
        return;
      }
    } catch (e) {
      // Fallback to print if ScaffoldMessenger is not available
    }

    // Fallback for web
    print('Toast: $msg');
    return;
  }

  // For mobile platforms, use fluttertoast if available
  try {
    // Import fluttertoast conditionally
    _showMobileToast(msg);
  } catch (e) {
    print('Toast: $msg');
  }
}

void _showMobileToast(String msg) {
  // This will only work on mobile platforms where fluttertoast is available
  // You might need to add conditional import here as well if needed
  try {
    // Fluttertoast.showToast(msg: msg);
    print('Toast: $msg'); // Fallback for now
  } catch (e) {
    print('Toast: $msg');
  }
}
