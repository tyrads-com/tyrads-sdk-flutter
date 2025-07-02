// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_sale_model.freezed.dart';
part 'currency_sale_model.g.dart';

@freezed
class AcmoOfferCurrencySaleModel with _$AcmoOfferCurrencySaleModel {
    const factory AcmoOfferCurrencySaleModel({
        Data? data,
        String? message,
    }) = _AcmoOfferCurrencySaleModel;

    factory AcmoOfferCurrencySaleModel.fromJson(Map<String, dynamic> json) => _$AcmoOfferCurrencySaleModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
      @JsonKey(name: 'CurrencySales')
      CurrencySales? currencySales,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class CurrencySales with _$CurrencySales {
    const factory CurrencySales({
        String? name,
        double? multiplier,
        String? bannerUrl,
        DateTime? dateStart,
        DateTime? dateEnd,
    }) = _CurrencySales;

    factory CurrencySales.fromJson(Map<String, dynamic> json) => _$CurrencySalesFromJson(json);
}
