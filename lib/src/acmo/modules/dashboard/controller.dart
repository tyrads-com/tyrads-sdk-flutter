import 'package:tyrads_sdk/src/acmo/modules/offers/models/offers.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/repository.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoDashboardController {
  var loading = true;
  List<AcmoOffersModel> newOffers = [];
  List<AcmoOffersModel> hotOffers = [];

  Future< List<AcmoOffersModel>>loadTopOffers() async {
    try {
      loading = true;
      if(await Tyrads.instance.waitAndCheck() == false){
        return [];
      }
      var repo = AcmoOffersRepository();
      var response = await repo.getOffers();
      newOffers.clear();
      hotOffers.clear();
      newOffers.addAll(response.data);
      hotOffers.addAll(response.data);
      newOffers.sort((a, b) {
        if (a.createdOn == null && b.createdOn == null) return 0;
        if (a.createdOn == null) return 1;
        if (b.createdOn == null) return -1;
        return b.createdOn!.compareTo(a.createdOn!);
      });

      hotOffers.sort((a, b) {
        // First sort by premium status
        if (a.premium != b.premium) {
          return b.premium ? 1 : -1; // Premium offers go first
        }
        // Then sort by sorting score
        return b.sortingScore.compareTo(a.sortingScore);
      });
      newOffers.removeWhere(
          (element) => element.campaignPayout.totalPayoutConverted <= 0);
      hotOffers.removeWhere(
          (element) => element.campaignPayout.totalPayoutConverted <= 0);
      newOffers = newOffers.sublist(0, newOffers.length > 5 ? 5 : newOffers.length);
      hotOffers = hotOffers.sublist(0, hotOffers.length > 5 ? 5 : hotOffers.length);
      loading = false;
      return hotOffers;
    } catch (e) {
      return [];
    }
  }



}
