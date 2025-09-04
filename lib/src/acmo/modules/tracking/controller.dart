

import 'package:flutter/widgets.dart';

import 'repository.dart';

class AcmoTrackingController {
  final _repo = AcmoTrackingRepository();
  var submiting = false;

  trackUser(String activity) async {
    try {
      var fd = <String, dynamic>{};
      fd["activity"] = activity;
      await _repo.updateUser(fd);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
