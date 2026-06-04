// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_sale_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AcmoOfferCurrencySaleModel _$AcmoOfferCurrencySaleModelFromJson(
        Map<String, dynamic> json) =>
    _AcmoOfferCurrencySaleModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$AcmoOfferCurrencySaleModelToJson(
        _AcmoOfferCurrencySaleModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
      currencySales: json['CurrencySales'] == null
          ? null
          : CurrencySales.fromJson(
              json['CurrencySales'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
      'CurrencySales': instance.currencySales,
    };

_CurrencySales _$CurrencySalesFromJson(Map<String, dynamic> json) =>
    _CurrencySales(
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

Map<String, dynamic> _$CurrencySalesToJson(_CurrencySales instance) =>
    <String, dynamic>{
      'name': instance.name,
      'multiplier': instance.multiplier,
      'bannerUrl': instance.bannerUrl,
      'dateStart': instance.dateStart?.toIso8601String(),
      'dateEnd': instance.dateEnd?.toIso8601String(),
      'remainingTimeSeconds': instance.remainingTimeSeconds,
    };
