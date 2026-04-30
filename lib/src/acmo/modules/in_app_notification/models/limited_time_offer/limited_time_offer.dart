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
    @Default({}) Map<String, AcmoCurrency> availableCurrencies,
    @Default([]) List<ActiveCampaign> campaigns,
  }) = _AcmoActiveOffers;

  factory AcmoActiveOffers.fromJson(Map<String, dynamic> json) =>
      _$AcmoActiveOffersFromJson(json);
}

@freezed
abstract class AcmoCurrency with _$AcmoCurrency {
  const factory AcmoCurrency({
    @Default(0) int currencyId,
    @Default('') String currencyIcon,
    @Default('') String currencyName,
  }) = _AcmoCurrency;

  factory AcmoCurrency.fromJson(Map<String, dynamic> json) =>
      _$AcmoCurrencyFromJson(json);
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
    @Default(0) int microchargeEventCountAvailable,
    @Default(0) int microchargeEventCountCompleted,
    @Default(0) int microchargeEventCountTotal,
  }) = _CampaignEventSummary;

  factory CampaignEventSummary.fromJson(Map<String, dynamic> json) =>
      _$CampaignEventSummaryFromJson(json);
  static const empty = CampaignEventSummary();
}

@freezed
abstract class CampaignValidity with _$CampaignValidity {
  const factory CampaignValidity({
    @Default(false) bool isRetryDownload,
    @Default(false) bool isActivated,
    @Default(false) bool isOldUser,
    @Default(0) int activeCurrencyId,
    DateTime? expiredOn,
    double? expiredInSeconds,
    @Default(false) bool isInstalled,
    @Default(false) bool capReached,
  }) = _CampaignValidity;

  factory CampaignValidity.fromJson(Map<String, dynamic> json) =>
      _$CampaignValidityFromJson(json);
  static const empty = CampaignValidity();
}

@freezed
abstract class ActiveCampaign with _$ActiveCampaign {
  const factory ActiveCampaign({
    @Default(0) int campaignId,
    @Default('') String campaignName,
    @Default('') String campaignDescription,
    @Default('') String campaignType,
    @Default(false) bool campaignPremium,
    @Default(CampaignValidity.empty) CampaignValidity validity,
    @Default({}) Map<String, AcmoCurrency> availableCurrencies,
    @Default(ActiveApp.empty) ActiveApp app,
    @Default('') String campaignStatus,
    @Default('') String group,
    dynamic stage,
    @Default(CampaignEventSummary.empty) CampaignEventSummary eventSummary,
    @Default([]) List<PayoutEvents> limitedTimeEvents,
    @Default([]) List<dynamic> shorterMaxTimeEvents,
  }) = _ActiveCampaign;

  factory ActiveCampaign.fromJson(Map<String, dynamic> json) =>
      _$ActiveCampaignFromJson(json);
}

@freezed
abstract class AcmoPayoutInfo with _$AcmoPayoutInfo {
  const factory AcmoPayoutInfo({
    @Default(0) int currencyId,
    @Default('') String currencyName,
    @Default('') String currencyIcon,
    @Default(0.0) double currencyConversionRate,
    @Default(0.0) double payoutAmountConverted,
  }) = _AcmoPayoutInfo;

  factory AcmoPayoutInfo.fromJson(Map<String, dynamic> json) =>
      _$AcmoPayoutInfoFromJson(json);
}

@freezed
abstract class PayoutEvents with _$PayoutEvents {
  factory PayoutEvents({
    @Default(0) int appEventId,
    dynamic conversionStatus,
    @Default('') String identifier,
    @Default('') String eventName,
    String? eventDescription,
    @Default('') String eventCategory,
    @Default({}) Map<String, AcmoPayoutInfo> payoutInfo,
    @Default(false) bool allowDuplicateEvents,
    @Default(0) int maxTime,
    String? maxTimeMetric,
    double? maxTimeRemainSeconds,
    @Default(false) bool enforceMaxTimeCompletion,
    @Default(false) bool isLimitedTimeEvent,
    @Default(0.0) double limitedTimeEventRemainingSeconds,
    @Default(false) bool isTicketSubmitted,
    dynamic ticketStatus,
    dynamic lockEventRule,
    dynamic hideEventRule,
    dynamic shorterMaxTimeRule,
    dynamic specialCompletionReason,
    @Default(0) int dailyCount,
    int? dailyLimit,
    @Default(0) int count,
    int? limit,
    @Default(0) int totalDailyUniqueCount,
    int? totalDailyUniqueLimit,
    @Default(false) bool dailyUniqueTodayExist,
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
