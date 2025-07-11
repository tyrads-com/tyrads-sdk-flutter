// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_sale_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AcmoOfferCurrencySaleModelImpl _$$AcmoOfferCurrencySaleModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AcmoOfferCurrencySaleModelImpl(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$AcmoOfferCurrencySaleModelImplToJson(
        _$AcmoOfferCurrencySaleModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      currencySales: json['CurrencySales'] == null
          ? null
          : CurrencySales.fromJson(
              json['CurrencySales'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
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
      remainingTimeSeconds: (json['remainingTimeSeconds'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CurrencySalesImplToJson(_$CurrencySalesImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'multiplier': instance.multiplier,
      'bannerUrl': instance.bannerUrl,
      'dateStart': instance.dateStart?.toIso8601String(),
      'dateEnd': instance.dateEnd?.toIso8601String(),
      'remainingTimeSeconds': instance.remainingTimeSeconds,
    };
