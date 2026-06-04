import 'package:freezed_annotation/freezed_annotation.dart';

part 'init.freezed.dart';
part 'init.g.dart';

@freezed
abstract class AcmoInitModel with _$AcmoInitModel {

  factory AcmoInitModel({
    required int code,
    required String message,
    required int timestamp,
    required double responseTime,
    required Data data,
  }) = _AcmoInitModel;

  factory AcmoInitModel.fromJson(Map<String, dynamic> json) => _$AcmoInitModelFromJson(json);
}

@freezed
abstract class Data with _$Data {

  factory Data({
    @Default(false) bool newRegisteredUser,
    @Default(false) bool newRegisteredDevice,
    required AccountInfo accountInfo,
    required AppInfo appInfo,
    @Default('') String token,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class AccountInfo with _$AccountInfo {

  factory AccountInfo({
    required int id,
    required String publisherUserId,
  }) = _AccountInfo;

  factory AccountInfo.fromJson(Map<String, dynamic> json) => _$AccountInfoFromJson(json);
}
@freezed
abstract class AppInfo with _$AppInfo {

  factory AppInfo({
    @Default('') String headerColor,
    @Default('') String mainColor,
    @Default('') String premiumColor,
  }) = _AppInfo;

  factory AppInfo.fromJson(Map<String, dynamic> json) => _$AppInfoFromJson(json);
}