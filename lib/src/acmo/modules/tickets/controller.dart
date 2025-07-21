import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:http_parser/http_parser.dart' show MediaType;
import 'package:image_picker/image_picker.dart';
import 'package:tyrads_sdk/src/acmo/modules/tickets/components/submit_success.dart';
import 'package:tyrads_sdk/src/acmo/modules/tickets/model/tickets.dart';
import 'package:tyrads_sdk/src/acmo/modules/tracking/activities.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

import '../../core/helpers/toasts.dart';
import 'repository.dart';

class AcmoTicketsController {
  AcmoTicketsController._();
  static final AcmoTicketsController instance = AcmoTicketsController._();
  factory AcmoTicketsController() => instance;
  int page = 1;
  int perPage = 99;

  var submiting = false;
  var items = <AcmoTicketsModel>[];
  var submitEventIds = [];
  var fd = <String, dynamic>{};

  final AcmoTicketsRepository _repository = AcmoTicketsRepository();

  var loadedData = <String, dynamic>{};
  final ValueNotifier<bool> loading = ValueNotifier(false);
  List<AcmoTicketEventsModel> taskEvents = [];
  List<AcmoTicketEventsModel> microchargeEvents = [];
  XFile? screenshot;
  final ValueNotifier<int?> selectedEventID = ValueNotifier<int?>(null);
  final ValueNotifier<String?> fileName = ValueNotifier<String?>(null);
  final ValueNotifier<String?> screenshotErrorText =
      ValueNotifier<String?>(null);
  AcmoTicketEventsModel? currentActiveEvent;

  load(id) async {
    loading.value = true;
    try {
      var r = await _repository.getTickets(id);
      items = r.data;
      taskEvents = items
          .where((item) => item.category.toLowerCase() == "task")
          .expand((item) => item.events)
          .where((e) => e.identifier.toLowerCase() != "install")
          .toList();
      microchargeEvents = items
          .where((item) => item.category.toLowerCase() == "microcharge")
          .expand((item) => item.events)
          .toList();
      try {
        currentActiveEvent =
            taskEvents.firstWhere((e) => e.conversionStatus.isEmpty);
      } catch (e) {
        currentActiveEvent = null;
      }
      Tyrads.instance.track(TyradsActivity.supportTicketShown);
      return items;
    } finally {
      loading.value = false;
    }
  }

  submitTicket(int id) async {
    if (!submiting) {
      submiting = true;
      try {
        if (screenshot != null) {
          var mimeType = screenshot!.mimeType;
          var type = mimeType?.split('/').firstOrNull ?? "image";
          var subType = mimeType?.split('/').lastOrNull ?? "png";
          fd['image'] = await MultipartFile.fromFile(
            screenshot!.path,
            filename: fileName.value,
            contentType: MediaType(type, subType),
          );
        }
        log(fd.toString());
        final result = await _repository.submitTicket(
            offerID: id, eventID: selectedEventID.value, fd: fd);
        if (result) {
          screenshot = null;
          fileName.value = null;
          fd.clear();
          Tyrads.instance.to(const AcmoTicketSubmitSuccessPage());
        }
      } on DioException catch (e) {
        acmoSnackbar(e.response?.data["message"]?.toString() ??
            "Error submitting ticket");
      } finally {
        submiting = false;
      }
    }
  }

  Future<void> onBrowseFile() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      screenshot = image;
      screenshotErrorText.value = null;
      fileName.value = image.name;
    }
  }
}
