import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer_details.freezed.dart';
part 'offer_details.g.dart';

@freezed
class AcmoOfferDetailsResponseModel with _$AcmoOfferDetailsResponseModel {

  factory AcmoOfferDetailsResponseModel({
    required AcmoOfferDetailsModel data
  }) = _AcmoOfferDetailsResponseModel;

  factory AcmoOfferDetailsResponseModel.fromJson(Map<String, dynamic> json) => _$AcmoOfferDetailsResponseModelFromJson(json);
}
@freezed
class AcmoOfferDetailsModel with _$AcmoOfferDetailsModel {
  factory AcmoOfferDetailsModel(
      {required int campaignId,
      @Default('') String campaignName,
      @Default('') String campaignDescription,
      @Default('') String active,
    @Default('') String status,
      required App app,
      required Currency currency,
      required CampaignPayout campaignPayout,
      required Tracking tracking,
      required Targeting targeting,
      required Creative creative,
      @Default('0') String is_active,
      @Default('0') String is_completed,
      @Default('0') String is_expiring,
      @Default(0) int expiring_after,
      @Default(false) bool isInstalled,
      @Default([]) List<PayoutEvents> payoutEvents
      }) = _AcmoOfferDetailsModel;

  factory AcmoOfferDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$AcmoOfferDetailsModelFromJson(json);
}

@freezed
class Creative with _$Creative {
  factory Creative(
      {required String creativeUrl,
      required List<CreativePacks> creativePacks}) = _Creative;

  factory Creative.fromJson(Map<String, dynamic> json) =>
      _$CreativeFromJson(json);
}

@freezed
class CreativePacks with _$CreativePacks {
  factory CreativePacks({List<Creatives?>? creatives}) = _CreativePacks;

  factory CreativePacks.fromJson(Map<String, dynamic> json) =>
      _$CreativePacksFromJson(json);
}

@freezed
class Creatives with _$Creatives {
  factory Creatives({@Default('') String fileUrl}) = _Creatives;

  factory Creatives.fromJson(Map<String, dynamic> json) =>
      _$CreativesFromJson(json);
}

@freezed
class Targeting with _$Targeting {
  factory Targeting({
    String? os,
    @Default('') String targetingType,
    Reward? reward,
  }) = _Targeting;

  factory Targeting.fromJson(Map<String, dynamic> json) =>
      _$TargetingFromJson(json);
}

@freezed
class PayoutEvents with _$PayoutEvents {
  factory PayoutEvents({
    @Default(0) int id,
    @Default('') String conversionStatus,
    @Default('') String identifier,
    @Default('') String eventName,
    @Default('') String eventDescription,
    @Default('') String eventCategory,
    @Default(0) double payoutAmount,
    @Default(0) int payoutAmountConverted,
    @Default('') String payoutType,
    @Default(false) bool allowDuplicateEvents,
    @Default(0) int maxTime,
    @Default('') String maxTimeMetric,
    @Default('') String maxTimeRemainSeconds,
    @Default(false) bool enforceMaxTimeCompletion,
  }) = _PayoutEvents;

  factory PayoutEvents.fromJson(Map<String, dynamic> json) =>
      _$PayoutEventsFromJson(json);
}

@freezed
class Tracking with _$Tracking {
  factory Tracking({
    String? attributionTool,
    String? clickUrl,
    String? impressionUrl,
  }) = _Tracking;

  factory Tracking.fromJson(Map<String, dynamic> json) =>
      _$TrackingFromJson(json);
}

@freezed
class CampaignPayout with _$CampaignPayout {
  factory CampaignPayout({
    @Default(0) int totalEvents,
    @Default(0) double totalPayout,
    @Default(0) double totalPayoutConverted,
  }) = _CampaignPayout;

  factory CampaignPayout.fromJson(Map<String, dynamic> json) =>
      _$CampaignPayoutFromJson(json);
}

@freezed
class Currency with _$Currency {
  factory Currency({
    @Default('') String name,
    @Default('') String symbol,
    @Default('') String adUnitName,
    @Default('') String adUnitCurrencyName,
    @Default('') String adUnitCurrencyIcon,
    @Default(0) int adUnitCurrencyConversion,
  }) = _Currency;

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);
}

@freezed
class App with _$App {
  factory App({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String packageName,
    @Default('') String shortDescription,
    @Default('') String store,
    @Default('') String storeCategory,
    @Default('') String previewUrl,
    @Default('') String thumbnail,
  }) = _App;

  factory App.fromJson(Map<String, dynamic> json) => _$AppFromJson(json);
}

@freezed
class Reward with _$Reward {
  factory Reward({@Default('') String rewardDifficulty}) = _Reward;

  factory Reward.fromJson(Map<String, dynamic> json) => _$RewardFromJson(json);
}
