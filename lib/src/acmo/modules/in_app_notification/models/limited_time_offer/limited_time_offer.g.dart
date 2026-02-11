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
      campaigns: (json['campaigns'] as List<dynamic>?)
              ?.map((e) => ActiveCampaign.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$AcmoActiveOffersToJson(_AcmoActiveOffers instance) =>
    <String, dynamic>{
      'groupName': instance.groupName,
      'campaigns': instance.campaigns,
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
    );

Map<String, dynamic> _$CampaignEventSummaryToJson(
        _CampaignEventSummary instance) =>
    <String, dynamic>{
      'playableEventCountAvailable': instance.playableEventCountAvailable,
      'playableEventCountCompleted': instance.playableEventCountCompleted,
      'playableEventCountTotal': instance.playableEventCountTotal,
    };

_ActiveCampaign _$ActiveCampaignFromJson(Map<String, dynamic> json) =>
    _ActiveCampaign(
      campaignId: (json['campaignId'] as num?)?.toInt() ?? 0,
      campaignName: json['campaignName'] as String? ?? '',
      campaignDescription: json['campaignDescription'] as String? ?? '',
      status: json['status'] as String? ?? '',
      createdOn: json['createdOn'] == null
          ? null
          : DateTime.parse(json['createdOn'] as String),
      sortingScore: (json['sortingScore'] as num?)?.toDouble() ?? 0,
      expiredOn: json['expiredOn'] == null
          ? null
          : DateTime.parse(json['expiredOn'] as String),
      app: json['app'] == null
          ? ActiveApp.empty
          : ActiveApp.fromJson(json['app'] as Map<String, dynamic>),
      isRetryDownload: json['isRetryDownload'] as bool? ?? false,
      capReached: json['capReached'] as bool? ?? false,
      group: json['group'] as String? ?? null,
      premium: json['premium'] as bool? ?? false,
      isOldUser: json['isOldUser'] as bool? ?? false,
      isInstalled: json['isInstalled'] as bool? ?? false,
      limitedTimeEvents: (json['limitedTimeEvents'] as List<dynamic>?)
              ?.map((e) => PayoutEvents.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      campaignEventSummary: json['campaignEventSummary'] == null
          ? CampaignEventSummary.empty
          : CampaignEventSummary.fromJson(
              json['campaignEventSummary'] as Map<String, dynamic>),
      currency: json['currency'] == null
          ? null
          : Currency.fromJson(json['currency'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ActiveCampaignToJson(_ActiveCampaign instance) =>
    <String, dynamic>{
      'campaignId': instance.campaignId,
      'campaignName': instance.campaignName,
      'campaignDescription': instance.campaignDescription,
      'status': instance.status,
      'createdOn': instance.createdOn?.toIso8601String(),
      'sortingScore': instance.sortingScore,
      'expiredOn': instance.expiredOn?.toIso8601String(),
      'app': instance.app,
      'isRetryDownload': instance.isRetryDownload,
      'capReached': instance.capReached,
      'group': instance.group,
      'premium': instance.premium,
      'isOldUser': instance.isOldUser,
      'isInstalled': instance.isInstalled,
      'limitedTimeEvents': instance.limitedTimeEvents,
      'campaignEventSummary': instance.campaignEventSummary,
      'currency': instance.currency,
    };

_PayoutEvents _$PayoutEventsFromJson(Map<String, dynamic> json) =>
    _PayoutEvents(
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
      dailyCount: (json['dailyCount'] as num?)?.toInt() ?? 0,
      dailyLimit: (json['dailyLimit'] as num?)?.toInt() ?? 0,
      count: (json['count'] as num?)?.toInt() ?? 0,
      limit: (json['limit'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$PayoutEventsToJson(_PayoutEvents instance) =>
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
      'dailyCount': instance.dailyCount,
      'dailyLimit': instance.dailyLimit,
      'count': instance.count,
      'limit': instance.limit,
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
