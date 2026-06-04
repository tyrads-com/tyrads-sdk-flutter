// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'limited_time_offer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AcmoActiveOffersModel _$AcmoActiveOffersModelFromJson(
        Map<String, dynamic> json) =>
    _AcmoActiveOffersModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => AcmoActiveOffers.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$AcmoActiveOffersModelToJson(
        _AcmoActiveOffersModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

_AcmoActiveOffers _$AcmoActiveOffersFromJson(Map<String, dynamic> json) =>
    _AcmoActiveOffers(
      groupName: json['groupName'] as String? ?? '',
      availableCurrencies:
          (json['availableCurrencies'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(
                    k, AcmoCurrency.fromJson(e as Map<String, dynamic>)),
              ) ??
              const {},
      campaigns: (json['campaigns'] as List<dynamic>?)
              ?.map((e) => ActiveCampaign.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$AcmoActiveOffersToJson(_AcmoActiveOffers instance) =>
    <String, dynamic>{
      'groupName': instance.groupName,
      'availableCurrencies': instance.availableCurrencies,
      'campaigns': instance.campaigns,
    };

_AcmoCurrency _$AcmoCurrencyFromJson(Map<String, dynamic> json) =>
    _AcmoCurrency(
      currencyId: (json['currencyId'] as num?)?.toInt() ?? 0,
      currencyIcon: json['currencyIcon'] as String? ?? '',
      currencyName: json['currencyName'] as String? ?? '',
    );

Map<String, dynamic> _$AcmoCurrencyToJson(_AcmoCurrency instance) =>
    <String, dynamic>{
      'currencyId': instance.currencyId,
      'currencyIcon': instance.currencyIcon,
      'currencyName': instance.currencyName,
    };

_ActiveApp _$ActiveAppFromJson(Map<String, dynamic> json) => _ActiveApp(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      packageName: json['packageName'] as String? ?? '',
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      shortDescription: json['shortDescription'] as String? ?? '',
      store: json['store'] as String? ?? '',
      storeCategory: json['storeCategory'] as String? ?? '',
      previewUrl: json['previewUrl'] as String? ?? '',
      thumbnail: json['thumbnail'] as String? ?? '',
      confidenceScore: (json['confidenceScore'] as num?)?.toDouble() ?? 0.0,
      securityLabel: json['securityLabel'] as String? ?? '',
    );

Map<String, dynamic> _$ActiveAppToJson(_ActiveApp instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'packageName': instance.packageName,
      'rating': instance.rating,
      'shortDescription': instance.shortDescription,
      'store': instance.store,
      'storeCategory': instance.storeCategory,
      'previewUrl': instance.previewUrl,
      'thumbnail': instance.thumbnail,
      'confidenceScore': instance.confidenceScore,
      'securityLabel': instance.securityLabel,
    };

_CampaignEventSummary _$CampaignEventSummaryFromJson(
        Map<String, dynamic> json) =>
    _CampaignEventSummary(
      playableEventCountAvailable:
          (json['playableEventCountAvailable'] as num?)?.toInt() ?? 0,
      playableEventCountCompleted:
          (json['playableEventCountCompleted'] as num?)?.toInt() ?? 0,
      playableEventCountTotal:
          (json['playableEventCountTotal'] as num?)?.toInt() ?? 0,
      microchargeEventCountAvailable:
          (json['microchargeEventCountAvailable'] as num?)?.toInt() ?? 0,
      microchargeEventCountCompleted:
          (json['microchargeEventCountCompleted'] as num?)?.toInt() ?? 0,
      microchargeEventCountTotal:
          (json['microchargeEventCountTotal'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$CampaignEventSummaryToJson(
        _CampaignEventSummary instance) =>
    <String, dynamic>{
      'playableEventCountAvailable': instance.playableEventCountAvailable,
      'playableEventCountCompleted': instance.playableEventCountCompleted,
      'playableEventCountTotal': instance.playableEventCountTotal,
      'microchargeEventCountAvailable': instance.microchargeEventCountAvailable,
      'microchargeEventCountCompleted': instance.microchargeEventCountCompleted,
      'microchargeEventCountTotal': instance.microchargeEventCountTotal,
    };

_CampaignValidity _$CampaignValidityFromJson(Map<String, dynamic> json) =>
    _CampaignValidity(
      isRetryDownload: json['isRetryDownload'] as bool? ?? false,
      isActivated: json['isActivated'] as bool? ?? false,
      isOldUser: json['isOldUser'] as bool? ?? false,
      activeCurrencyId: (json['activeCurrencyId'] as num?)?.toInt() ?? 0,
      expiredOn: json['expiredOn'] == null
          ? null
          : DateTime.parse(json['expiredOn'] as String),
      expiredInSeconds: (json['expiredInSeconds'] as num?)?.toDouble(),
      isInstalled: json['isInstalled'] as bool? ?? false,
      capReached: json['capReached'] as bool? ?? false,
    );

Map<String, dynamic> _$CampaignValidityToJson(_CampaignValidity instance) =>
    <String, dynamic>{
      'isRetryDownload': instance.isRetryDownload,
      'isActivated': instance.isActivated,
      'isOldUser': instance.isOldUser,
      'activeCurrencyId': instance.activeCurrencyId,
      'expiredOn': instance.expiredOn?.toIso8601String(),
      'expiredInSeconds': instance.expiredInSeconds,
      'isInstalled': instance.isInstalled,
      'capReached': instance.capReached,
    };

_ActiveCampaign _$ActiveCampaignFromJson(Map<String, dynamic> json) =>
    _ActiveCampaign(
      campaignId: (json['campaignId'] as num?)?.toInt() ?? 0,
      campaignName: json['campaignName'] as String? ?? '',
      campaignDescription: json['campaignDescription'] as String? ?? '',
      campaignType: json['campaignType'] as String? ?? '',
      campaignPremium: json['campaignPremium'] as bool? ?? false,
      validity: json['validity'] == null
          ? CampaignValidity.empty
          : CampaignValidity.fromJson(json['validity'] as Map<String, dynamic>),
      availableCurrencies:
          (json['availableCurrencies'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(
                    k, AcmoCurrency.fromJson(e as Map<String, dynamic>)),
              ) ??
              const {},
      app: json['app'] == null
          ? ActiveApp.empty
          : ActiveApp.fromJson(json['app'] as Map<String, dynamic>),
      campaignStatus: json['campaignStatus'] as String? ?? '',
      group: json['group'] as String? ?? '',
      stage: json['stage'],
      eventSummary: json['eventSummary'] == null
          ? CampaignEventSummary.empty
          : CampaignEventSummary.fromJson(
              json['eventSummary'] as Map<String, dynamic>),
      limitedTimeEvents: (json['limitedTimeEvents'] as List<dynamic>?)
              ?.map((e) => PayoutEvents.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      shorterMaxTimeEvents:
          json['shorterMaxTimeEvents'] as List<dynamic>? ?? const [],
    );

Map<String, dynamic> _$ActiveCampaignToJson(_ActiveCampaign instance) =>
    <String, dynamic>{
      'campaignId': instance.campaignId,
      'campaignName': instance.campaignName,
      'campaignDescription': instance.campaignDescription,
      'campaignType': instance.campaignType,
      'campaignPremium': instance.campaignPremium,
      'validity': instance.validity,
      'availableCurrencies': instance.availableCurrencies,
      'app': instance.app,
      'campaignStatus': instance.campaignStatus,
      'group': instance.group,
      'stage': instance.stage,
      'eventSummary': instance.eventSummary,
      'limitedTimeEvents': instance.limitedTimeEvents,
      'shorterMaxTimeEvents': instance.shorterMaxTimeEvents,
    };

_AcmoPayoutInfo _$AcmoPayoutInfoFromJson(Map<String, dynamic> json) =>
    _AcmoPayoutInfo(
      currencyId: (json['currencyId'] as num?)?.toInt() ?? 0,
      currencyName: json['currencyName'] as String? ?? '',
      currencyIcon: json['currencyIcon'] as String? ?? '',
      currencyConversionRate:
          (json['currencyConversionRate'] as num?)?.toDouble() ?? 0.0,
      payoutAmountConverted:
          (json['payoutAmountConverted'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$AcmoPayoutInfoToJson(_AcmoPayoutInfo instance) =>
    <String, dynamic>{
      'currencyId': instance.currencyId,
      'currencyName': instance.currencyName,
      'currencyIcon': instance.currencyIcon,
      'currencyConversionRate': instance.currencyConversionRate,
      'payoutAmountConverted': instance.payoutAmountConverted,
    };

_PayoutEvents _$PayoutEventsFromJson(Map<String, dynamic> json) =>
    _PayoutEvents(
      appEventId: (json['appEventId'] as num?)?.toInt() ?? 0,
      conversionStatus: json['conversionStatus'],
      identifier: json['identifier'] as String? ?? '',
      eventName: json['eventName'] as String? ?? '',
      eventDescription: json['eventDescription'] as String?,
      eventCategory: json['eventCategory'] as String? ?? '',
      payoutInfo: (json['payoutInfo'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, AcmoPayoutInfo.fromJson(e as Map<String, dynamic>)),
          ) ??
          const {},
      allowDuplicateEvents: json['allowDuplicateEvents'] as bool? ?? false,
      maxTime: (json['maxTime'] as num?)?.toInt() ?? 0,
      maxTimeMetric: json['maxTimeMetric'] as String?,
      maxTimeRemainSeconds: (json['maxTimeRemainSeconds'] as num?)?.toDouble(),
      enforceMaxTimeCompletion:
          json['enforceMaxTimeCompletion'] as bool? ?? false,
      isLimitedTimeEvent: json['isLimitedTimeEvent'] as bool? ?? false,
      limitedTimeEventRemainingSeconds:
          (json['limitedTimeEventRemainingSeconds'] as num?)?.toDouble() ?? 0.0,
      isTicketSubmitted: json['isTicketSubmitted'] as bool? ?? false,
      ticketStatus: json['ticketStatus'],
      lockEventRule: json['lockEventRule'],
      hideEventRule: json['hideEventRule'],
      shorterMaxTimeRule: json['shorterMaxTimeRule'],
      specialCompletionReason: json['specialCompletionReason'],
      dailyCount: (json['dailyCount'] as num?)?.toInt() ?? 0,
      dailyLimit: (json['dailyLimit'] as num?)?.toInt(),
      count: (json['count'] as num?)?.toInt() ?? 0,
      limit: (json['limit'] as num?)?.toInt(),
      totalDailyUniqueCount:
          (json['totalDailyUniqueCount'] as num?)?.toInt() ?? 0,
      totalDailyUniqueLimit: (json['totalDailyUniqueLimit'] as num?)?.toInt(),
      dailyUniqueTodayExist: json['dailyUniqueTodayExist'] as bool? ?? false,
    );

Map<String, dynamic> _$PayoutEventsToJson(_PayoutEvents instance) =>
    <String, dynamic>{
      'appEventId': instance.appEventId,
      'conversionStatus': instance.conversionStatus,
      'identifier': instance.identifier,
      'eventName': instance.eventName,
      'eventDescription': instance.eventDescription,
      'eventCategory': instance.eventCategory,
      'payoutInfo': instance.payoutInfo,
      'allowDuplicateEvents': instance.allowDuplicateEvents,
      'maxTime': instance.maxTime,
      'maxTimeMetric': instance.maxTimeMetric,
      'maxTimeRemainSeconds': instance.maxTimeRemainSeconds,
      'enforceMaxTimeCompletion': instance.enforceMaxTimeCompletion,
      'isLimitedTimeEvent': instance.isLimitedTimeEvent,
      'limitedTimeEventRemainingSeconds':
          instance.limitedTimeEventRemainingSeconds,
      'isTicketSubmitted': instance.isTicketSubmitted,
      'ticketStatus': instance.ticketStatus,
      'lockEventRule': instance.lockEventRule,
      'hideEventRule': instance.hideEventRule,
      'shorterMaxTimeRule': instance.shorterMaxTimeRule,
      'specialCompletionReason': instance.specialCompletionReason,
      'dailyCount': instance.dailyCount,
      'dailyLimit': instance.dailyLimit,
      'count': instance.count,
      'limit': instance.limit,
      'totalDailyUniqueCount': instance.totalDailyUniqueCount,
      'totalDailyUniqueLimit': instance.totalDailyUniqueLimit,
      'dailyUniqueTodayExist': instance.dailyUniqueTodayExist,
    };

_Currency _$CurrencyFromJson(Map<String, dynamic> json) => _Currency(
      name: json['name'] as String? ?? '',
      symbol: json['symbol'] as String? ?? '',
      adUnitName: json['adUnitName'] as String? ?? '',
      adUnitCurrencyName: json['adUnitCurrencyName'] as String? ?? '',
      adUnitCurrencyIcon: json['adUnitCurrencyIcon'] as String? ?? '',
      adUnitCurrencyConversion:
          (json['adUnitCurrencyConversion'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$CurrencyToJson(_Currency instance) => <String, dynamic>{
      'name': instance.name,
      'symbol': instance.symbol,
      'adUnitName': instance.adUnitName,
      'adUnitCurrencyName': instance.adUnitCurrencyName,
      'adUnitCurrencyIcon': instance.adUnitCurrencyIcon,
      'adUnitCurrencyConversion': instance.adUnitCurrencyConversion,
    };
