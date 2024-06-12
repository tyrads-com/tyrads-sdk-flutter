import 'package:tyrads_sdk/src/acmo/modules/tickets/issues_raised.dart';
import 'package:tyrads_sdk/src/acmo/modules/tickets/model/tickets.dart';
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
      var r = await _repository.getTickets(id);
      items.clear();
      items.addAll(r.data);
      loading = false;
      return items;
    } finally {}
  }

  submitTicket() async {
    if (!submiting) {
      submiting = true;
      if (submitEventIds.isEmpty) {
        acmoSnackbar("Please select an event");
        return;
      }
      try {
        await _repository.submitTicket(
            offerID: id, eventID: submitEventIds.first);
        Tyrads.instance.to(const AcmoTicketRaisedPage());
        submiting = false;
      } catch(e) {
        acmoSnackbar("Error submitting ticket");
      }
    }
  }
}
