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
      id: json['id'] as int,
      identifier: json['identifier'] as String? ?? '',
      eventName: json['eventName'] as String? ?? '',
      payoutType: json['payoutType'] as String? ?? '',
      payoutAmountConverted: json['payoutAmountConverted'] as int? ?? 0,
      isTicketSubmitted: json['isTicketSubmitted'] as bool? ?? false,
    );

Map<String, dynamic> _$$AcmoTicketEventsModelImplToJson(
        _$AcmoTicketEventsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'identifier': instance.identifier,
      'eventName': instance.eventName,
      'payoutType': instance.payoutType,
      'payoutAmountConverted': instance.payoutAmountConverted,
      'isTicketSubmitted': instance.isTicketSubmitted,
    };
