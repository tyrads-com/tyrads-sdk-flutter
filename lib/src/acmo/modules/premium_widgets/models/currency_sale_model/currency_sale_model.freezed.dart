// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_sale_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AcmoOfferCurrencySaleModel {
  Data? get data;
  String? get message;

  /// Create a copy of AcmoOfferCurrencySaleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AcmoOfferCurrencySaleModelCopyWith<AcmoOfferCurrencySaleModel>
      get copyWith =>
          _$AcmoOfferCurrencySaleModelCopyWithImpl<AcmoOfferCurrencySaleModel>(
              this as AcmoOfferCurrencySaleModel, _$identity);

  /// Serializes this AcmoOfferCurrencySaleModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AcmoOfferCurrencySaleModel &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @override
  String toString() {
    return 'AcmoOfferCurrencySaleModel(data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class $AcmoOfferCurrencySaleModelCopyWith<$Res> {
  factory $AcmoOfferCurrencySaleModelCopyWith(AcmoOfferCurrencySaleModel value,
          $Res Function(AcmoOfferCurrencySaleModel) _then) =
      _$AcmoOfferCurrencySaleModelCopyWithImpl;
  @useResult
  $Res call({Data? data, String? message});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AcmoOfferCurrencySaleModelCopyWithImpl<$Res>
    implements $AcmoOfferCurrencySaleModelCopyWith<$Res> {
  _$AcmoOfferCurrencySaleModelCopyWithImpl(this._self, this._then);

  final AcmoOfferCurrencySaleModel _self;
  final $Res Function(AcmoOfferCurrencySaleModel) _then;

  /// Create a copy of AcmoOfferCurrencySaleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_self.copyWith(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of AcmoOfferCurrencySaleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AcmoOfferCurrencySaleModel].
extension AcmoOfferCurrencySaleModelPatterns on AcmoOfferCurrencySaleModel {
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
    TResult Function(_AcmoOfferCurrencySaleModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AcmoOfferCurrencySaleModel() when $default != null:
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
    TResult Function(_AcmoOfferCurrencySaleModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoOfferCurrencySaleModel():
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
    TResult? Function(_AcmoOfferCurrencySaleModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoOfferCurrencySaleModel() when $default != null:
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
    TResult Function(Data? data, String? message)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AcmoOfferCurrencySaleModel() when $default != null:
        return $default(_that.data, _that.message);
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
    TResult Function(Data? data, String? message) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoOfferCurrencySaleModel():
        return $default(_that.data, _that.message);
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
    TResult? Function(Data? data, String? message)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoOfferCurrencySaleModel() when $default != null:
        return $default(_that.data, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AcmoOfferCurrencySaleModel implements AcmoOfferCurrencySaleModel {
  const _AcmoOfferCurrencySaleModel({this.data, this.message});
  factory _AcmoOfferCurrencySaleModel.fromJson(Map<String, dynamic> json) =>
      _$AcmoOfferCurrencySaleModelFromJson(json);

  @override
  final Data? data;
  @override
  final String? message;

  /// Create a copy of AcmoOfferCurrencySaleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AcmoOfferCurrencySaleModelCopyWith<_AcmoOfferCurrencySaleModel>
      get copyWith => __$AcmoOfferCurrencySaleModelCopyWithImpl<
          _AcmoOfferCurrencySaleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AcmoOfferCurrencySaleModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AcmoOfferCurrencySaleModel &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @override
  String toString() {
    return 'AcmoOfferCurrencySaleModel(data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$AcmoOfferCurrencySaleModelCopyWith<$Res>
    implements $AcmoOfferCurrencySaleModelCopyWith<$Res> {
  factory _$AcmoOfferCurrencySaleModelCopyWith(
          _AcmoOfferCurrencySaleModel value,
          $Res Function(_AcmoOfferCurrencySaleModel) _then) =
      __$AcmoOfferCurrencySaleModelCopyWithImpl;
  @override
  @useResult
  $Res call({Data? data, String? message});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$AcmoOfferCurrencySaleModelCopyWithImpl<$Res>
    implements _$AcmoOfferCurrencySaleModelCopyWith<$Res> {
  __$AcmoOfferCurrencySaleModelCopyWithImpl(this._self, this._then);

  final _AcmoOfferCurrencySaleModel _self;
  final $Res Function(_AcmoOfferCurrencySaleModel) _then;

  /// Create a copy of AcmoOfferCurrencySaleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_AcmoOfferCurrencySaleModel(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of AcmoOfferCurrencySaleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'CurrencySales')
  CurrencySales? get currencySales;

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
            (identical(other.currencySales, currencySales) ||
                other.currencySales == currencySales));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currencySales);

  @override
  String toString() {
    return 'Data(currencySales: $currencySales)';
  }
}

/// @nodoc
abstract mixin class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) =
      _$DataCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'CurrencySales') CurrencySales? currencySales});

  $CurrencySalesCopyWith<$Res>? get currencySales;
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
    Object? currencySales = freezed,
  }) {
    return _then(_self.copyWith(
      currencySales: freezed == currencySales
          ? _self.currencySales
          : currencySales // ignore: cast_nullable_to_non_nullable
              as CurrencySales?,
    ));
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrencySalesCopyWith<$Res>? get currencySales {
    if (_self.currencySales == null) {
      return null;
    }

    return $CurrencySalesCopyWith<$Res>(_self.currencySales!, (value) {
      return _then(_self.copyWith(currencySales: value));
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
    TResult Function(
            @JsonKey(name: 'CurrencySales') CurrencySales? currencySales)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
        return $default(_that.currencySales);
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
    TResult Function(
            @JsonKey(name: 'CurrencySales') CurrencySales? currencySales)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data():
        return $default(_that.currencySales);
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
            @JsonKey(name: 'CurrencySales') CurrencySales? currencySales)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Data() when $default != null:
        return $default(_that.currencySales);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Data implements Data {
  const _Data({@JsonKey(name: 'CurrencySales') this.currencySales});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  @override
  @JsonKey(name: 'CurrencySales')
  final CurrencySales? currencySales;

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
            (identical(other.currencySales, currencySales) ||
                other.currencySales == currencySales));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currencySales);

  @override
  String toString() {
    return 'Data(currencySales: $currencySales)';
  }
}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) =
      __$DataCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'CurrencySales') CurrencySales? currencySales});

  @override
  $CurrencySalesCopyWith<$Res>? get currencySales;
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
    Object? currencySales = freezed,
  }) {
    return _then(_Data(
      currencySales: freezed == currencySales
          ? _self.currencySales
          : currencySales // ignore: cast_nullable_to_non_nullable
              as CurrencySales?,
    ));
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrencySalesCopyWith<$Res>? get currencySales {
    if (_self.currencySales == null) {
      return null;
    }

    return $CurrencySalesCopyWith<$Res>(_self.currencySales!, (value) {
      return _then(_self.copyWith(currencySales: value));
    });
  }
}

/// @nodoc
mixin _$CurrencySales {
  String? get name;
  double? get multiplier;
  String? get bannerUrl;
  DateTime? get dateStart;
  DateTime? get dateEnd;
  int? get remainingTimeSeconds;

  /// Create a copy of CurrencySales
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CurrencySalesCopyWith<CurrencySales> get copyWith =>
      _$CurrencySalesCopyWithImpl<CurrencySales>(
          this as CurrencySales, _$identity);

  /// Serializes this CurrencySales to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CurrencySales &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.multiplier, multiplier) ||
                other.multiplier == multiplier) &&
            (identical(other.bannerUrl, bannerUrl) ||
                other.bannerUrl == bannerUrl) &&
            (identical(other.dateStart, dateStart) ||
                other.dateStart == dateStart) &&
            (identical(other.dateEnd, dateEnd) || other.dateEnd == dateEnd) &&
            (identical(other.remainingTimeSeconds, remainingTimeSeconds) ||
                other.remainingTimeSeconds == remainingTimeSeconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, multiplier, bannerUrl,
      dateStart, dateEnd, remainingTimeSeconds);

  @override
  String toString() {
    return 'CurrencySales(name: $name, multiplier: $multiplier, bannerUrl: $bannerUrl, dateStart: $dateStart, dateEnd: $dateEnd, remainingTimeSeconds: $remainingTimeSeconds)';
  }
}

/// @nodoc
abstract mixin class $CurrencySalesCopyWith<$Res> {
  factory $CurrencySalesCopyWith(
          CurrencySales value, $Res Function(CurrencySales) _then) =
      _$CurrencySalesCopyWithImpl;
  @useResult
  $Res call(
      {String? name,
      double? multiplier,
      String? bannerUrl,
      DateTime? dateStart,
      DateTime? dateEnd,
      int? remainingTimeSeconds});
}

/// @nodoc
class _$CurrencySalesCopyWithImpl<$Res>
    implements $CurrencySalesCopyWith<$Res> {
  _$CurrencySalesCopyWithImpl(this._self, this._then);

  final CurrencySales _self;
  final $Res Function(CurrencySales) _then;

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
    Object? remainingTimeSeconds = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      multiplier: freezed == multiplier
          ? _self.multiplier
          : multiplier // ignore: cast_nullable_to_non_nullable
              as double?,
      bannerUrl: freezed == bannerUrl
          ? _self.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      dateStart: freezed == dateStart
          ? _self.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateEnd: freezed == dateEnd
          ? _self.dateEnd
          : dateEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      remainingTimeSeconds: freezed == remainingTimeSeconds
          ? _self.remainingTimeSeconds
          : remainingTimeSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CurrencySales].
extension CurrencySalesPatterns on CurrencySales {
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
    TResult Function(_CurrencySales value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CurrencySales() when $default != null:
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
    TResult Function(_CurrencySales value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CurrencySales():
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
    TResult? Function(_CurrencySales value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CurrencySales() when $default != null:
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
    TResult Function(String? name, double? multiplier, String? bannerUrl,
            DateTime? dateStart, DateTime? dateEnd, int? remainingTimeSeconds)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CurrencySales() when $default != null:
        return $default(_that.name, _that.multiplier, _that.bannerUrl,
            _that.dateStart, _that.dateEnd, _that.remainingTimeSeconds);
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
    TResult Function(String? name, double? multiplier, String? bannerUrl,
            DateTime? dateStart, DateTime? dateEnd, int? remainingTimeSeconds)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CurrencySales():
        return $default(_that.name, _that.multiplier, _that.bannerUrl,
            _that.dateStart, _that.dateEnd, _that.remainingTimeSeconds);
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
    TResult? Function(String? name, double? multiplier, String? bannerUrl,
            DateTime? dateStart, DateTime? dateEnd, int? remainingTimeSeconds)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CurrencySales() when $default != null:
        return $default(_that.name, _that.multiplier, _that.bannerUrl,
            _that.dateStart, _that.dateEnd, _that.remainingTimeSeconds);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CurrencySales implements CurrencySales {
  const _CurrencySales(
      {this.name,
      this.multiplier,
      this.bannerUrl,
      this.dateStart,
      this.dateEnd,
      this.remainingTimeSeconds});
  factory _CurrencySales.fromJson(Map<String, dynamic> json) =>
      _$CurrencySalesFromJson(json);

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
  final int? remainingTimeSeconds;

  /// Create a copy of CurrencySales
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CurrencySalesCopyWith<_CurrencySales> get copyWith =>
      __$CurrencySalesCopyWithImpl<_CurrencySales>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CurrencySalesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrencySales &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.multiplier, multiplier) ||
                other.multiplier == multiplier) &&
            (identical(other.bannerUrl, bannerUrl) ||
                other.bannerUrl == bannerUrl) &&
            (identical(other.dateStart, dateStart) ||
                other.dateStart == dateStart) &&
            (identical(other.dateEnd, dateEnd) || other.dateEnd == dateEnd) &&
            (identical(other.remainingTimeSeconds, remainingTimeSeconds) ||
                other.remainingTimeSeconds == remainingTimeSeconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, multiplier, bannerUrl,
      dateStart, dateEnd, remainingTimeSeconds);

  @override
  String toString() {
    return 'CurrencySales(name: $name, multiplier: $multiplier, bannerUrl: $bannerUrl, dateStart: $dateStart, dateEnd: $dateEnd, remainingTimeSeconds: $remainingTimeSeconds)';
  }
}

/// @nodoc
abstract mixin class _$CurrencySalesCopyWith<$Res>
    implements $CurrencySalesCopyWith<$Res> {
  factory _$CurrencySalesCopyWith(
          _CurrencySales value, $Res Function(_CurrencySales) _then) =
      __$CurrencySalesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? name,
      double? multiplier,
      String? bannerUrl,
      DateTime? dateStart,
      DateTime? dateEnd,
      int? remainingTimeSeconds});
}

/// @nodoc
class __$CurrencySalesCopyWithImpl<$Res>
    implements _$CurrencySalesCopyWith<$Res> {
  __$CurrencySalesCopyWithImpl(this._self, this._then);

  final _CurrencySales _self;
  final $Res Function(_CurrencySales) _then;

  /// Create a copy of CurrencySales
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? multiplier = freezed,
    Object? bannerUrl = freezed,
    Object? dateStart = freezed,
    Object? dateEnd = freezed,
    Object? remainingTimeSeconds = freezed,
  }) {
    return _then(_CurrencySales(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      multiplier: freezed == multiplier
          ? _self.multiplier
          : multiplier // ignore: cast_nullable_to_non_nullable
              as double?,
      bannerUrl: freezed == bannerUrl
          ? _self.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      dateStart: freezed == dateStart
          ? _self.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateEnd: freezed == dateEnd
          ? _self.dateEnd
          : dateEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      remainingTimeSeconds: freezed == remainingTimeSeconds
          ? _self.remainingTimeSeconds
          : remainingTimeSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
