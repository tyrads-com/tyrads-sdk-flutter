// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'init.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AcmoInitModel _$AcmoInitModelFromJson(Map<String, dynamic> json) {
  return _AcmoInitModel.fromJson(json);
}

/// @nodoc
mixin _$AcmoInitModel {
  Data get data => throw _privateConstructorUsedError;

  /// Serializes this AcmoInitModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AcmoInitModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AcmoInitModelCopyWith<AcmoInitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcmoInitModelCopyWith<$Res> {
  factory $AcmoInitModelCopyWith(
          AcmoInitModel value, $Res Function(AcmoInitModel) then) =
      _$AcmoInitModelCopyWithImpl<$Res, AcmoInitModel>;
  @useResult
  $Res call({Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$AcmoInitModelCopyWithImpl<$Res, $Val extends AcmoInitModel>
    implements $AcmoInitModelCopyWith<$Res> {
  _$AcmoInitModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AcmoInitModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ) as $Val);
  }

  /// Create a copy of AcmoInitModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AcmoInitModelImplCopyWith<$Res>
    implements $AcmoInitModelCopyWith<$Res> {
  factory _$$AcmoInitModelImplCopyWith(
          _$AcmoInitModelImpl value, $Res Function(_$AcmoInitModelImpl) then) =
      __$$AcmoInitModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$AcmoInitModelImplCopyWithImpl<$Res>
    extends _$AcmoInitModelCopyWithImpl<$Res, _$AcmoInitModelImpl>
    implements _$$AcmoInitModelImplCopyWith<$Res> {
  __$$AcmoInitModelImplCopyWithImpl(
      _$AcmoInitModelImpl _value, $Res Function(_$AcmoInitModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AcmoInitModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$AcmoInitModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AcmoInitModelImpl implements _AcmoInitModel {
  _$AcmoInitModelImpl({required this.data});

  factory _$AcmoInitModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AcmoInitModelImplFromJson(json);

  @override
  final Data data;

  @override
  String toString() {
    return 'AcmoInitModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcmoInitModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of AcmoInitModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcmoInitModelImplCopyWith<_$AcmoInitModelImpl> get copyWith =>
      __$$AcmoInitModelImplCopyWithImpl<_$AcmoInitModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcmoInitModelImplToJson(
      this,
    );
  }
}

abstract class _AcmoInitModel implements AcmoInitModel {
  factory _AcmoInitModel({required final Data data}) = _$AcmoInitModelImpl;

  factory _AcmoInitModel.fromJson(Map<String, dynamic> json) =
      _$AcmoInitModelImpl.fromJson;

  @override
  Data get data;

  /// Create a copy of AcmoInitModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcmoInitModelImplCopyWith<_$AcmoInitModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  bool get newRegisteredUser => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  PublisherApp get publisherApp => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({bool newRegisteredUser, User user, PublisherApp publisherApp});

  $UserCopyWith<$Res> get user;
  $PublisherAppCopyWith<$Res> get publisherApp;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newRegisteredUser = null,
    Object? user = null,
    Object? publisherApp = null,
  }) {
    return _then(_value.copyWith(
      newRegisteredUser: null == newRegisteredUser
          ? _value.newRegisteredUser
          : newRegisteredUser // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      publisherApp: null == publisherApp
          ? _value.publisherApp
          : publisherApp // ignore: cast_nullable_to_non_nullable
              as PublisherApp,
    ) as $Val);
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublisherAppCopyWith<$Res> get publisherApp {
    return $PublisherAppCopyWith<$Res>(_value.publisherApp, (value) {
      return _then(_value.copyWith(publisherApp: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool newRegisteredUser, User user, PublisherApp publisherApp});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $PublisherAppCopyWith<$Res> get publisherApp;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newRegisteredUser = null,
    Object? user = null,
    Object? publisherApp = null,
  }) {
    return _then(_$DataImpl(
      newRegisteredUser: null == newRegisteredUser
          ? _value.newRegisteredUser
          : newRegisteredUser // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      publisherApp: null == publisherApp
          ? _value.publisherApp
          : publisherApp // ignore: cast_nullable_to_non_nullable
              as PublisherApp,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  _$DataImpl(
      {this.newRegisteredUser = false,
      required this.user,
      required this.publisherApp});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey()
  final bool newRegisteredUser;
  @override
  final User user;
  @override
  final PublisherApp publisherApp;

  @override
  String toString() {
    return 'Data(newRegisteredUser: $newRegisteredUser, user: $user, publisherApp: $publisherApp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.newRegisteredUser, newRegisteredUser) ||
                other.newRegisteredUser == newRegisteredUser) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.publisherApp, publisherApp) ||
                other.publisherApp == publisherApp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, newRegisteredUser, user, publisherApp);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  factory _Data(
      {final bool newRegisteredUser,
      required final User user,
      required final PublisherApp publisherApp}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  bool get newRegisteredUser;
  @override
  User get user;
  @override
  PublisherApp get publisherApp;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get publisherUserId => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({String publisherUserId});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publisherUserId = null,
  }) {
    return _then(_value.copyWith(
      publisherUserId: null == publisherUserId
          ? _value.publisherUserId
          : publisherUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String publisherUserId});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publisherUserId = null,
  }) {
    return _then(_$UserImpl(
      publisherUserId: null == publisherUserId
          ? _value.publisherUserId
          : publisherUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  _$UserImpl({required this.publisherUserId});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String publisherUserId;

  @override
  String toString() {
    return 'User(publisherUserId: $publisherUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.publisherUserId, publisherUserId) ||
                other.publisherUserId == publisherUserId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, publisherUserId);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User({required final String publisherUserId}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get publisherUserId;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PublisherApp _$PublisherAppFromJson(Map<String, dynamic> json) {
  return _PublisherApp.fromJson(json);
}

/// @nodoc
mixin _$PublisherApp {
  String get headerColor => throw _privateConstructorUsedError;
  String get mainColor => throw _privateConstructorUsedError;
  String get premiumColor => throw _privateConstructorUsedError;

  /// Serializes this PublisherApp to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PublisherApp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PublisherAppCopyWith<PublisherApp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublisherAppCopyWith<$Res> {
  factory $PublisherAppCopyWith(
          PublisherApp value, $Res Function(PublisherApp) then) =
      _$PublisherAppCopyWithImpl<$Res, PublisherApp>;
  @useResult
  $Res call({String headerColor, String mainColor, String premiumColor});
}

/// @nodoc
class _$PublisherAppCopyWithImpl<$Res, $Val extends PublisherApp>
    implements $PublisherAppCopyWith<$Res> {
  _$PublisherAppCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PublisherApp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headerColor = null,
    Object? mainColor = null,
    Object? premiumColor = null,
  }) {
    return _then(_value.copyWith(
      headerColor: null == headerColor
          ? _value.headerColor
          : headerColor // ignore: cast_nullable_to_non_nullable
              as String,
      mainColor: null == mainColor
          ? _value.mainColor
          : mainColor // ignore: cast_nullable_to_non_nullable
              as String,
      premiumColor: null == premiumColor
          ? _value.premiumColor
          : premiumColor // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PublisherAppImplCopyWith<$Res>
    implements $PublisherAppCopyWith<$Res> {
  factory _$$PublisherAppImplCopyWith(
          _$PublisherAppImpl value, $Res Function(_$PublisherAppImpl) then) =
      __$$PublisherAppImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String headerColor, String mainColor, String premiumColor});
}

/// @nodoc
class __$$PublisherAppImplCopyWithImpl<$Res>
    extends _$PublisherAppCopyWithImpl<$Res, _$PublisherAppImpl>
    implements _$$PublisherAppImplCopyWith<$Res> {
  __$$PublisherAppImplCopyWithImpl(
      _$PublisherAppImpl _value, $Res Function(_$PublisherAppImpl) _then)
      : super(_value, _then);

  /// Create a copy of PublisherApp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headerColor = null,
    Object? mainColor = null,
    Object? premiumColor = null,
  }) {
    return _then(_$PublisherAppImpl(
      headerColor: null == headerColor
          ? _value.headerColor
          : headerColor // ignore: cast_nullable_to_non_nullable
              as String,
      mainColor: null == mainColor
          ? _value.mainColor
          : mainColor // ignore: cast_nullable_to_non_nullable
              as String,
      premiumColor: null == premiumColor
          ? _value.premiumColor
          : premiumColor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PublisherAppImpl implements _PublisherApp {
  _$PublisherAppImpl(
      {this.headerColor = '', this.mainColor = '', this.premiumColor = ''});

  factory _$PublisherAppImpl.fromJson(Map<String, dynamic> json) =>
      _$$PublisherAppImplFromJson(json);

  @override
  @JsonKey()
  final String headerColor;
  @override
  @JsonKey()
  final String mainColor;
  @override
  @JsonKey()
  final String premiumColor;

  @override
  String toString() {
    return 'PublisherApp(headerColor: $headerColor, mainColor: $mainColor, premiumColor: $premiumColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublisherAppImpl &&
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

  /// Create a copy of PublisherApp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PublisherAppImplCopyWith<_$PublisherAppImpl> get copyWith =>
      __$$PublisherAppImplCopyWithImpl<_$PublisherAppImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PublisherAppImplToJson(
      this,
    );
  }
}

abstract class _PublisherApp implements PublisherApp {
  factory _PublisherApp(
      {final String headerColor,
      final String mainColor,
      final String premiumColor}) = _$PublisherAppImpl;

  factory _PublisherApp.fromJson(Map<String, dynamic> json) =
      _$PublisherAppImpl.fromJson;

  @override
  String get headerColor;
  @override
  String get mainColor;
  @override
  String get premiumColor;

  /// Create a copy of PublisherApp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PublisherAppImplCopyWith<_$PublisherAppImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
