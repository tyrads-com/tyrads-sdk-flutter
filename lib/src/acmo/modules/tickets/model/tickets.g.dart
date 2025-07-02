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
      payoutType: json['payoutType'] as String? ?? '',
      eventCategory: json['eventCategory'] as String? ?? '',
      payoutAmountConverted:
          (json['payoutAmountConverted'] as num?)?.toDouble() ?? 0,
      isTicketSubmitted: json['isTicketSubmitted'] as bool? ?? false,
      ticketStatus: json['ticketStatus'] as String? ?? "",
      conversionStatus: json['conversionStatus'] as String? ?? "",
      currencyIcon: json['currencyIcon'] as String? ?? "",
      currencyName: json['currencyName'] as String? ?? "",
    );

Map<String, dynamic> _$$AcmoTicketEventsModelImplToJson(
        _$AcmoTicketEventsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'identifier': instance.identifier,
      'eventName': instance.eventName,
      'payoutType': instance.payoutType,
      'eventCategory': instance.eventCategory,
      'payoutAmountConverted': instance.payoutAmountConverted,
      'isTicketSubmitted': instance.isTicketSubmitted,
      'ticketStatus': instance.ticketStatus,
      'conversionStatus': instance.conversionStatus,
      'currencyIcon': instance.currencyIcon,
      'currencyName': instance.currencyName,
    };
