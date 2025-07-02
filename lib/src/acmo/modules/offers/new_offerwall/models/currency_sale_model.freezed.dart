// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_sale_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AcmoOfferCurrencySaleModel _$AcmoOfferCurrencySaleModelFromJson(
    Map<String, dynamic> json) {
  return _AcmoOfferCurrencySaleModel.fromJson(json);
}

/// @nodoc
mixin _$AcmoOfferCurrencySaleModel {
  Data? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this AcmoOfferCurrencySaleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AcmoOfferCurrencySaleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AcmoOfferCurrencySaleModelCopyWith<AcmoOfferCurrencySaleModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcmoOfferCurrencySaleModelCopyWith<$Res> {
  factory $AcmoOfferCurrencySaleModelCopyWith(AcmoOfferCurrencySaleModel value,
          $Res Function(AcmoOfferCurrencySaleModel) then) =
      _$AcmoOfferCurrencySaleModelCopyWithImpl<$Res,
          AcmoOfferCurrencySaleModel>;
  @useResult
  $Res call({Data? data, String? message});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AcmoOfferCurrencySaleModelCopyWithImpl<$Res,
        $Val extends AcmoOfferCurrencySaleModel>
    implements $AcmoOfferCurrencySaleModelCopyWith<$Res> {
  _$AcmoOfferCurrencySaleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AcmoOfferCurrencySaleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of AcmoOfferCurrencySaleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AcmoOfferCurrencySaleModelImplCopyWith<$Res>
    implements $AcmoOfferCurrencySaleModelCopyWith<$Res> {
  factory _$$AcmoOfferCurrencySaleModelImplCopyWith(
          _$AcmoOfferCurrencySaleModelImpl value,
          $Res Function(_$AcmoOfferCurrencySaleModelImpl) then) =
      __$$AcmoOfferCurrencySaleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data? data, String? message});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AcmoOfferCurrencySaleModelImplCopyWithImpl<$Res>
    extends _$AcmoOfferCurrencySaleModelCopyWithImpl<$Res,
        _$AcmoOfferCurrencySaleModelImpl>
    implements _$$AcmoOfferCurrencySaleModelImplCopyWith<$Res> {
  __$$AcmoOfferCurrencySaleModelImplCopyWithImpl(
      _$AcmoOfferCurrencySaleModelImpl _value,
      $Res Function(_$AcmoOfferCurrencySaleModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AcmoOfferCurrencySaleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$AcmoOfferCurrencySaleModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AcmoOfferCurrencySaleModelImpl implements _AcmoOfferCurrencySaleModel {
  const _$AcmoOfferCurrencySaleModelImpl({this.data, this.message});

  factory _$AcmoOfferCurrencySaleModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AcmoOfferCurrencySaleModelImplFromJson(json);

  @override
  final Data? data;
  @override
  final String? message;

  @override
  String toString() {
    return 'AcmoOfferCurrencySaleModel(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcmoOfferCurrencySaleModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  /// Create a copy of AcmoOfferCurrencySaleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcmoOfferCurrencySaleModelImplCopyWith<_$AcmoOfferCurrencySaleModelImpl>
      get copyWith => __$$AcmoOfferCurrencySaleModelImplCopyWithImpl<
          _$AcmoOfferCurrencySaleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcmoOfferCurrencySaleModelImplToJson(
      this,
    );
  }
}

abstract class _AcmoOfferCurrencySaleModel
    implements AcmoOfferCurrencySaleModel {
  const factory _AcmoOfferCurrencySaleModel(
      {final Data? data,
      final String? message}) = _$AcmoOfferCurrencySaleModelImpl;

  factory _AcmoOfferCurrencySaleModel.fromJson(Map<String, dynamic> json) =
      _$AcmoOfferCurrencySaleModelImpl.fromJson;

  @override
  Data? get data;
  @override
  String? get message;

  /// Create a copy of AcmoOfferCurrencySaleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcmoOfferCurrencySaleModelImplCopyWith<_$AcmoOfferCurrencySaleModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'CurrencySales')
  CurrencySales? get currencySales => throw _privateConstructorUsedError;

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
  $Res call({@JsonKey(name: 'CurrencySales') CurrencySales? currencySales});

  $CurrencySalesCopyWith<$Res>? get currencySales;
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
    Object? currencySales = freezed,
  }) {
    return _then(_value.copyWith(
      currencySales: freezed == currencySales
          ? _value.currencySales
          : currencySales // ignore: cast_nullable_to_non_nullable
              as CurrencySales?,
    ) as $Val);
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrencySalesCopyWith<$Res>? get currencySales {
    if (_value.currencySales == null) {
      return null;
    }

    return $CurrencySalesCopyWith<$Res>(_value.currencySales!, (value) {
      return _then(_value.copyWith(currencySales: value) as $Val);
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
  $Res call({@JsonKey(name: 'CurrencySales') CurrencySales? currencySales});

  @override
  $CurrencySalesCopyWith<$Res>? get currencySales;
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
    Object? currencySales = freezed,
  }) {
    return _then(_$DataImpl(
      currencySales: freezed == currencySales
          ? _value.currencySales
          : currencySales // ignore: cast_nullable_to_non_nullable
              as CurrencySales?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl({@JsonKey(name: 'CurrencySales') this.currencySales});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: 'CurrencySales')
  final CurrencySales? currencySales;

  @override
  String toString() {
    return 'Data(currencySales: $currencySales)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.currencySales, currencySales) ||
                other.currencySales == currencySales));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currencySales);

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
  const factory _Data(
      {@JsonKey(name: 'CurrencySales')
      final CurrencySales? currencySales}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 'CurrencySales')
  CurrencySales? get currencySales;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrencySales _$CurrencySalesFromJson(Map<String, dynamic> json) {
  return _CurrencySales.fromJson(json);
}

/// @nodoc
mixin _$CurrencySales {
  String? get name => throw _privateConstructorUsedError;
  double? get multiplier => throw _privateConstructorUsedError;
  String? get bannerUrl => throw _privateConstructorUsedError;
  DateTime? get dateStart => throw _privateConstructorUsedError;
  DateTime? get dateEnd => throw _privateConstructorUsedError;

  /// Serializes this CurrencySales to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CurrencySales
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrencySalesCopyWith<CurrencySales> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencySalesCopyWith<$Res> {
  factory $CurrencySalesCopyWith(
          CurrencySales value, $Res Function(CurrencySales) then) =
      _$CurrencySalesCopyWithImpl<$Res, CurrencySales>;
  @useResult
  $Res call(
      {String? name,
      double? multiplier,
      String? bannerUrl,
      DateTime? dateStart,
      DateTime? dateEnd});
}

/// @nodoc
class _$CurrencySalesCopyWithImpl<$Res, $Val extends CurrencySales>
    implements $CurrencySalesCopyWith<$Res> {
  _$CurrencySalesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrencySales
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? multiplier = freezed,
    Object? bannerUrl = freezed,
    Object? dateStart = freezed,
    Object? dateEnd = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      multiplier: freezed == multiplier
          ? _value.multiplier
          : multiplier // ignore: cast_nullable_to_non_nullable
              as double?,
      bannerUrl: freezed == bannerUrl
          ? _value.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      dateStart: freezed == dateStart
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateEnd: freezed == dateEnd
          ? _value.dateEnd
          : dateEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencySalesImplCopyWith<$Res>
    implements $CurrencySalesCopyWith<$Res> {
  factory _$$CurrencySalesImplCopyWith(
          _$CurrencySalesImpl value, $Res Function(_$CurrencySalesImpl) then) =
      __$$CurrencySalesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      double? multiplier,
      String? bannerUrl,
      DateTime? dateStart,
      DateTime? dateEnd});
}

/// @nodoc
class __$$CurrencySalesImplCopyWithImpl<$Res>
    extends _$CurrencySalesCopyWithImpl<$Res, _$CurrencySalesImpl>
    implements _$$CurrencySalesImplCopyWith<$Res> {
  __$$CurrencySalesImplCopyWithImpl(
      _$CurrencySalesImpl _value, $Res Function(_$CurrencySalesImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrencySales
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? multiplier = freezed,
    Object? bannerUrl = freezed,
    Object? dateStart = freezed,
    Object? dateEnd = freezed,
  }) {
    return _then(_$CurrencySalesImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      multiplier: freezed == multiplier
          ? _value.multiplier
          : multiplier // ignore: cast_nullable_to_non_nullable
              as double?,
      bannerUrl: freezed == bannerUrl
          ? _value.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      dateStart: freezed == dateStart
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateEnd: freezed == dateEnd
          ? _value.dateEnd
          : dateEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrencySalesImpl implements _CurrencySales {
  const _$CurrencySalesImpl(
      {this.name,
      this.multiplier,
      this.bannerUrl,
      this.dateStart,
      this.dateEnd});

  factory _$CurrencySalesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrencySalesImplFromJson(json);

  @override
  final String? name;
  @override
  final double? multiplier;
  @override
  final String? bannerUrl;
  @override
  final DateTime? dateStart;
  @override
  final DateTime? dateEnd;

  @override
  String toString() {
    return 'CurrencySales(name: $name, multiplier: $multiplier, bannerUrl: $bannerUrl, dateStart: $dateStart, dateEnd: $dateEnd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencySalesImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.multiplier, multiplier) ||
                other.multiplier == multiplier) &&
            (identical(other.bannerUrl, bannerUrl) ||
                other.bannerUrl == bannerUrl) &&
            (identical(other.dateStart, dateStart) ||
                other.dateStart == dateStart) &&
            (identical(other.dateEnd, dateEnd) || other.dateEnd == dateEnd));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, multiplier, bannerUrl, dateStart, dateEnd);

  /// Create a copy of CurrencySales
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencySalesImplCopyWith<_$CurrencySalesImpl> get copyWith =>
      __$$CurrencySalesImplCopyWithImpl<_$CurrencySalesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrencySalesImplToJson(
      this,
    );
  }
}

abstract class _CurrencySales implements CurrencySales {
  const factory _CurrencySales(
      {final String? name,
      final double? multiplier,
      final String? bannerUrl,
      final DateTime? dateStart,
      final DateTime? dateEnd}) = _$CurrencySalesImpl;

  factory _CurrencySales.fromJson(Map<String, dynamic> json) =
      _$CurrencySalesImpl.fromJson;

  @override
  String? get name;
  @override
  double? get multiplier;
  @override
  String? get bannerUrl;
  @override
  DateTime? get dateStart;
  @override
  DateTime? get dateEnd;

  /// Create a copy of CurrencySales
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrencySalesImplCopyWith<_$CurrencySalesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
