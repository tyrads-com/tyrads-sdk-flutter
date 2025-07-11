import 'package:freezed_annotation/freezed_annotation.dart';

part 'tickets.freezed.dart';
part 'tickets.g.dart';

@freezed
class AcmoTicketsResponseModel with _$AcmoTicketsResponseModel {
  factory AcmoTicketsResponseModel({required List<AcmoTicketsModel> data}) =
      _AcmoTicketsResponseModel;

  factory AcmoTicketsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AcmoTicketsResponseModelFromJson(json);
}

@freezed
class AcmoTicketsModel with _$AcmoTicketsModel {
  factory AcmoTicketsModel(
      {required String category,
      required List<AcmoTicketEventsModel> events}) = _AcmoTicketsModel;

  factory AcmoTicketsModel.fromJson(Map<String, dynamic> json) =>
      _$AcmoTicketsModelFromJson(json);
}

@freezed
class AcmoTicketEventsModel with _$AcmoTicketEventsModel {
  factory AcmoTicketEventsModel({
    required int id,
    @Default('') String identifier,
    @Default('') String eventName,
    @Default('') String eventDescription,
    @Default('') String eventCategory,
    @Default('') String payoutType,
    @Default(0.0) double payoutAmount,
    @Default(0.0) double payoutAmountConverted,
    @Default(false) bool isTicketSubmitted,
    @Default('') String ticketStatus,
    @Default('') String conversionStatus,
    @Default('') String currencyIcon,
    @Default('') String currencyName,
    @Default(false) bool allowDuplicateEvents,
    @Default(0) int currencyConversion,
    @Default(0) int payoutTypeId,
    @Default(0) int maxTime,
    @Default('') String maxTimeMetric,
    double? maxTimeRemainSeconds,
    @Default(false) bool enforceMaxTimeCompletion,
  }) = _AcmoTicketEventsModel;

  factory AcmoTicketEventsModel.fromJson(Map<String, dynamic> json) =>
      _$AcmoTicketEventsModelFromJson(json);
}
