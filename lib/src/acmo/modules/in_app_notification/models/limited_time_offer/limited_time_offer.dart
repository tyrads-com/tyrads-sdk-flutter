import 'package:freezed_annotation/freezed_annotation.dart';

part 'limited_time_offer.freezed.dart';
part 'limited_time_offer.g.dart';

@freezed
abstract class AcmoActiveOffersModel with _$AcmoActiveOffersModel {
  const factory AcmoActiveOffersModel({
    @Default([]) List<AcmoActiveOffers> data,
    @Default('') String message,
  }) = _AcmoActiveOffersModel;

  factory AcmoActiveOffersModel.fromJson(Map<String, dynamic> json) =>
      _$AcmoActiveOffersModelFromJson(json);
}

@freezed
abstract class AcmoActiveOffers with _$AcmoActiveOffers {
  const factory AcmoActiveOffers({
    @Default('') String groupName,
    @Default([]) List<ActiveCampaign> campaigns,
  }) = _AcmoActiveOffers;

  factory AcmoActiveOffers.fromJson(Map<String, dynamic> json) =>
      _$AcmoActiveOffersFromJson(json);
}

@freezed
abstract class ActiveApp with _$ActiveApp {
  const factory ActiveApp({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String packageName,
    @Default(0.0) double rating,
    @Default('') String shortDescription,
    @Default('') String store,
    @Default('') String storeCategory,
    @Default('') String previewUrl,
    @Default('') String thumbnail,
    @Default(0.0) double confidenceScore,
    @Default('') String securityLabel,
  }) = _ActiveApp;

  factory ActiveApp.fromJson(Map<String, dynamic> json) =>
      _$ActiveAppFromJson(json);
  static const empty = ActiveApp();
}

@freezed
abstract class CampaignEventSummary with _$CampaignEventSummary {
  const factory CampaignEventSummary({
    @Default(0) int playableEventCountAvailable,
    @Default(0) int playableEventCountCompleted,
    @Default(0) int playableEventCountTotal,
  }) = _CampaignEventSummary;

  factory CampaignEventSummary.fromJson(Map<String, dynamic> json) =>
      _$CampaignEventSummaryFromJson(json);
  static const empty = CampaignEventSummary();
}

@freezed
abstract class ActiveCampaign with _$ActiveCampaign {
  const factory ActiveCampaign({
    @Default(0) int campaignId,
    @Default('') String campaignName,
    @Default('') String campaignDescription,
    @Default('') String status,
    DateTime? createdOn,
    @Default(0) double sortingScore,
    DateTime? expiredOn,
    @Default(ActiveApp.empty) ActiveApp app,
    @Default(false) bool isRetryDownload,
    @Default(false) bool capReached,
    @Default(null) String? group,
    @Default(false) bool premium,
    @Default(false) bool isOldUser,
    @Default(false) bool isInstalled,
    @Default([]) List<PayoutEvents> limitedTimeEvents,
    @Default(CampaignEventSummary.empty)
    CampaignEventSummary campaignEventSummary,
    Currency? currency,
  }) = _ActiveCampaign;

  factory ActiveCampaign.fromJson(Map<String, dynamic> json) =>
      _$ActiveCampaignFromJson(json);
}

@freezed
abstract class PayoutEvents with _$PayoutEvents {
  factory PayoutEvents({
    @Default(0) int id,
    String? conversionStatus,
    @Default('') String identifier,
    @Default('') String eventName,
    @Default('') String eventDescription,
    @Default('') String eventCategory,
    @Default(0) double payoutAmount,
    @Default(0) double payoutAmountConverted,
    @Default('') String payoutType,
    @Default(false) bool allowDuplicateEvents,
    @Default(0) int maxTime,
    @Default('') String maxTimeMetric,
    double? maxTimeRemainSeconds,
    @Default(false) bool enforceMaxTimeCompletion,
    @Default(false) bool isLimitedTimeEvent,
    @Default(0) double limitedTimeEventRemainingSeconds,
    @Default(false) bool isTicketSubmitted,
    @Default(false) bool isPlaytime,
    @Default(0) int totalPlaytime,
    @Default(0) int dailyCount,
    @Default(0) int dailyLimit,
    @Default(0) int count,
    @Default(0) int limit,
  }) = _PayoutEvents;

  factory PayoutEvents.fromJson(Map<String, dynamic> json) =>
      _$PayoutEventsFromJson(json);
}

@freezed
abstract class Currency with _$Currency {
  factory Currency({
    @Default('') String name,
    @Default('') String symbol,
    @Default('') String adUnitName,
    @Default('') String adUnitCurrencyName,
    @Default('') String adUnitCurrencyIcon,
    @Default(0) double adUnitCurrencyConversion,
  }) = _Currency;

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);
}
