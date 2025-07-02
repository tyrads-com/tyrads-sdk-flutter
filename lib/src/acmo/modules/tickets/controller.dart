import 'package:dio/dio.dart';
import 'package:tyrads_sdk/src/acmo/modules/tickets/issues_raised.dart';
import 'package:tyrads_sdk/src/acmo/modules/tickets/model/tickets.dart';
import 'package:tyrads_sdk/src/acmo/modules/tracking/activities.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

import '../../core/helpers/toasts.dart';
import 'repository.dart';

class AcmoTicketsController {
  AcmoTicketsController(this.id);
  int page = 1;
  int perPage = 99;

  var submiting = false;
  var items = <AcmoTicketsModel>[];
  var id;
  var submitEventIds = [];
  var fd = <String, dynamic>{};

  final AcmoTicketsRepository _repository = AcmoTicketsRepository();

  var loadedData = <String, dynamic>{};
  var loading = true;

  load(id) async {
    try {
      this.id = id;
      var r = await _repository.getTickets(id);
      items.clear();
      items.addAll(r.data);
      loading = false;
      Tyrads.instance.track(TyradsActivity.supportTicketShown);
      return items;
    } finally {}
  }

  submitTicket() async {
    if (!submiting) {
      if (submitEventIds.isEmpty) {
        acmoSnackbar("Please select an event");
        return;
      }
      submiting = true;
      try {
        await _repository.submitTicket(
            offerID: id, eventID: submitEventIds.first, fd: fd);
        Tyrads.instance.to(const AcmoTicketRaisedPage());
      } on DioException catch (e) {
        acmoSnackbar(e.response?.data["message"]?.toString() ?? "Error submitting ticket");
      } finally {
        submiting = false;
      }
    }
  }
}
