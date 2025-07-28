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
      microCharge:
          MicroCharge.fromJson(json['microCharge'] as Map<String, dynamic>?),
      microChargeEvents: (json['microChargeEvents'] as List<dynamic>?)
              ?.map(
                  (e) => MicroChargeEvents.fromJson(e as Map<String, dynamic>?))
              .toList() ??
          const [],
      hasPlaytimeEvents: json['hasPlaytimeEvents'] as bool? ?? false,
      expiredOn: acmoConverterStringToDatetime(json['expiredOn'] as String?),
      isInstalled: json['isInstalled'] as bool? ?? false,
      playtimeEvents: (json['playtimeEvents'] as List<dynamic>?)
              ?.map((e) => PlaytimeEvents.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      payoutEvents: (json['payoutEvents'] as List<dynamic>?)
              ?.map((e) => PayoutEvents.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      engagementOverride: json['engagementOverride'] == null
          ? EngagementOverride.empty
          : EngagementOverride.fromJson(
              json['engagementOverride'] as Map<String, dynamic>?),
      isRetryDownload: json['isRetryDownload'] as bool? ?? false,
      capReached: json['capReached'] as bool? ?? false,
      premium: json['premium'] as bool? ?? false,
      isOldUser: json['isOldUser'] as bool? ?? false,
      group: json['group'] as String? ?? '',
      limitedTimeEvents: (json['limitedTimeEvents'] as List<dynamic>?)
              ?.map((e) => PayoutEvents.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdOn: acmoConverterStringToDatetime(json['createdOn'] as String?),
      sortingScore: (json['sortingScore'] as num?)?.toDouble() ?? 0.0,
      earnedPayout: json['earnedPayout'] == null
          ? EarnedPayout.empty
          : EarnedPayout.fromJson(
              json['earnedPayout'] as Map<String, dynamic>?),
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
      'microCharge': instance.microCharge,
      'microChargeEvents': instance.microChargeEvents,
      'hasPlaytimeEvents': instance.hasPlaytimeEvents,
      'expiredOn': instance.expiredOn?.toIso8601String(),
      'isInstalled': instance.isInstalled,
      'playtimeEvents': instance.playtimeEvents,
      'payoutEvents': instance.payoutEvents,
      'engagementOverride': instance.engagementOverride,
      'isRetryDownload': instance.isRetryDownload,
      'capReached': instance.capReached,
      'premium': instance.premium,
      'isOldUser': instance.isOldUser,
      'group': instance.group,
      'limitedTimeEvents': instance.limitedTimeEvents,
      'createdOn': instance.createdOn?.toIso8601String(),
      'sortingScore': instance.sortingScore,
      'earnedPayout': instance.earnedPayout,
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
      conversionStatus: json['conversionStatus'] as String?,
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
      maxTimeRemainSeconds: (json['maxTimeRemainSeconds'] as num?)?.toDouble(),
      enforceMaxTimeCompletion:
          json['enforceMaxTimeCompletion'] as bool? ?? false,
      isLimitedTimeEvent: json['isLimitedTimeEvent'] as bool? ?? false,
      limitedTimeEventRemainingSeconds:
          (json['limitedTimeEventRemainingSeconds'] as num?)?.toDouble() ?? 0,
      isTicketSubmitted: json['isTicketSubmitted'] as bool? ?? false,
      isPlaytime: json['isPlaytime'] as bool? ?? false,
      totalPlaytime: (json['totalPlaytime'] as num?)?.toInt() ?? 0,
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
      'isLimitedTimeEvent': instance.isLimitedTimeEvent,
      'limitedTimeEventRemainingSeconds':
          instance.limitedTimeEventRemainingSeconds,
      'isTicketSubmitted': instance.isTicketSubmitted,
      'isPlaytime': instance.isPlaytime,
      'totalPlaytime': instance.totalPlaytime,
    };

_$TrackingImpl _$$TrackingImplFromJson(Map<String, dynamic> json) =>
    _$TrackingImpl(
      attributionTool: json['attributionTool'] as String?,
      clickUrl: json['clickUrl'] as String?,
      impressionUrl: json['impressionUrl'] as String?,
      s2sClickUrl: json['s2sClickUrl'] as String?,
    );

Map<String, dynamic> _$$TrackingImplToJson(_$TrackingImpl instance) =>
    <String, dynamic>{
      'attributionTool': instance.attributionTool,
      'clickUrl': instance.clickUrl,
      'impressionUrl': instance.impressionUrl,
      's2sClickUrl': instance.s2sClickUrl,
    };

_$CampaignPayoutImpl _$$CampaignPayoutImplFromJson(Map<String, dynamic> json) =>
    _$CampaignPayoutImpl(
      totalEvents: (json['totalEvents'] as num?)?.toInt() ?? 0,
      totalPayout: (json['totalPayout'] as num?)?.toDouble() ?? 0,
      totalPayoutConverted:
          (json['totalPayoutConverted'] as num?)?.toDouble() ?? 0,
      totalMicrochargePayout:
          (json['totalMicrochargePayout'] as num?)?.toDouble() ?? 0,
      totalPlayablePayout:
          (json['totalPlayablePayout'] as num?)?.toDouble() ?? 0,
      totalPlayablePayoutConverted:
          (json['totalPlayablePayoutConverted'] as num?)?.toDouble() ?? 0,
      totalMicrochargePayoutConverted:
          (json['totalMicrochargePayoutConverted'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$CampaignPayoutImplToJson(
        _$CampaignPayoutImpl instance) =>
    <String, dynamic>{
      'totalEvents': instance.totalEvents,
      'totalPayout': instance.totalPayout,
      'totalPayoutConverted': instance.totalPayoutConverted,
      'totalMicrochargePayout': instance.totalMicrochargePayout,
      'totalPlayablePayout': instance.totalPlayablePayout,
      'totalPlayablePayoutConverted': instance.totalPlayablePayoutConverted,
      'totalMicrochargePayoutConverted':
          instance.totalMicrochargePayoutConverted,
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
      rating: (json['rating'] as num?)?.toDouble(),
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
      'rating': instance.rating,
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

_$MicroChargeImpl _$$MicroChargeImplFromJson(Map<String, dynamic> json) =>
    _$MicroChargeImpl(
      earned: (json['earned'] as num?)?.toDouble() ?? 0,
      earnedConversion: (json['earnedConversion'] as num?)?.toDouble() ?? 0,
      total: (json['total'] as num?)?.toDouble() ?? 0,
      totalConversion: (json['totalConversion'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$MicroChargeImplToJson(_$MicroChargeImpl instance) =>
    <String, dynamic>{
      'earned': instance.earned,
      'earnedConversion': instance.earnedConversion,
      'total': instance.total,
      'totalConversion': instance.totalConversion,
    };

_$MicroChargeEventsImpl _$$MicroChargeEventsImplFromJson(
        Map<String, dynamic> json) =>
    _$MicroChargeEventsImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      conversionStatus: json['conversionStatus'] as String? ?? '',
      identifier: json['identifier'] as String? ?? '',
      eventName: json['eventName'] as String? ?? '',
      eventDescription: json['eventDescription'] as String? ?? '',
      eventCategory: json['eventCategory'] as String? ?? '',
      payoutAmount: (json['payoutAmount'] as num?)?.toDouble() ?? 0,
      payoutAmountConverted:
          (json['payoutAmountConverted'] as num?)?.toDouble() ?? 0,
      payoutTypeId: (json['payoutTypeId'] as num?)?.toInt() ?? 0,
      payoutType: json['payoutType'] as String? ?? '',
      allowDuplicateEvents: json['allowDuplicateEvents'] as bool? ?? false,
      maxTime: (json['maxTime'] as num?)?.toInt() ?? 0,
      maxTimeMetric: json['maxTimeMetric'] as String? ?? '',
      maxTimeRemainSeconds: (json['maxTimeRemainSeconds'] as num?)?.toDouble(),
      enforceMaxTimeCompletion:
          json['enforceMaxTimeCompletion'] as bool? ?? false,
      dailyCount: (json['dailyCount'] as num?)?.toInt() ?? 0,
      dailyLimit: (json['dailyLimit'] as num?)?.toInt() ?? 0,
      count: (json['count'] as num?)?.toInt() ?? 0,
      limit: (json['limit'] as num?)?.toInt() ?? 0,
      isTicketSubmitted: json['isTicketSubmitted'] as bool? ?? false,
      isLimitedTimeEvent: json['isLimitedTimeEvent'] as bool? ?? false,
      limitedTimeEventRemainingSeconds:
          (json['limitedTimeEventRemainingSeconds'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$MicroChargeEventsImplToJson(
        _$MicroChargeEventsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'conversionStatus': instance.conversionStatus,
      'identifier': instance.identifier,
      'eventName': instance.eventName,
      'eventDescription': instance.eventDescription,
      'eventCategory': instance.eventCategory,
      'payoutAmount': instance.payoutAmount,
      'payoutAmountConverted': instance.payoutAmountConverted,
      'payoutTypeId': instance.payoutTypeId,
      'payoutType': instance.payoutType,
      'allowDuplicateEvents': instance.allowDuplicateEvents,
      'maxTime': instance.maxTime,
      'maxTimeMetric': instance.maxTimeMetric,
      'maxTimeRemainSeconds': instance.maxTimeRemainSeconds,
      'enforceMaxTimeCompletion': instance.enforceMaxTimeCompletion,
      'dailyCount': instance.dailyCount,
      'dailyLimit': instance.dailyLimit,
      'count': instance.count,
      'limit': instance.limit,
      'isTicketSubmitted': instance.isTicketSubmitted,
      'isLimitedTimeEvent': instance.isLimitedTimeEvent,
      'limitedTimeEventRemainingSeconds':
          instance.limitedTimeEventRemainingSeconds,
    };

_$PlaytimeEventsImpl _$$PlaytimeEventsImplFromJson(Map<String, dynamic> json) =>
    _$PlaytimeEventsImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      conversionStatus: json['conversionStatus'] as String? ?? '',
      payoutAmount: (json['payoutAmount'] as num?)?.toDouble() ?? 0,
      payoutAmountConverted:
          (json['payoutAmountConverted'] as num?)?.toDouble() ?? 0,
      timePlayedSeconds: (json['timePlayedSeconds'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PlaytimeEventsImplToJson(
        _$PlaytimeEventsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'conversionStatus': instance.conversionStatus,
      'payoutAmount': instance.payoutAmount,
      'payoutAmountConverted': instance.payoutAmountConverted,
      'timePlayedSeconds': instance.timePlayedSeconds,
    };

_$EarnedPayoutImpl _$$EarnedPayoutImplFromJson(Map<String, dynamic> json) =>
    _$EarnedPayoutImpl(
      earnedPlayablePayout:
          (json['earnedPlayablePayout'] as num?)?.toDouble() ?? 0,
      earnedMicrochargePayout:
          (json['earnedMicrochargePayout'] as num?)?.toDouble() ?? 0,
      earnedPlaytimePayout:
          (json['earnedPlaytimePayout'] as num?)?.toDouble() ?? 0,
      earnedPlayablePayoutConverted:
          (json['earnedPlayablePayoutConverted'] as num?)?.toDouble() ?? 0,
      earnedMicrochargePayoutConverted:
          (json['earnedMicrochargePayoutConverted'] as num?)?.toDouble() ?? 0,
      earnedPlaytimePayoutConverted:
          (json['earnedPlaytimePayoutConverted'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$EarnedPayoutImplToJson(_$EarnedPayoutImpl instance) =>
    <String, dynamic>{
      'earnedPlayablePayout': instance.earnedPlayablePayout,
      'earnedMicrochargePayout': instance.earnedMicrochargePayout,
      'earnedPlaytimePayout': instance.earnedPlaytimePayout,
      'earnedPlayablePayoutConverted': instance.earnedPlayablePayoutConverted,
      'earnedMicrochargePayoutConverted':
          instance.earnedMicrochargePayoutConverted,
      'earnedPlaytimePayoutConverted': instance.earnedPlaytimePayoutConverted,
    };

_$EngagementOverrideImpl _$$EngagementOverrideImplFromJson(
        Map<String, dynamic> json) =>
    _$EngagementOverrideImpl(
      currencySales: json['CurrencySales'] == null
          ? null
          : CurrencySales.fromJson(
              json['CurrencySales'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EngagementOverrideImplToJson(
        _$EngagementOverrideImpl instance) =>
    <String, dynamic>{
      'CurrencySales': instance.currencySales,
    };

_$CurrencySalesImpl _$$CurrencySalesImplFromJson(Map<String, dynamic> json) =>
    _$CurrencySalesImpl(
      name: json['name'] as String?,
      multiplier: (json['multiplier'] as num?)?.toDouble(),
      bannerUrl: json['bannerUrl'] as String?,
      dateStart: json['dateStart'] == null
          ? null
          : DateTime.parse(json['dateStart'] as String),
      dateEnd: json['dateEnd'] == null
          ? null
          : DateTime.parse(json['dateEnd'] as String),
    );

Map<String, dynamic> _$$CurrencySalesImplToJson(_$CurrencySalesImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'multiplier': instance.multiplier,
      'bannerUrl': instance.bannerUrl,
      'dateStart': instance.dateStart?.toIso8601String(),
      'dateEnd': instance.dateEnd?.toIso8601String(),
    };
