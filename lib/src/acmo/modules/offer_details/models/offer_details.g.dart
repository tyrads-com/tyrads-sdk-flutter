// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AcmoOfferDetailsResponseModelImpl
    _$$AcmoOfferDetailsResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$AcmoOfferDetailsResponseModelImpl(
          data: AcmoOfferDetailsModel.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$AcmoOfferDetailsResponseModelImplToJson(
        _$AcmoOfferDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$AcmoOfferDetailsModelImpl _$$AcmoOfferDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AcmoOfferDetailsModelImpl(
      campaignId: (json['campaignId'] as num).toInt(),
      campaignName: json['campaignName'] as String? ?? '',
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
      expiring_after: (json['expiring_after'] as num?)?.toInt() ?? 0,
      isInstalled: json['isInstalled'] as bool? ?? false,
      payoutEvents: (json['payoutEvents'] as List<dynamic>?)
              ?.map((e) => PayoutEvents.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AcmoOfferDetailsModelImplToJson(
        _$AcmoOfferDetailsModelImpl instance) =>
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
      'isInstalled': instance.isInstalled,
      'payoutEvents': instance.payoutEvents,
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
          ?.map((e) =>
              e == null ? null : Creatives.fromJson(e as Map<String, dynamic>))
          .toList(),
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

_$PayoutEventsImpl _$$PayoutEventsImplFromJson(Map<String, dynamic> json) =>
    _$PayoutEventsImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      conversionStatus: json['conversionStatus'] as String? ?? '',
      identifier: json['identifier'] as String? ?? '',
      eventName: json['eventName'] as String? ?? '',
      eventDescription: json['eventDescription'] as String? ?? '',
      eventCategory: json['eventCategory'] as String? ?? '',
      payoutAmount: (json['payoutAmount'] as num?)?.toDouble() ?? 0,
      payoutAmountConverted:
          (json['payoutAmountConverted'] as num?)?.toDouble() ?? 0,
      payoutType: json['payoutType'] as String? ?? '',
      allowDuplicateEvents: json['allowDuplicateEvents'] as bool? ?? false,
      maxTime: (json['maxTime'] as num?)?.toInt() ?? 0,
      maxTimeMetric: json['maxTimeMetric'] as String? ?? '',
      maxTimeRemainSeconds:
          (json['maxTimeRemainSeconds'] as num?)?.toDouble() ?? 0,
      enforceMaxTimeCompletion:
          json['enforceMaxTimeCompletion'] as bool? ?? false,
    );

Map<String, dynamic> _$$PayoutEventsImplToJson(_$PayoutEventsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'conversionStatus': instance.conversionStatus,
      'identifier': instance.identifier,
      'eventName': instance.eventName,
      'eventDescription': instance.eventDescription,
      'eventCategory': instance.eventCategory,
      'payoutAmount': instance.payoutAmount,
      'payoutAmountConverted': instance.payoutAmountConverted,
      'payoutType': instance.payoutType,
      'allowDuplicateEvents': instance.allowDuplicateEvents,
      'maxTime': instance.maxTime,
      'maxTimeMetric': instance.maxTimeMetric,
      'maxTimeRemainSeconds': instance.maxTimeRemainSeconds,
      'enforceMaxTimeCompletion': instance.enforceMaxTimeCompletion,
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
      totalEvents: (json['totalEvents'] as num?)?.toInt() ?? 0,
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
      id: (json['id'] as num?)?.toInt() ?? 0,
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
