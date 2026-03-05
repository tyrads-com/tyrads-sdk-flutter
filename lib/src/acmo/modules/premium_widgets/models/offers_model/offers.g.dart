// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AcmoOffersResponseModel _$AcmoOffersResponseModelFromJson(
        Map<String, dynamic> json) =>
    _AcmoOffersResponseModel(
      code: (json['code'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => AcmoOffersModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String,
      timestamp: (json['timestamp'] as num).toInt(),
      responseTime: (json['responseTime'] as num).toDouble(),
    );

Map<String, dynamic> _$AcmoOffersResponseModelToJson(
        _AcmoOffersResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
      'message': instance.message,
      'timestamp': instance.timestamp,
      'responseTime': instance.responseTime,
    };

_AcmoOffersModel _$AcmoOffersModelFromJson(Map<String, dynamic> json) =>
    _AcmoOffersModel(
      campaignId: (json['campaignId'] as num).toInt(),
      campaignName: json['campaignName'] as String,
      campaignDescription: json['campaignDescription'] as String? ?? '',
      campaignType: json['campaignType'] as String? ?? '',
      campaignPremium: json['campaignPremium'] as bool? ?? false,
      campaignStatus: json['campaignStatus'] as String? ?? '',
      validity: Validity.fromJson(json['validity'] as Map<String, dynamic>),
      availableCurrencies:
          (json['availableCurrencies'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(
                    k, AvailableCurrency.fromJson(e as Map<String, dynamic>)),
              ) ??
              const {},
      app: App.fromJson(json['app'] as Map<String, dynamic>),
      targeting: Targeting.fromJson(json['targeting'] as Map<String, dynamic>),
      payoutSummary: (json['payoutSummary'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, PayoutSummary.fromJson(e as Map<String, dynamic>)),
          ) ??
          const {},
      tracking: Tracking.fromJson(json['tracking'] as Map<String, dynamic>),
      creative: Creative.fromJson(json['creative'] as Map<String, dynamic>),
      hasPlaytimeEvents: json['hasPlaytimeEvents'] as bool? ?? false,
      sortingScore: json['sortingScore'] as num? ?? 0,
    );

Map<String, dynamic> _$AcmoOffersModelToJson(_AcmoOffersModel instance) =>
    <String, dynamic>{
      'campaignId': instance.campaignId,
      'campaignName': instance.campaignName,
      'campaignDescription': instance.campaignDescription,
      'campaignType': instance.campaignType,
      'campaignPremium': instance.campaignPremium,
      'campaignStatus': instance.campaignStatus,
      'validity': instance.validity,
      'availableCurrencies': instance.availableCurrencies,
      'app': instance.app,
      'targeting': instance.targeting,
      'payoutSummary': instance.payoutSummary,
      'tracking': instance.tracking,
      'creative': instance.creative,
      'hasPlaytimeEvents': instance.hasPlaytimeEvents,
      'sortingScore': instance.sortingScore,
    };

_Validity _$ValidityFromJson(Map<String, dynamic> json) => _Validity(
      isRetryDownload: json['isRetryDownload'] as bool? ?? false,
      isActivated: json['isActivated'] as bool? ?? false,
      isOldUser: json['isOldUser'] as bool? ?? false,
      expiredOn: json['expiredOn'] as String?,
      expiredInSeconds: (json['expiredInSeconds'] as num?)?.toInt(),
      isInstalled: json['isInstalled'] as bool? ?? false,
    );

Map<String, dynamic> _$ValidityToJson(_Validity instance) => <String, dynamic>{
      'isRetryDownload': instance.isRetryDownload,
      'isActivated': instance.isActivated,
      'isOldUser': instance.isOldUser,
      'expiredOn': instance.expiredOn,
      'expiredInSeconds': instance.expiredInSeconds,
      'isInstalled': instance.isInstalled,
    };

_AvailableCurrency _$AvailableCurrencyFromJson(Map<String, dynamic> json) =>
    _AvailableCurrency(
      currencyId: (json['currencyId'] as num).toInt(),
      currencyIcon: json['currencyIcon'] as String,
      currencyName: json['currencyName'] as String,
    );

Map<String, dynamic> _$AvailableCurrencyToJson(_AvailableCurrency instance) =>
    <String, dynamic>{
      'currencyId': instance.currencyId,
      'currencyIcon': instance.currencyIcon,
      'currencyName': instance.currencyName,
    };

_PayoutSummary _$PayoutSummaryFromJson(Map<String, dynamic> json) =>
    _PayoutSummary(
      totalPayoutConverted: json['totalPayoutConverted'] as num? ?? 0,
      totalPlayablePayoutConverted:
          json['totalPlayablePayoutConverted'] as num? ?? 0,
      totalMicrochargePayoutConverted:
          json['totalMicrochargePayoutConverted'] as num? ?? 0,
    );

Map<String, dynamic> _$PayoutSummaryToJson(_PayoutSummary instance) =>
    <String, dynamic>{
      'totalPayoutConverted': instance.totalPayoutConverted,
      'totalPlayablePayoutConverted': instance.totalPlayablePayoutConverted,
      'totalMicrochargePayoutConverted':
          instance.totalMicrochargePayoutConverted,
    };

_Creative _$CreativeFromJson(Map<String, dynamic> json) => _Creative(
      creativeUrl: json['creativeUrl'] as String? ?? '',
      creativePacks: (json['creativePacks'] as List<dynamic>)
          .map((e) => CreativePacks.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreativeToJson(_Creative instance) => <String, dynamic>{
      'creativeUrl': instance.creativeUrl,
      'creativePacks': instance.creativePacks,
    };

_CreativePacks _$CreativePacksFromJson(Map<String, dynamic> json) =>
    _CreativePacks(
      creativePackId: (json['creativePackId'] as num).toInt(),
      creativePackName: json['creativePackName'] as String,
      languageName: json['languageName'] as String,
      languageCode: json['languageCode'] as String,
      creatives: (json['creatives'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : Creatives.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CreativePacksToJson(_CreativePacks instance) =>
    <String, dynamic>{
      'creativePackId': instance.creativePackId,
      'creativePackName': instance.creativePackName,
      'languageName': instance.languageName,
      'languageCode': instance.languageCode,
      'creatives': instance.creatives,
    };

_Creatives _$CreativesFromJson(Map<String, dynamic> json) => _Creatives(
      creativeId: (json['creativeId'] as num).toInt(),
      creativeName: json['creativeName'] as String,
      callToAction: json['callToAction'] as String?,
      text: json['text'] as String? ?? '',
      byteSize: json['byteSize'] as String? ?? '',
      fileUrl: json['fileUrl'] as String? ?? '',
      duration: (json['duration'] as num?)?.toInt(),
      creativeType:
          CreativeType.fromJson(json['creativeType'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreativesToJson(_Creatives instance) =>
    <String, dynamic>{
      'creativeId': instance.creativeId,
      'creativeName': instance.creativeName,
      'callToAction': instance.callToAction,
      'text': instance.text,
      'byteSize': instance.byteSize,
      'fileUrl': instance.fileUrl,
      'duration': instance.duration,
      'creativeType': instance.creativeType,
    };

_CreativeType _$CreativeTypeFromJson(Map<String, dynamic> json) =>
    _CreativeType(
      name: json['name'] as String,
      type: json['type'] as String,
      width: json['width'] as String,
      height: json['height'] as String,
      creativeCategoryType: json['creativeCategoryType'] as String,
    );

Map<String, dynamic> _$CreativeTypeToJson(_CreativeType instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'width': instance.width,
      'height': instance.height,
      'creativeCategoryType': instance.creativeCategoryType,
    };

_Targeting _$TargetingFromJson(Map<String, dynamic> json) => _Targeting(
      os: json['os'] as String?,
      targetingType: json['targetingType'] as String? ?? '',
      reward: json['reward'] == null
          ? null
          : Reward.fromJson(json['reward'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TargetingToJson(_Targeting instance) =>
    <String, dynamic>{
      'os': instance.os,
      'targetingType': instance.targetingType,
      'reward': instance.reward,
    };

_Tracking _$TrackingFromJson(Map<String, dynamic> json) => _Tracking(
      attributionTool: json['attributionTool'] as String?,
      clickUrl: json['clickUrl'] as String?,
      impressionUrl: json['impressionUrl'] as String?,
      s2sClickUrl: json['s2sClickUrl'] as String?,
    );

Map<String, dynamic> _$TrackingToJson(_Tracking instance) => <String, dynamic>{
      'attributionTool': instance.attributionTool,
      'clickUrl': instance.clickUrl,
      'impressionUrl': instance.impressionUrl,
      's2sClickUrl': instance.s2sClickUrl,
    };

_App _$AppFromJson(Map<String, dynamic> json) => _App(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      packageName: json['packageName'] as String? ?? '',
      rating: json['rating'] as num? ?? 0,
      previewUrl: json['previewUrl'] as String? ?? '',
      shortDescription: json['shortDescription'] as String? ?? '',
      store: json['store'] as String? ?? '',
      storeCategory: json['storeCategory'] as String? ?? '',
      thumbnail: json['thumbnail'] as String? ?? '',
    );

Map<String, dynamic> _$AppToJson(_App instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'packageName': instance.packageName,
      'rating': instance.rating,
      'previewUrl': instance.previewUrl,
      'shortDescription': instance.shortDescription,
      'store': instance.store,
      'storeCategory': instance.storeCategory,
      'thumbnail': instance.thumbnail,
    };

_Reward _$RewardFromJson(Map<String, dynamic> json) => _Reward(
      rewardDifficulty: json['rewardDifficulty'] as String? ?? '',
      incentRewardDescription: json['incentRewardDescription'] as String? ?? '',
    );

Map<String, dynamic> _$RewardToJson(_Reward instance) => <String, dynamic>{
      'rewardDifficulty': instance.rewardDifficulty,
      'incentRewardDescription': instance.incentRewardDescription,
    };
