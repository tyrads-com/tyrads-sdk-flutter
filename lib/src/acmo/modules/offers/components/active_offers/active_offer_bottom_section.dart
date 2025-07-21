import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/models/offer_details.dart'
    show AcmoOfferDetailsModel, MicroChargeEvents, PayoutEvents;
import 'package:tyrads_sdk/src/acmo/modules/offers/components/active_offers/active_task_section.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/components/active_offers/daily_rewards_section.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/components/active_offers/limited_time_offer_rewards.dart';

class ActiveOfferBottomSection extends StatelessWidget {
  const ActiveOfferBottomSection({
    super.key,
    required this.offerDetails,
    required this.tab,
  });

  final AcmoOfferDetailsModel? offerDetails;
  final String tab;

  @override
  Widget build(BuildContext context) {
    if (offerDetails == null) return Container();
    final dailyRewards = <MicroChargeEvents>[];
    final quickRewards = <MicroChargeEvents>[];
    var limitedTimeEvents = <PayoutEvents>[];
    if (offerDetails?.microChargeEvents != null) {
      for (final element in offerDetails!.microChargeEvents) {
        (element.allowDuplicateEvents ? dailyRewards : quickRewards)
            .add(element);
      }
    }
    try {
      final microchargeEvents = offerDetails!.microChargeEvents
          .where(
            (item) =>
                item.isLimitedTimeEvent &&
                item.limitedTimeEventRemainingSeconds != 0,
          )
          .toList();
      limitedTimeEvents = offerDetails!.payoutEvents
          .where(
            (item) =>
                item.isLimitedTimeEvent &&
                item.limitedTimeEventRemainingSeconds != 0,
          )
          .toList();
      for (var event in microchargeEvents) {
        limitedTimeEvents.add(
          PayoutEvents(
            eventName: event.eventName,
            conversionStatus: event.conversionStatus,
            payoutAmount: event.payoutAmount,
            payoutAmountConverted: event.payoutAmountConverted,
            limitedTimeEventRemainingSeconds: event.limitedTimeEventRemainingSeconds,
          ),
        );
      }
    } catch (e) {
      limitedTimeEvents = <PayoutEvents>[];
    }
    // if (dailyRewards.isEmpty && quickRewards.isEmpty) return Container();
    if (dailyRewards.isEmpty && offerDetails!.payoutEvents.isEmpty) return Container();
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          if (tab == "urgent" || tab == "all")
            ActiveTaskSection(
              events: offerDetails!.payoutEvents,
              currencyUrl: offerDetails!.currency.adUnitCurrencyIcon,
              offerId: offerDetails!.campaignId,
            ),
          if (limitedTimeEvents.isNotEmpty)
            LimitedTimeOfferRewards(
              limitedEvents: limitedTimeEvents.toSet().toList(),
              currencyUrl: offerDetails!.currency.adUnitCurrencyIcon,
              offerId: offerDetails!.campaignId,
            ),
          if (dailyRewards.isNotEmpty)
            DailyRewardsSection(
              dailyRewards: dailyRewards,
              currencyUrl: offerDetails!.currency.adUnitCurrencyIcon,
            ),
        ],
      ),
    );
  }
}
