// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AcmoInitModel _$AcmoInitModelFromJson(Map<String, dynamic> json) =>
    _AcmoInitModel(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      timestamp: (json['timestamp'] as num).toInt(),
      responseTime: (json['responseTime'] as num).toDouble(),
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AcmoInitModelToJson(_AcmoInitModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'timestamp': instance.timestamp,
      'responseTime': instance.responseTime,
      'data': instance.data,
    };

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
      newRegisteredUser: json['newRegisteredUser'] as bool? ?? false,
      newRegisteredDevice: json['newRegisteredDevice'] as bool? ?? false,
      accountInfo:
          AccountInfo.fromJson(json['accountInfo'] as Map<String, dynamic>),
      appInfo: AppInfo.fromJson(json['appInfo'] as Map<String, dynamic>),
      token: json['token'] as String? ?? '',
    );

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
      'newRegisteredUser': instance.newRegisteredUser,
      'newRegisteredDevice': instance.newRegisteredDevice,
      'accountInfo': instance.accountInfo,
      'appInfo': instance.appInfo,
      'token': instance.token,
    };

_AccountInfo _$AccountInfoFromJson(Map<String, dynamic> json) => _AccountInfo(
      id: (json['id'] as num).toInt(),
      publisherUserId: json['publisherUserId'] as String,
    );

Map<String, dynamic> _$AccountInfoToJson(_AccountInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'publisherUserId': instance.publisherUserId,
    };

_AppInfo _$AppInfoFromJson(Map<String, dynamic> json) => _AppInfo(
      headerColor: json['headerColor'] as String? ?? '',
      mainColor: json['mainColor'] as String? ?? '',
      premiumColor: json['premiumColor'] as String? ?? '',
    );

Map<String, dynamic> _$AppInfoToJson(_AppInfo instance) => <String, dynamic>{
      'headerColor': instance.headerColor,
      'mainColor': instance.mainColor,
      'premiumColor': instance.premiumColor,
    };
