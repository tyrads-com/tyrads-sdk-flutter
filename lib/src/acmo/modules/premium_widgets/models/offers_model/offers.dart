// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tyrads_sdk/src/acmo/core/helpers/converters.dart';

part 'offers.freezed.dart';
part 'offers.g.dart';


@freezed
abstract class AcmoOffersResponseModel with _$AcmoOffersResponseModel {

  factory AcmoOffersResponseModel({
    required int code,
    required List<AcmoOffersModel> data,
    required String message,
    required int timestamp,
    required double responseTime,
  }) = _AcmoOffersResponseModel;

  factory AcmoOffersResponseModel.fromJson(Map<String, dynamic> json) => _$AcmoOffersResponseModelFromJson(json);
}
@freezed
abstract class AcmoOffersModel with _$AcmoOffersModel {
  factory AcmoOffersModel({
    required int campaignId,
    required String campaignName,
    @Default('') String campaignDescription,
    @Default('') String campaignType,
    @Default(false) bool campaignPremium,
    @Default('') String campaignStatus,
    required Validity validity,
    @Default({}) Map<String, AvailableCurrency> availableCurrencies,
    required App app,
    required Targeting targeting,
    @Default({}) Map<String, PayoutSummary> payoutSummary,
    required Tracking tracking,
    required Creative creative,
    @Default(false) bool hasPlaytimeEvents,
  }) = _AcmoOffersModel;

  factory AcmoOffersModel.fromJson(Map<String, dynamic> json) =>
      _$AcmoOffersModelFromJson(json);
}

@freezed
abstract class Validity with _$Validity {
  factory Validity({
    @Default(false) bool isRetryDownload,
    @Default(false) bool isActivated,
    @Default(false) bool isOldUser,
    @JsonKey(fromJson: acmoConverterStringToDatetime) DateTime? expiredOn,
    int? expiredInSeconds,
    @Default(false) bool isInstalled,
  }) = _Validity;

  factory Validity.fromJson(Map<String, dynamic> json) => _$ValidityFromJson(json);
}

@freezed
abstract class AvailableCurrency with _$AvailableCurrency {
  factory AvailableCurrency({
    required int currencyId,
    required String currencyIcon,
    required String currencyName,
  }) = _AvailableCurrency;

  factory AvailableCurrency.fromJson(Map<String, dynamic> json) =>
      _$AvailableCurrencyFromJson(json);
}

@freezed
abstract class PayoutSummary with _$PayoutSummary {
  factory PayoutSummary({
    @Default(0) num totalPayoutConverted,
    @Default(0) num totalPlayablePayoutConverted,
    @Default(0) num totalMicrochargePayoutConverted,
  }) = _PayoutSummary;

  factory PayoutSummary.fromJson(Map<String, dynamic> json) =>
      _$PayoutSummaryFromJson(json);
}

@freezed
abstract class Creative with _$Creative {
  factory Creative({@Default('') String creativeUrl, required List<CreativePacks> creativePacks}) = _Creative;

  factory Creative.fromJson(Map<String, dynamic> json) =>
      _$CreativeFromJson(json);
}
@freezed
abstract class CreativePacks with _$CreativePacks {

  factory CreativePacks({
    required int creativePackId,
    required String creativePackName,
    required String languageName,
    required String languageCode,
    @Default([]) List<Creatives?> creatives,
  }) = _CreativePacks;

  factory CreativePacks.fromJson(Map<String, dynamic> json) => _$CreativePacksFromJson(json);
}

@freezed
abstract class Creatives with _$Creatives {

  factory Creatives({
    required int creativeId,
    required String creativeName,
    String? callToAction,
    @Default('') String text,
    @Default('') String byteSize,
    @Default('') String fileUrl,
    String? duration,
    required CreativeType creativeType,
  }) = _Creatives;

  factory Creatives.fromJson(Map<String, dynamic> json) => _$CreativesFromJson(json);
}

@freezed
abstract class CreativeType with _$CreativeType {
  factory CreativeType({
    required String name,
    required String type,
    required String width,
    required String height,
    required String creativeCategoryType,
  }) = _CreativeType;

  factory CreativeType.fromJson(Map<String, dynamic> json) =>
      _$CreativeTypeFromJson(json);
}
@freezed
abstract class Targeting with _$Targeting {
  factory Targeting({
    String? os,
    @Default('') String targetingType,
    Reward? reward,
  }) = _Targeting;

  factory Targeting.fromJson(Map<String, dynamic> json) =>
      _$TargetingFromJson(json);
}

@freezed
abstract class Tracking with _$Tracking {
  factory Tracking({
    String? attributionTool,
    String? clickUrl,
    String? impressionUrl,
    String? s2sClickUrl
  }) = _Tracking;

  factory Tracking.fromJson(Map<String, dynamic> json) =>
      _$TrackingFromJson(json);
}


@freezed
abstract class App with _$App {
  factory App({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String packageName,
    @Default(0) num rating,
    @Default('') String previewUrl,
    @Default('') String shortDescription,
    @Default('') String store,
    @Default('') String storeCategory,
    @Default('') String thumbnail,
  }) = _App;

  factory App.fromJson(Map<String, dynamic> json) => _$AppFromJson(json);
}

@freezed
abstract class Reward with _$Reward {
  factory Reward({
    @Default('') String rewardDifficulty,
    @Default('') String incentRewardDescription,
  }) = _Reward;

  factory Reward.fromJson(Map<String, dynamic> json) => _$RewardFromJson(json);
}
