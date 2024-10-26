import 'package:freezed_annotation/freezed_annotation.dart';

part 'init.freezed.dart';
part 'init.g.dart';

@freezed
class AcmoInitModel with _$AcmoInitModel {

  factory AcmoInitModel({
    required Data data,
  }) = _AcmoInitModel;

  factory AcmoInitModel.fromJson(Map<String, dynamic> json) => _$AcmoInitModelFromJson(json);
}

@freezed
class Data with _$Data {

  factory Data({
    @Default(false) bool newRegisteredUser,
    required User user,
    required PublisherApp publisherApp,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class User with _$User {

  factory User({
    required String publisherUserId,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
@freezed
class PublisherApp with _$PublisherApp {

  factory PublisherApp({
    @Default('') String headerColor,
    @Default('') String mainColor,
  }) = _PublisherApp;

  factory PublisherApp.fromJson(Map<String, dynamic> json) => _$PublisherAppFromJson(json);
}