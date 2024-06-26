// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AcmoOffersResponseModelImpl _$$AcmoOffersResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AcmoOffersResponseModelImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => AcmoOffersModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AcmoOffersResponseModelImplToJson(
        _$AcmoOffersResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$AcmoOffersModelImpl _$$AcmoOffersModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AcmoOffersModelImpl(
      campaignId: json['campaignId'] as int,
      campaignName: json['campaignName'] as String,
      campaignDescription: json['campaignDescription'] as String? ?? '',
      active: json['active'] as String? ?? '',
      status: json['status'] as String? ?? '',
      app: App.fromJson(json['app'] as Map<String, dynamic>),
      currency: Currency.fromJson(json['currency'] as Map<String, dynamic>),
      campaignPayout: CampaignPayout.fromJson(
          json['campaignPayout'] as Map<String, dynamic>),
      tracking: Tracking.fromJson(json['tracking'] as Map<String, dynamic>),
      targeting: Targeting.fromJson(json['targeting'] as Map<String, dynamic>),
      creative: Creative.fromJson(json['creative'] as Map<String, dynamic>),
      is_active: json['is_active'] as String? ?? '0',
      is_completed: json['is_completed'] as String? ?? '0',
      is_expiring: json['is_expiring'] as String? ?? '0',
      expiring_after: json['expiring_after'] as int? ?? 0,
    );

Map<String, dynamic> _$$AcmoOffersModelImplToJson(
        _$AcmoOffersModelImpl instance) =>
    <String, dynamic>{
      'campaignId': instance.campaignId,
      'campaignName': instance.campaignName,
      'campaignDescription': instance.campaignDescription,
      'active': instance.active,
      'status': instance.status,
      'app': instance.app,
      'currency': instance.currency,
      'campaignPayout': instance.campaignPayout,
      'tracking': instance.tracking,
      'targeting': instance.targeting,
      'creative': instance.creative,
      'is_active': instance.is_active,
      'is_completed': instance.is_completed,
      'is_expiring': instance.is_expiring,
      'expiring_after': instance.expiring_after,
    };

_$CreativeImpl _$$CreativeImplFromJson(Map<String, dynamic> json) =>
    _$CreativeImpl(
      creativeUrl: json['creativeUrl'] as String,
      creativePacks: (json['creativePacks'] as List<dynamic>)
          .map((e) => CreativePacks.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CreativeImplToJson(_$CreativeImpl instance) =>
    <String, dynamic>{
      'creativeUrl': instance.creativeUrl,
      'creativePacks': instance.creativePacks,
    };

_$CreativePacksImpl _$$CreativePacksImplFromJson(Map<String, dynamic> json) =>
    _$CreativePacksImpl(
      creatives: (json['creatives'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : Creatives.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CreativePacksImplToJson(_$CreativePacksImpl instance) =>
    <String, dynamic>{
      'creatives': instance.creatives,
    };

_$CreativesImpl _$$CreativesImplFromJson(Map<String, dynamic> json) =>
    _$CreativesImpl(
      fileUrl: json['fileUrl'] as String? ?? '',
    );

Map<String, dynamic> _$$CreativesImplToJson(_$CreativesImpl instance) =>
    <String, dynamic>{
      'fileUrl': instance.fileUrl,
    };

_$TargetingImpl _$$TargetingImplFromJson(Map<String, dynamic> json) =>
    _$TargetingImpl(
      os: json['os'] as String?,
      targetingType: json['targetingType'] as String? ?? '',
      reward: json['reward'] == null
          ? null
          : Reward.fromJson(json['reward'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TargetingImplToJson(_$TargetingImpl instance) =>
    <String, dynamic>{
      'os': instance.os,
      'targetingType': instance.targetingType,
      'reward': instance.reward,
    };

_$TrackingImpl _$$TrackingImplFromJson(Map<String, dynamic> json) =>
    _$TrackingImpl(
      attributionTool: json['attributionTool'] as String?,
      clickUrl: json['clickUrl'] as String?,
      impressionUrl: json['impressionUrl'] as String?,
    );

Map<String, dynamic> _$$TrackingImplToJson(_$TrackingImpl instance) =>
    <String, dynamic>{
      'attributionTool': instance.attributionTool,
      'clickUrl': instance.clickUrl,
      'impressionUrl': instance.impressionUrl,
    };

_$CampaignPayoutImpl _$$CampaignPayoutImplFromJson(Map<String, dynamic> json) =>
    _$CampaignPayoutImpl(
      totalEvents: json['totalEvents'] as int? ?? 0,
      totalPayout: (json['totalPayout'] as num?)?.toDouble() ?? 0,
      totalPayoutConverted:
          (json['totalPayoutConverted'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$CampaignPayoutImplToJson(
        _$CampaignPayoutImpl instance) =>
    <String, dynamic>{
      'totalEvents': instance.totalEvents,
      'totalPayout': instance.totalPayout,
      'totalPayoutConverted': instance.totalPayoutConverted,
    };

_$CurrencyImpl _$$CurrencyImplFromJson(Map<String, dynamic> json) =>
    _$CurrencyImpl(
      name: json['name'] as String? ?? '',
      symbol: json['symbol'] as String? ?? '',
      adUnitName: json['adUnitName'] as String? ?? '',
      adUnitCurrencyName: json['adUnitCurrencyName'] as String? ?? '',
      adUnitCurrencyIcon: json['adUnitCurrencyIcon'] as String? ?? '',
      adUnitCurrencyConversion:
          (json['adUnitCurrencyConversion'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$CurrencyImplToJson(_$CurrencyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'symbol': instance.symbol,
      'adUnitName': instance.adUnitName,
      'adUnitCurrencyName': instance.adUnitCurrencyName,
      'adUnitCurrencyIcon': instance.adUnitCurrencyIcon,
      'adUnitCurrencyConversion': instance.adUnitCurrencyConversion,
    };

_$AppImpl _$$AppImplFromJson(Map<String, dynamic> json) => _$AppImpl(
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      packageName: json['packageName'] as String? ?? '',
      shortDescription: json['shortDescription'] as String? ?? '',
      store: json['store'] as String? ?? '',
      storeCategory: json['storeCategory'] as String? ?? '',
      previewUrl: json['previewUrl'] as String? ?? '',
      thumbnail: json['thumbnail'] as String? ?? '',
    );

Map<String, dynamic> _$$AppImplToJson(_$AppImpl instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'packageName': instance.packageName,
      'shortDescription': instance.shortDescription,
      'store': instance.store,
      'storeCategory': instance.storeCategory,
      'previewUrl': instance.previewUrl,
      'thumbnail': instance.thumbnail,
    };

_$RewardImpl _$$RewardImplFromJson(Map<String, dynamic> json) => _$RewardImpl(
      rewardDifficulty: json['rewardDifficulty'] as String? ?? '',
    );

Map<String, dynamic> _$$RewardImplToJson(_$RewardImpl instance) =>
    <String, dynamic>{
      'rewardDifficulty': instance.rewardDifficulty,
    };
