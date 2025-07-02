// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AcmoInitModelImpl _$$AcmoInitModelImplFromJson(Map<String, dynamic> json) =>
    _$AcmoInitModelImpl(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AcmoInitModelImplToJson(_$AcmoInitModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      newRegisteredUser: json['newRegisteredUser'] as bool? ?? false,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      publisherApp:
          PublisherApp.fromJson(json['publisherApp'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'newRegisteredUser': instance.newRegisteredUser,
      'user': instance.user,
      'publisherApp': instance.publisherApp,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      publisherUserId: json['publisherUserId'] as String,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'publisherUserId': instance.publisherUserId,
    };

_$PublisherAppImpl _$$PublisherAppImplFromJson(Map<String, dynamic> json) =>
    _$PublisherAppImpl(
      headerColor: json['headerColor'] as String? ?? '',
      mainColor: json['mainColor'] as String? ?? '',
      premiumColor: json['premiumColor'] as String? ?? '',
    );

Map<String, dynamic> _$$PublisherAppImplToJson(_$PublisherAppImpl instance) =>
    <String, dynamic>{
      'headerColor': instance.headerColor,
      'mainColor': instance.mainColor,
      'premiumColor': instance.premiumColor,
    };
