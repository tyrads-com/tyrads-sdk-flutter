// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_offers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AcmoActiveOffersModelImpl _$$AcmoActiveOffersModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AcmoActiveOffersModelImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => AcmoActiveOffers.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$AcmoActiveOffersModelImplToJson(
        _$AcmoActiveOffersModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

_$AcmoActiveOffersImpl _$$AcmoActiveOffersImplFromJson(
        Map<String, dynamic> json) =>
    _$AcmoActiveOffersImpl(
      groupName: json['groupName'] as String? ?? '',
      campaigns: (json['campaigns'] as List<dynamic>?)
              ?.map((e) => ActiveCampaign.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AcmoActiveOffersImplToJson(
        _$AcmoActiveOffersImpl instance) =>
    <String, dynamic>{
      'groupName': instance.groupName,
      'campaigns': instance.campaigns,
    };

_$ActiveAppImpl _$$ActiveAppImplFromJson(Map<String, dynamic> json) =>
    _$ActiveAppImpl(
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

Map<String, dynamic> _$$ActiveAppImplToJson(_$ActiveAppImpl instance) =>
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

_$CampaignEventSummaryImpl _$$CampaignEventSummaryImplFromJson(
        Map<String, dynamic> json) =>
    _$CampaignEventSummaryImpl(
      playableEventCountAvailable:
          (json['playableEventCountAvailable'] as num?)?.toInt() ?? 0,
      playableEventCountCompleted:
          (json['playableEventCountCompleted'] as num?)?.toInt() ?? 0,
      playableEventCountTotal:
          (json['playableEventCountTotal'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CampaignEventSummaryImplToJson(
        _$CampaignEventSummaryImpl instance) =>
    <String, dynamic>{
      'playableEventCountAvailable': instance.playableEventCountAvailable,
      'playableEventCountCompleted': instance.playableEventCountCompleted,
      'playableEventCountTotal': instance.playableEventCountTotal,
    };

_$ActiveCampaignImpl _$$ActiveCampaignImplFromJson(Map<String, dynamic> json) =>
    _$ActiveCampaignImpl(
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
    );

Map<String, dynamic> _$$ActiveCampaignImplToJson(
        _$ActiveCampaignImpl instance) =>
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
    };
