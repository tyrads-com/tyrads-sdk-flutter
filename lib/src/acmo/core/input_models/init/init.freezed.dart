// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'init.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AcmoInitModel {
  int get code;
  String get message;
  int get timestamp;
  double get responseTime;
  Data get data;

  /// Create a copy of AcmoInitModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AcmoInitModelCopyWith<AcmoInitModel> get copyWith =>
      _$AcmoInitModelCopyWithImpl<AcmoInitModel>(
          this as AcmoInitModel, _$identity);

  /// Serializes this AcmoInitModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AcmoInitModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.responseTime, responseTime) ||
                other.responseTime == responseTime) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, message, timestamp, responseTime, data);

  @override
  String toString() {
    return 'AcmoInitModel(code: $code, message: $message, timestamp: $timestamp, responseTime: $responseTime, data: $data)';
  }
}

/// @nodoc
abstract mixin class $AcmoInitModelCopyWith<$Res> {
  factory $AcmoInitModelCopyWith(
          AcmoInitModel value, $Res Function(AcmoInitModel) _then) =
      _$AcmoInitModelCopyWithImpl;
  @useResult
  $Res call(
      {int code,
      String message,
      int timestamp,
      double responseTime,
      Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$AcmoInitModelCopyWithImpl<$Res>
    implements $AcmoInitModelCopyWith<$Res> {
  _$AcmoInitModelCopyWithImpl(this._self, this._then);

  final AcmoInitModel _self;
  final $Res Function(AcmoInitModel) _then;

  /// Create a copy of AcmoInitModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? timestamp = null,
    Object? responseTime = null,
    Object? data = null,
  }) {
    return _then(_self.copyWith(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      responseTime: null == responseTime
          ? _self.responseTime
          : responseTime // ignore: cast_nullable_to_non_nullable
              as double,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }

  /// Create a copy of AcmoInitModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AcmoInitModel].
extension AcmoInitModelPatterns on AcmoInitModel {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AcmoInitModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AcmoInitModel() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AcmoInitModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoInitModel():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AcmoInitModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoInitModel() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int code, String message, int timestamp,
            double responseTime, Data data)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AcmoInitModel() when $default != null:
        return $default(_that.code, _that.message, _that.timestamp,
            _that.responseTime, _that.data);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int code, String message, int timestamp,
            double responseTime, Data data)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoInitModel():
        return $default(_that.code, _that.message, _that.timestamp,
            _that.responseTime, _that.data);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int code, String message, int timestamp,
            double responseTime, Data data)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoInitModel() when $default != null:
        return $default(_that.code, _that.message, _that.timestamp,
            _that.responseTime, _that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AcmoInitModel implements AcmoInitModel {
  _AcmoInitModel(
      {required this.code,
      required this.message,
      required this.timestamp,
      required this.responseTime,
      required this.data});
  factory _AcmoInitModel.fromJson(Map<String, dynamic> json) =>
      _$AcmoInitModelFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final int timestamp;
  @override
  final double responseTime;
  @override
  final Data data;

  /// Create a copy of AcmoInitModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AcmoInitModelCopyWith<_AcmoInitModel> get copyWith =>
      __$AcmoInitModelCopyWithImpl<_AcmoInitModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AcmoInitModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AcmoInitModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.responseTime, responseTime) ||
                other.responseTime == responseTime) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, message, timestamp, responseTime, data);

  @override
  String toString() {
    return 'AcmoInitModel(code: $code, message: $message, timestamp: $timestamp, responseTime: $responseTime, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$AcmoInitModelCopyWith<$Res>
    implements $AcmoInitModelCopyWith<$Res> {
  factory _$AcmoInitModelCopyWith(
          _AcmoInitModel value, $Res Function(_AcmoInitModel) _then) =
      __$AcmoInitModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int code,
      String message,
      int timestamp,
      double responseTime,
      Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$AcmoInitModelCopyWithImpl<$Res>
    implements _$AcmoInitModelCopyWith<$Res> {
  __$AcmoInitModelCopyWithImpl(this._self, this._then);

  final _AcmoInitModel _self;
  final $Res Function(_AcmoInitModel) _then;

  /// Create a copy of AcmoInitModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? timestamp = null,
    Object? responseTime = null,
    Object? data = null,
  }) {
    return _then(_AcmoInitModel(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      responseTime: null == responseTime
          ? _self.responseTime
          : responseTime // ignore: cast_nullable_to_non_nullable
              as double,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }

  /// Create a copy of AcmoInitModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$Data {
  bool get newRegisteredUser;
  bool get newRegisteredDevice;
  AccountInfo get accountInfo;
  AppInfo get appInfo;
  String get token;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Data &&
            (identical(other.newRegisteredUser, newRegisteredUser) ||
                other.newRegisteredUser == newRegisteredUser) &&
            (identical(other.newRegisteredDevice, newRegisteredDevice) ||
                other.newRegisteredDevice == newRegisteredDevice) &&
            (identical(other.accountInfo, accountInfo) ||
                other.accountInfo == accountInfo) &&
            (identical(other.appInfo, appInfo) || other.appInfo == appInfo) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, newRegisteredUser,
      newRegisteredDevice, accountInfo, appInfo, token);

  @override
  String toString() {
    return 'Data(newRegisteredUser: $newRegisteredUser, newRegisteredDevice: $newRegisteredDevice, accountInfo: $accountInfo, appInfo: $appInfo, token: $token)';
  }
}

/// @nodoc
abstract mixin class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) =
      _$DataCopyWithImpl;
  @useResult
  $Res call(
      {bool newRegisteredUser,
      bool newRegisteredDevice,
      AccountInfo accountInfo,
      AppInfo appInfo,
      String token});

  $AccountInfoCopyWith<$Res> get accountInfo;
  $AppInfoCopyWith<$Res> get appInfo;
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newRegisteredUser = null,
    Object? newRegisteredDevice = null,
    Object? accountInfo = null,
    Object? appInfo = null,
    Object? token = null,
  }) {
    return _then(_self.copyWith(
      newRegisteredUser: null == newRegisteredUser
          ? _self.newRegisteredUser
          : newRegisteredUser // ignore: cast_nullable_to_non_nullable
              as bool,
      newRegisteredDevice: null == newRegisteredDevice
          ? _self.newRegisteredDevice
          : newRegisteredDevice // ignore: cast_nullable_to_non_nullable
              as bool,
      accountInfo: null == accountInfo
          ? _self.accountInfo
          : accountInfo // ignore: cast_nullable_to_non_nullable
              as AccountInfo,
      appInfo: null == appInfo
          ? _self.appInfo
          : appInfo // ignore: cast_nullable_to_non_nullable
              as AppInfo,
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountInfoCopyWith<$Res> get accountInfo {
    return $AccountInfoCopyWith<$Res>(_self.accountInfo, (value) {
      return _then(_self.copyWith(accountInfo: value));
    });
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppInfoCopyWith<$Res> get appInfo {
    return $AppInfoCopyWith<$Res>(_self.appInfo, (value) {
      return _then(_self.copyWith(appInfo: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Data].
extension DataPatterns on Data {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Data value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Data value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Data value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool newRegisteredUser, bool newRegisteredDevice,
            AccountInfo accountInfo, AppInfo appInfo, String token)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
        return $default(_that.newRegisteredUser, _that.newRegisteredDevice,
            _that.accountInfo, _that.appInfo, _that.token);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool newRegisteredUser, bool newRegisteredDevice,
            AccountInfo accountInfo, AppInfo appInfo, String token)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data():
        return $default(_that.newRegisteredUser, _that.newRegisteredDevice,
            _that.accountInfo, _that.appInfo, _that.token);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool newRegisteredUser, bool newRegisteredDevice,
            AccountInfo accountInfo, AppInfo appInfo, String token)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
        return $default(_that.newRegisteredUser, _that.newRegisteredDevice,
            _that.accountInfo, _that.appInfo, _that.token);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Data implements Data {
  _Data(
      {this.newRegisteredUser = false,
      this.newRegisteredDevice = false,
      required this.accountInfo,
      required this.appInfo,
      this.token = ''});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  @override
  @JsonKey()
  final bool newRegisteredUser;
  @override
  @JsonKey()
  final bool newRegisteredDevice;
  @override
  final AccountInfo accountInfo;
  @override
  final AppInfo appInfo;
  @override
  @JsonKey()
  final String token;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Data &&
            (identical(other.newRegisteredUser, newRegisteredUser) ||
                other.newRegisteredUser == newRegisteredUser) &&
            (identical(other.newRegisteredDevice, newRegisteredDevice) ||
                other.newRegisteredDevice == newRegisteredDevice) &&
            (identical(other.accountInfo, accountInfo) ||
                other.accountInfo == accountInfo) &&
            (identical(other.appInfo, appInfo) || other.appInfo == appInfo) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, newRegisteredUser,
      newRegisteredDevice, accountInfo, appInfo, token);

  @override
  String toString() {
    return 'Data(newRegisteredUser: $newRegisteredUser, newRegisteredDevice: $newRegisteredDevice, accountInfo: $accountInfo, appInfo: $appInfo, token: $token)';
  }
}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) =
      __$DataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool newRegisteredUser,
      bool newRegisteredDevice,
      AccountInfo accountInfo,
      AppInfo appInfo,
      String token});

  @override
  $AccountInfoCopyWith<$Res> get accountInfo;
  @override
  $AppInfoCopyWith<$Res> get appInfo;
}

/// @nodoc
class __$DataCopyWithImpl<$Res> implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? newRegisteredUser = null,
    Object? newRegisteredDevice = null,
    Object? accountInfo = null,
    Object? appInfo = null,
    Object? token = null,
  }) {
    return _then(_Data(
      newRegisteredUser: null == newRegisteredUser
          ? _self.newRegisteredUser
          : newRegisteredUser // ignore: cast_nullable_to_non_nullable
              as bool,
      newRegisteredDevice: null == newRegisteredDevice
          ? _self.newRegisteredDevice
          : newRegisteredDevice // ignore: cast_nullable_to_non_nullable
              as bool,
      accountInfo: null == accountInfo
          ? _self.accountInfo
          : accountInfo // ignore: cast_nullable_to_non_nullable
              as AccountInfo,
      appInfo: null == appInfo
          ? _self.appInfo
          : appInfo // ignore: cast_nullable_to_non_nullable
              as AppInfo,
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountInfoCopyWith<$Res> get accountInfo {
    return $AccountInfoCopyWith<$Res>(_self.accountInfo, (value) {
      return _then(_self.copyWith(accountInfo: value));
    });
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppInfoCopyWith<$Res> get appInfo {
    return $AppInfoCopyWith<$Res>(_self.appInfo, (value) {
      return _then(_self.copyWith(appInfo: value));
    });
  }
}

/// @nodoc
mixin _$AccountInfo {
  int get id;
  String get publisherUserId;

  /// Create a copy of AccountInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AccountInfoCopyWith<AccountInfo> get copyWith =>
      _$AccountInfoCopyWithImpl<AccountInfo>(this as AccountInfo, _$identity);

  /// Serializes this AccountInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AccountInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.publisherUserId, publisherUserId) ||
                other.publisherUserId == publisherUserId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, publisherUserId);

  @override
  String toString() {
    return 'AccountInfo(id: $id, publisherUserId: $publisherUserId)';
  }
}

/// @nodoc
abstract mixin class $AccountInfoCopyWith<$Res> {
  factory $AccountInfoCopyWith(
          AccountInfo value, $Res Function(AccountInfo) _then) =
      _$AccountInfoCopyWithImpl;
  @useResult
  $Res call({int id, String publisherUserId});
}

/// @nodoc
class _$AccountInfoCopyWithImpl<$Res> implements $AccountInfoCopyWith<$Res> {
  _$AccountInfoCopyWithImpl(this._self, this._then);

  final AccountInfo _self;
  final $Res Function(AccountInfo) _then;

  /// Create a copy of AccountInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? publisherUserId = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      publisherUserId: null == publisherUserId
          ? _self.publisherUserId
          : publisherUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [AccountInfo].
extension AccountInfoPatterns on AccountInfo {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AccountInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AccountInfo() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AccountInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AccountInfo():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AccountInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AccountInfo() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, String publisherUserId)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AccountInfo() when $default != null:
        return $default(_that.id, _that.publisherUserId);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int id, String publisherUserId) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AccountInfo():
        return $default(_that.id, _that.publisherUserId);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, String publisherUserId)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AccountInfo() when $default != null:
        return $default(_that.id, _that.publisherUserId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AccountInfo implements AccountInfo {
  _AccountInfo({required this.id, required this.publisherUserId});
  factory _AccountInfo.fromJson(Map<String, dynamic> json) =>
      _$AccountInfoFromJson(json);

  @override
  final int id;
  @override
  final String publisherUserId;

  /// Create a copy of AccountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AccountInfoCopyWith<_AccountInfo> get copyWith =>
      __$AccountInfoCopyWithImpl<_AccountInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AccountInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccountInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.publisherUserId, publisherUserId) ||
                other.publisherUserId == publisherUserId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, publisherUserId);

  @override
  String toString() {
    return 'AccountInfo(id: $id, publisherUserId: $publisherUserId)';
  }
}

/// @nodoc
abstract mixin class _$AccountInfoCopyWith<$Res>
    implements $AccountInfoCopyWith<$Res> {
  factory _$AccountInfoCopyWith(
          _AccountInfo value, $Res Function(_AccountInfo) _then) =
      __$AccountInfoCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String publisherUserId});
}

/// @nodoc
class __$AccountInfoCopyWithImpl<$Res> implements _$AccountInfoCopyWith<$Res> {
  __$AccountInfoCopyWithImpl(this._self, this._then);

  final _AccountInfo _self;
  final $Res Function(_AccountInfo) _then;

  /// Create a copy of AccountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? publisherUserId = null,
  }) {
    return _then(_AccountInfo(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      publisherUserId: null == publisherUserId
          ? _self.publisherUserId
          : publisherUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$AppInfo {
  String get headerColor;
  String get mainColor;
  String get premiumColor;

  /// Create a copy of AppInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppInfoCopyWith<AppInfo> get copyWith =>
      _$AppInfoCopyWithImpl<AppInfo>(this as AppInfo, _$identity);

  /// Serializes this AppInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppInfo &&
            (identical(other.headerColor, headerColor) ||
                other.headerColor == headerColor) &&
            (identical(other.mainColor, mainColor) ||
                other.mainColor == mainColor) &&
            (identical(other.premiumColor, premiumColor) ||
                other.premiumColor == premiumColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, headerColor, mainColor, premiumColor);

  @override
  String toString() {
    return 'AppInfo(headerColor: $headerColor, mainColor: $mainColor, premiumColor: $premiumColor)';
  }
}

/// @nodoc
abstract mixin class $AppInfoCopyWith<$Res> {
  factory $AppInfoCopyWith(AppInfo value, $Res Function(AppInfo) _then) =
      _$AppInfoCopyWithImpl;
  @useResult
  $Res call({String headerColor, String mainColor, String premiumColor});
}

/// @nodoc
class _$AppInfoCopyWithImpl<$Res> implements $AppInfoCopyWith<$Res> {
  _$AppInfoCopyWithImpl(this._self, this._then);

  final AppInfo _self;
  final $Res Function(AppInfo) _then;

  /// Create a copy of AppInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headerColor = null,
    Object? mainColor = null,
    Object? premiumColor = null,
  }) {
    return _then(_self.copyWith(
      headerColor: null == headerColor
          ? _self.headerColor
          : headerColor // ignore: cast_nullable_to_non_nullable
              as String,
      mainColor: null == mainColor
          ? _self.mainColor
          : mainColor // ignore: cast_nullable_to_non_nullable
              as String,
      premiumColor: null == premiumColor
          ? _self.premiumColor
          : premiumColor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [AppInfo].
extension AppInfoPatterns on AppInfo {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppInfo() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppInfo():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AppInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppInfo() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String headerColor, String mainColor, String premiumColor)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppInfo() when $default != null:
        return $default(_that.headerColor, _that.mainColor, _that.premiumColor);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String headerColor, String mainColor, String premiumColor)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppInfo():
        return $default(_that.headerColor, _that.mainColor, _that.premiumColor);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String headerColor, String mainColor, String premiumColor)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppInfo() when $default != null:
        return $default(_that.headerColor, _that.mainColor, _that.premiumColor);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AppInfo implements AppInfo {
  _AppInfo(
      {this.headerColor = '', this.mainColor = '', this.premiumColor = ''});
  factory _AppInfo.fromJson(Map<String, dynamic> json) =>
      _$AppInfoFromJson(json);

  @override
  @JsonKey()
  final String headerColor;
  @override
  @JsonKey()
  final String mainColor;
  @override
  @JsonKey()
  final String premiumColor;

  /// Create a copy of AppInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppInfoCopyWith<_AppInfo> get copyWith =>
      __$AppInfoCopyWithImpl<_AppInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppInfo &&
            (identical(other.headerColor, headerColor) ||
                other.headerColor == headerColor) &&
            (identical(other.mainColor, mainColor) ||
                other.mainColor == mainColor) &&
            (identical(other.premiumColor, premiumColor) ||
                other.premiumColor == premiumColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, headerColor, mainColor, premiumColor);

  @override
  String toString() {
    return 'AppInfo(headerColor: $headerColor, mainColor: $mainColor, premiumColor: $premiumColor)';
  }
}

/// @nodoc
abstract mixin class _$AppInfoCopyWith<$Res> implements $AppInfoCopyWith<$Res> {
  factory _$AppInfoCopyWith(_AppInfo value, $Res Function(_AppInfo) _then) =
      __$AppInfoCopyWithImpl;
  @override
  @useResult
  $Res call({String headerColor, String mainColor, String premiumColor});
}

/// @nodoc
class __$AppInfoCopyWithImpl<$Res> implements _$AppInfoCopyWith<$Res> {
  __$AppInfoCopyWithImpl(this._self, this._then);

  final _AppInfo _self;
  final $Res Function(_AppInfo) _then;

  /// Create a copy of AppInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? headerColor = null,
    Object? mainColor = null,
    Object? premiumColor = null,
  }) {
    return _then(_AppInfo(
      headerColor: null == headerColor
          ? _self.headerColor
          : headerColor // ignore: cast_nullable_to_non_nullable
              as String,
      mainColor: null == mainColor
          ? _self.mainColor
          : mainColor // ignore: cast_nullable_to_non_nullable
              as String,
      premiumColor: null == premiumColor
          ? _self.premiumColor
          : premiumColor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
