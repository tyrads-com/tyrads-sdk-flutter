import 'package:tyrads_sdk/src/acmo/modules/offers/models/offers.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/repository.dart';

class AcmoOffersController {
  final _repo = AcmoOffersRepository();
  List<AcmoOffersModel> items = [];

  List<AcmoOffersModel> expiringItems = [];
  List<AcmoOffersModel> activeItems = [];
  List<AcmoOffersModel> completedItems = [];

  loadOffers() async {
    try {
      var r = await _repo.getOffers();
      items.clear();
      items.addAll(r.data);
      return items;
    } finally {}
  }

  loadActiveOffers() async {
    try {
      var r = await _repo.getActiveOffers();
      items.clear();
      completedItems.clear();
      expiringItems.clear();
      activeItems.clear();
      items.addAll(r.data);

      for (var element in items) {
        if (element.status == "completed") {
          completedItems.add(element);
        } else if (element.expiring_after != 0) {
          expiringItems.add(element);
        } else {
          activeItems.add(element);
        }
      }
      return items;
    } finally {}
  }
}
