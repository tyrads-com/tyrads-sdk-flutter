import 'dart:io';

import 'package:tyrads_sdk/src/acmo/modules/offer_details/models/offer_details.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/repository.dart';

import '../../core/helpers/common.dart';

class AcmoOffersDetailsController {
  AcmoOffersDetailsController(this.id);
  var allCompletedEvents = <PayoutEvents>[];
  var allActiveEvents = <PayoutEvents>[];
  var purchaseEvents = <PayoutEvents>[];
  var duplicateEvents = <PayoutEvents>[];
  var dailyPurchaseEvents = <PayoutEvents>[];
  var maxPoints = 0;
  var maxPurchasePoints = 0;
  var earnedPurchasePoints = 0;
  var playClicked = false;
  var offerLoading = false;
  var fd = <String, dynamic>{};

  late int id;
  final _repo = AcmoOfferDetailsRepository();
  late AcmoOfferDetailsModel item;

  loadOfferDetails(id) async {
    try {
      var r = await _repo.getOfferDetails(id);
      item = r.data;
      maxPoints = 0;
      maxPurchasePoints = 0;
      earnedPurchasePoints = 0;
      allCompletedEvents.clear();
      allActiveEvents.clear();
      item.payoutEvents.forEach((element) async {
        if (element.payoutAmount == 0) return;
        maxPoints += element.payoutAmountConverted;

        if (element.allowDuplicateEvents ||
            element.eventCategory == "purchase") {
          maxPurchasePoints += element.payoutAmountConverted;
          if (element.conversionStatus.isNotEmpty) {
            earnedPurchasePoints += element.payoutAmountConverted;
          }
          if (element.allowDuplicateEvents) {
            if (element.eventCategory == "purchase") {
              dailyPurchaseEvents.add(element);
            } else {
              duplicateEvents.add(element);
            }
          } else {
            purchaseEvents.add(element);
          }
        } else {
          if (element.conversionStatus == "success") {
            allCompletedEvents.add(element);
          } else {
            allActiveEvents.add(element);
          }
        }
      });
      return item;
    } finally {}
  }

  openOffer() async {
    playClicked = true;
    offerLoading = true;

    var packageName = item.app.packageName;
    String url = item.tracking.clickUrl ?? '';
    if (item.isInstalled) {
      if (Platform.isAndroid) {
        url = 'market://launch?id=$packageName';
      } else {
        url = item.app.previewUrl;
      }
    } else {
      await _repo.activateOffer(id: id);
    }
    acmoLaunchURLForce(url);
    offerLoading = false;
  }
}
