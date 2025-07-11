// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tickets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AcmoTicketsResponseModelImpl _$$AcmoTicketsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AcmoTicketsResponseModelImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => AcmoTicketsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AcmoTicketsResponseModelImplToJson(
        _$AcmoTicketsResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$AcmoTicketsModelImpl _$$AcmoTicketsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AcmoTicketsModelImpl(
      category: json['category'] as String,
      events: (json['events'] as List<dynamic>)
          .map((e) => AcmoTicketEventsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AcmoTicketsModelImplToJson(
        _$AcmoTicketsModelImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'events': instance.events,
    };

_$AcmoTicketEventsModelImpl _$$AcmoTicketEventsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AcmoTicketEventsModelImpl(
      id: (json['id'] as num).toInt(),
      identifier: json['identifier'] as String? ?? '',
      eventName: json['eventName'] as String? ?? '',
      eventDescription: json['eventDescription'] as String? ?? '',
      eventCategory: json['eventCategory'] as String? ?? '',
      payoutType: json['payoutType'] as String? ?? '',
      payoutAmount: (json['payoutAmount'] as num?)?.toDouble() ?? 0.0,
      payoutAmountConverted:
          (json['payoutAmountConverted'] as num?)?.toDouble() ?? 0.0,
      isTicketSubmitted: json['isTicketSubmitted'] as bool? ?? false,
      ticketStatus: json['ticketStatus'] as String? ?? '',
      conversionStatus: json['conversionStatus'] as String? ?? '',
      currencyIcon: json['currencyIcon'] as String? ?? '',
      currencyName: json['currencyName'] as String? ?? '',
      allowDuplicateEvents: json['allowDuplicateEvents'] as bool? ?? false,
      currencyConversion: (json['currencyConversion'] as num?)?.toInt() ?? 0,
      payoutTypeId: (json['payoutTypeId'] as num?)?.toInt() ?? 0,
      maxTime: (json['maxTime'] as num?)?.toInt() ?? 0,
      maxTimeMetric: json['maxTimeMetric'] as String? ?? '',
      maxTimeRemainSeconds: (json['maxTimeRemainSeconds'] as num?)?.toDouble(),
      enforceMaxTimeCompletion:
          json['enforceMaxTimeCompletion'] as bool? ?? false,
    );

Map<String, dynamic> _$$AcmoTicketEventsModelImplToJson(
        _$AcmoTicketEventsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'identifier': instance.identifier,
      'eventName': instance.eventName,
      'eventDescription': instance.eventDescription,
      'eventCategory': instance.eventCategory,
      'payoutType': instance.payoutType,
      'payoutAmount': instance.payoutAmount,
      'payoutAmountConverted': instance.payoutAmountConverted,
      'isTicketSubmitted': instance.isTicketSubmitted,
      'ticketStatus': instance.ticketStatus,
      'conversionStatus': instance.conversionStatus,
      'currencyIcon': instance.currencyIcon,
      'currencyName': instance.currencyName,
      'allowDuplicateEvents': instance.allowDuplicateEvents,
      'currencyConversion': instance.currencyConversion,
      'payoutTypeId': instance.payoutTypeId,
      'maxTime': instance.maxTime,
      'maxTimeMetric': instance.maxTimeMetric,
      'maxTimeRemainSeconds': instance.maxTimeRemainSeconds,
      'enforceMaxTimeCompletion': instance.enforceMaxTimeCompletion,
    };
