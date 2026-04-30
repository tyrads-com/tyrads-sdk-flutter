// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'limited_time_offer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AcmoActiveOffersModel {
  List<AcmoActiveOffers> get data;
  String get message;

  /// Create a copy of AcmoActiveOffersModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AcmoActiveOffersModelCopyWith<AcmoActiveOffersModel> get copyWith =>
      _$AcmoActiveOffersModelCopyWithImpl<AcmoActiveOffersModel>(
          this as AcmoActiveOffersModel, _$identity);

  /// Serializes this AcmoActiveOffersModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AcmoActiveOffersModel &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), message);

  @override
  String toString() {
    return 'AcmoActiveOffersModel(data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class $AcmoActiveOffersModelCopyWith<$Res> {
  factory $AcmoActiveOffersModelCopyWith(AcmoActiveOffersModel value,
          $Res Function(AcmoActiveOffersModel) _then) =
      _$AcmoActiveOffersModelCopyWithImpl;
  @useResult
  $Res call({List<AcmoActiveOffers> data, String message});
}

/// @nodoc
class _$AcmoActiveOffersModelCopyWithImpl<$Res>
    implements $AcmoActiveOffersModelCopyWith<$Res> {
  _$AcmoActiveOffersModelCopyWithImpl(this._self, this._then);

  final AcmoActiveOffersModel _self;
  final $Res Function(AcmoActiveOffersModel) _then;

  /// Create a copy of AcmoActiveOffersModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AcmoActiveOffers>,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [AcmoActiveOffersModel].
extension AcmoActiveOffersModelPatterns on AcmoActiveOffersModel {
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
    TResult Function(_AcmoActiveOffersModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AcmoActiveOffersModel() when $default != null:
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
    TResult Function(_AcmoActiveOffersModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoActiveOffersModel():
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
    TResult? Function(_AcmoActiveOffersModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoActiveOffersModel() when $default != null:
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
    TResult Function(List<AcmoActiveOffers> data, String message)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AcmoActiveOffersModel() when $default != null:
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
    TResult Function(List<AcmoActiveOffers> data, String message) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoActiveOffersModel():
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
    TResult? Function(List<AcmoActiveOffers> data, String message)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoActiveOffersModel() when $default != null:
        return $default(_that.data, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AcmoActiveOffersModel implements AcmoActiveOffersModel {
  const _AcmoActiveOffersModel(
      {final List<AcmoActiveOffers> data = const [], this.message = ''})
      : _data = data;
  factory _AcmoActiveOffersModel.fromJson(Map<String, dynamic> json) =>
      _$AcmoActiveOffersModelFromJson(json);

  final List<AcmoActiveOffers> _data;
  @override
  @JsonKey()
  List<AcmoActiveOffers> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final String message;

  /// Create a copy of AcmoActiveOffersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AcmoActiveOffersModelCopyWith<_AcmoActiveOffersModel> get copyWith =>
      __$AcmoActiveOffersModelCopyWithImpl<_AcmoActiveOffersModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AcmoActiveOffersModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AcmoActiveOffersModel &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), message);

  @override
  String toString() {
    return 'AcmoActiveOffersModel(data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$AcmoActiveOffersModelCopyWith<$Res>
    implements $AcmoActiveOffersModelCopyWith<$Res> {
  factory _$AcmoActiveOffersModelCopyWith(_AcmoActiveOffersModel value,
          $Res Function(_AcmoActiveOffersModel) _then) =
      __$AcmoActiveOffersModelCopyWithImpl;
  @override
  @useResult
  $Res call({List<AcmoActiveOffers> data, String message});
}

/// @nodoc
class __$AcmoActiveOffersModelCopyWithImpl<$Res>
    implements _$AcmoActiveOffersModelCopyWith<$Res> {
  __$AcmoActiveOffersModelCopyWithImpl(this._self, this._then);

  final _AcmoActiveOffersModel _self;
  final $Res Function(_AcmoActiveOffersModel) _then;

  /// Create a copy of AcmoActiveOffersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_AcmoActiveOffersModel(
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AcmoActiveOffers>,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$AcmoActiveOffers {
  String get groupName;
  Map<String, AcmoCurrency> get availableCurrencies;
  List<ActiveCampaign> get campaigns;

  /// Create a copy of AcmoActiveOffers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AcmoActiveOffersCopyWith<AcmoActiveOffers> get copyWith =>
      _$AcmoActiveOffersCopyWithImpl<AcmoActiveOffers>(
          this as AcmoActiveOffers, _$identity);

  /// Serializes this AcmoActiveOffers to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AcmoActiveOffers &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            const DeepCollectionEquality()
                .equals(other.availableCurrencies, availableCurrencies) &&
            const DeepCollectionEquality().equals(other.campaigns, campaigns));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      groupName,
      const DeepCollectionEquality().hash(availableCurrencies),
      const DeepCollectionEquality().hash(campaigns));

  @override
  String toString() {
    return 'AcmoActiveOffers(groupName: $groupName, availableCurrencies: $availableCurrencies, campaigns: $campaigns)';
  }
}

/// @nodoc
abstract mixin class $AcmoActiveOffersCopyWith<$Res> {
  factory $AcmoActiveOffersCopyWith(
          AcmoActiveOffers value, $Res Function(AcmoActiveOffers) _then) =
      _$AcmoActiveOffersCopyWithImpl;
  @useResult
  $Res call(
      {String groupName,
      Map<String, AcmoCurrency> availableCurrencies,
      List<ActiveCampaign> campaigns});
}

/// @nodoc
class _$AcmoActiveOffersCopyWithImpl<$Res>
    implements $AcmoActiveOffersCopyWith<$Res> {
  _$AcmoActiveOffersCopyWithImpl(this._self, this._then);

  final AcmoActiveOffers _self;
  final $Res Function(AcmoActiveOffers) _then;

  /// Create a copy of AcmoActiveOffers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupName = null,
    Object? availableCurrencies = null,
    Object? campaigns = null,
  }) {
    return _then(_self.copyWith(
      groupName: null == groupName
          ? _self.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      availableCurrencies: null == availableCurrencies
          ? _self.availableCurrencies
          : availableCurrencies // ignore: cast_nullable_to_non_nullable
              as Map<String, AcmoCurrency>,
      campaigns: null == campaigns
          ? _self.campaigns
          : campaigns // ignore: cast_nullable_to_non_nullable
              as List<ActiveCampaign>,
    ));
  }
}

/// Adds pattern-matching-related methods to [AcmoActiveOffers].
extension AcmoActiveOffersPatterns on AcmoActiveOffers {
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
    TResult Function(_AcmoActiveOffers value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AcmoActiveOffers() when $default != null:
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
    TResult Function(_AcmoActiveOffers value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoActiveOffers():
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
    TResult? Function(_AcmoActiveOffers value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoActiveOffers() when $default != null:
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
            String groupName,
            Map<String, AcmoCurrency> availableCurrencies,
            List<ActiveCampaign> campaigns)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AcmoActiveOffers() when $default != null:
        return $default(
            _that.groupName, _that.availableCurrencies, _that.campaigns);
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
            String groupName,
            Map<String, AcmoCurrency> availableCurrencies,
            List<ActiveCampaign> campaigns)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoActiveOffers():
        return $default(
            _that.groupName, _that.availableCurrencies, _that.campaigns);
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
            String groupName,
            Map<String, AcmoCurrency> availableCurrencies,
            List<ActiveCampaign> campaigns)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoActiveOffers() when $default != null:
        return $default(
            _that.groupName, _that.availableCurrencies, _that.campaigns);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AcmoActiveOffers implements AcmoActiveOffers {
  const _AcmoActiveOffers(
      {this.groupName = '',
      final Map<String, AcmoCurrency> availableCurrencies = const {},
      final List<ActiveCampaign> campaigns = const []})
      : _availableCurrencies = availableCurrencies,
        _campaigns = campaigns;
  factory _AcmoActiveOffers.fromJson(Map<String, dynamic> json) =>
      _$AcmoActiveOffersFromJson(json);

  @override
  @JsonKey()
  final String groupName;
  final Map<String, AcmoCurrency> _availableCurrencies;
  @override
  @JsonKey()
  Map<String, AcmoCurrency> get availableCurrencies {
    if (_availableCurrencies is EqualUnmodifiableMapView)
      return _availableCurrencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_availableCurrencies);
  }

  final List<ActiveCampaign> _campaigns;
  @override
  @JsonKey()
  List<ActiveCampaign> get campaigns {
    if (_campaigns is EqualUnmodifiableListView) return _campaigns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_campaigns);
  }

  /// Create a copy of AcmoActiveOffers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AcmoActiveOffersCopyWith<_AcmoActiveOffers> get copyWith =>
      __$AcmoActiveOffersCopyWithImpl<_AcmoActiveOffers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AcmoActiveOffersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AcmoActiveOffers &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            const DeepCollectionEquality()
                .equals(other._availableCurrencies, _availableCurrencies) &&
            const DeepCollectionEquality()
                .equals(other._campaigns, _campaigns));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      groupName,
      const DeepCollectionEquality().hash(_availableCurrencies),
      const DeepCollectionEquality().hash(_campaigns));

  @override
  String toString() {
    return 'AcmoActiveOffers(groupName: $groupName, availableCurrencies: $availableCurrencies, campaigns: $campaigns)';
  }
}

/// @nodoc
abstract mixin class _$AcmoActiveOffersCopyWith<$Res>
    implements $AcmoActiveOffersCopyWith<$Res> {
  factory _$AcmoActiveOffersCopyWith(
          _AcmoActiveOffers value, $Res Function(_AcmoActiveOffers) _then) =
      __$AcmoActiveOffersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String groupName,
      Map<String, AcmoCurrency> availableCurrencies,
      List<ActiveCampaign> campaigns});
}

/// @nodoc
class __$AcmoActiveOffersCopyWithImpl<$Res>
    implements _$AcmoActiveOffersCopyWith<$Res> {
  __$AcmoActiveOffersCopyWithImpl(this._self, this._then);

  final _AcmoActiveOffers _self;
  final $Res Function(_AcmoActiveOffers) _then;

  /// Create a copy of AcmoActiveOffers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? groupName = null,
    Object? availableCurrencies = null,
    Object? campaigns = null,
  }) {
    return _then(_AcmoActiveOffers(
      groupName: null == groupName
          ? _self.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      availableCurrencies: null == availableCurrencies
          ? _self._availableCurrencies
          : availableCurrencies // ignore: cast_nullable_to_non_nullable
              as Map<String, AcmoCurrency>,
      campaigns: null == campaigns
          ? _self._campaigns
          : campaigns // ignore: cast_nullable_to_non_nullable
              as List<ActiveCampaign>,
    ));
  }
}

/// @nodoc
mixin _$AcmoCurrency {
  int get currencyId;
  String get currencyIcon;
  String get currencyName;

  /// Create a copy of AcmoCurrency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AcmoCurrencyCopyWith<AcmoCurrency> get copyWith =>
      _$AcmoCurrencyCopyWithImpl<AcmoCurrency>(
          this as AcmoCurrency, _$identity);

  /// Serializes this AcmoCurrency to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AcmoCurrency &&
            (identical(other.currencyId, currencyId) ||
                other.currencyId == currencyId) &&
            (identical(other.currencyIcon, currencyIcon) ||
                other.currencyIcon == currencyIcon) &&
            (identical(other.currencyName, currencyName) ||
                other.currencyName == currencyName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currencyId, currencyIcon, currencyName);

  @override
  String toString() {
    return 'AcmoCurrency(currencyId: $currencyId, currencyIcon: $currencyIcon, currencyName: $currencyName)';
  }
}

/// @nodoc
abstract mixin class $AcmoCurrencyCopyWith<$Res> {
  factory $AcmoCurrencyCopyWith(
          AcmoCurrency value, $Res Function(AcmoCurrency) _then) =
      _$AcmoCurrencyCopyWithImpl;
  @useResult
  $Res call({int currencyId, String currencyIcon, String currencyName});
}

/// @nodoc
class _$AcmoCurrencyCopyWithImpl<$Res> implements $AcmoCurrencyCopyWith<$Res> {
  _$AcmoCurrencyCopyWithImpl(this._self, this._then);

  final AcmoCurrency _self;
  final $Res Function(AcmoCurrency) _then;

  /// Create a copy of AcmoCurrency
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyId = null,
    Object? currencyIcon = null,
    Object? currencyName = null,
  }) {
    return _then(_self.copyWith(
      currencyId: null == currencyId
          ? _self.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as int,
      currencyIcon: null == currencyIcon
          ? _self.currencyIcon
          : currencyIcon // ignore: cast_nullable_to_non_nullable
              as String,
      currencyName: null == currencyName
          ? _self.currencyName
          : currencyName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [AcmoCurrency].
extension AcmoCurrencyPatterns on AcmoCurrency {
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
    TResult Function(_AcmoCurrency value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AcmoCurrency() when $default != null:
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
    TResult Function(_AcmoCurrency value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoCurrency():
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
    TResult? Function(_AcmoCurrency value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoCurrency() when $default != null:
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
    TResult Function(int currencyId, String currencyIcon, String currencyName)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AcmoCurrency() when $default != null:
        return $default(
            _that.currencyId, _that.currencyIcon, _that.currencyName);
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
    TResult Function(int currencyId, String currencyIcon, String currencyName)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoCurrency():
        return $default(
            _that.currencyId, _that.currencyIcon, _that.currencyName);
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
    TResult? Function(int currencyId, String currencyIcon, String currencyName)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoCurrency() when $default != null:
        return $default(
            _that.currencyId, _that.currencyIcon, _that.currencyName);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AcmoCurrency implements AcmoCurrency {
  const _AcmoCurrency(
      {this.currencyId = 0, this.currencyIcon = '', this.currencyName = ''});
  factory _AcmoCurrency.fromJson(Map<String, dynamic> json) =>
      _$AcmoCurrencyFromJson(json);

  @override
  @JsonKey()
  final int currencyId;
  @override
  @JsonKey()
  final String currencyIcon;
  @override
  @JsonKey()
  final String currencyName;

  /// Create a copy of AcmoCurrency
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AcmoCurrencyCopyWith<_AcmoCurrency> get copyWith =>
      __$AcmoCurrencyCopyWithImpl<_AcmoCurrency>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AcmoCurrencyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AcmoCurrency &&
            (identical(other.currencyId, currencyId) ||
                other.currencyId == currencyId) &&
            (identical(other.currencyIcon, currencyIcon) ||
                other.currencyIcon == currencyIcon) &&
            (identical(other.currencyName, currencyName) ||
                other.currencyName == currencyName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currencyId, currencyIcon, currencyName);

  @override
  String toString() {
    return 'AcmoCurrency(currencyId: $currencyId, currencyIcon: $currencyIcon, currencyName: $currencyName)';
  }
}

/// @nodoc
abstract mixin class _$AcmoCurrencyCopyWith<$Res>
    implements $AcmoCurrencyCopyWith<$Res> {
  factory _$AcmoCurrencyCopyWith(
          _AcmoCurrency value, $Res Function(_AcmoCurrency) _then) =
      __$AcmoCurrencyCopyWithImpl;
  @override
  @useResult
  $Res call({int currencyId, String currencyIcon, String currencyName});
}

/// @nodoc
class __$AcmoCurrencyCopyWithImpl<$Res>
    implements _$AcmoCurrencyCopyWith<$Res> {
  __$AcmoCurrencyCopyWithImpl(this._self, this._then);

  final _AcmoCurrency _self;
  final $Res Function(_AcmoCurrency) _then;

  /// Create a copy of AcmoCurrency
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currencyId = null,
    Object? currencyIcon = null,
    Object? currencyName = null,
  }) {
    return _then(_AcmoCurrency(
      currencyId: null == currencyId
          ? _self.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as int,
      currencyIcon: null == currencyIcon
          ? _self.currencyIcon
          : currencyIcon // ignore: cast_nullable_to_non_nullable
              as String,
      currencyName: null == currencyName
          ? _self.currencyName
          : currencyName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$ActiveApp {
  int get id;
  String get title;
  String get packageName;
  double get rating;
  String get shortDescription;
  String get store;
  String get storeCategory;
  String get previewUrl;
  String get thumbnail;
  double get confidenceScore;
  String get securityLabel;

  /// Create a copy of ActiveApp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ActiveAppCopyWith<ActiveApp> get copyWith =>
      _$ActiveAppCopyWithImpl<ActiveApp>(this as ActiveApp, _$identity);

  /// Serializes this ActiveApp to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ActiveApp &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.store, store) || other.store == store) &&
            (identical(other.storeCategory, storeCategory) ||
                other.storeCategory == storeCategory) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.confidenceScore, confidenceScore) ||
                other.confidenceScore == confidenceScore) &&
            (identical(other.securityLabel, securityLabel) ||
                other.securityLabel == securityLabel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      packageName,
      rating,
      shortDescription,
      store,
      storeCategory,
      previewUrl,
      thumbnail,
      confidenceScore,
      securityLabel);

  @override
  String toString() {
    return 'ActiveApp(id: $id, title: $title, packageName: $packageName, rating: $rating, shortDescription: $shortDescription, store: $store, storeCategory: $storeCategory, previewUrl: $previewUrl, thumbnail: $thumbnail, confidenceScore: $confidenceScore, securityLabel: $securityLabel)';
  }
}

/// @nodoc
abstract mixin class $ActiveAppCopyWith<$Res> {
  factory $ActiveAppCopyWith(ActiveApp value, $Res Function(ActiveApp) _then) =
      _$ActiveAppCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String title,
      String packageName,
      double rating,
      String shortDescription,
      String store,
      String storeCategory,
      String previewUrl,
      String thumbnail,
      double confidenceScore,
      String securityLabel});
}

/// @nodoc
class _$ActiveAppCopyWithImpl<$Res> implements $ActiveAppCopyWith<$Res> {
  _$ActiveAppCopyWithImpl(this._self, this._then);

  final ActiveApp _self;
  final $Res Function(ActiveApp) _then;

  /// Create a copy of ActiveApp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? packageName = null,
    Object? rating = null,
    Object? shortDescription = null,
    Object? store = null,
    Object? storeCategory = null,
    Object? previewUrl = null,
    Object? thumbnail = null,
    Object? confidenceScore = null,
    Object? securityLabel = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: null == packageName
          ? _self.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      shortDescription: null == shortDescription
          ? _self.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      store: null == store
          ? _self.store
          : store // ignore: cast_nullable_to_non_nullable
              as String,
      storeCategory: null == storeCategory
          ? _self.storeCategory
          : storeCategory // ignore: cast_nullable_to_non_nullable
              as String,
      previewUrl: null == previewUrl
          ? _self.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _self.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      confidenceScore: null == confidenceScore
          ? _self.confidenceScore
          : confidenceScore // ignore: cast_nullable_to_non_nullable
              as double,
      securityLabel: null == securityLabel
          ? _self.securityLabel
          : securityLabel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ActiveApp].
extension ActiveAppPatterns on ActiveApp {
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
    TResult Function(_ActiveApp value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ActiveApp() when $default != null:
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
    TResult Function(_ActiveApp value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ActiveApp():
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
    TResult? Function(_ActiveApp value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ActiveApp() when $default != null:
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
            int id,
            String title,
            String packageName,
            double rating,
            String shortDescription,
            String store,
            String storeCategory,
            String previewUrl,
            String thumbnail,
            double confidenceScore,
            String securityLabel)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ActiveApp() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.packageName,
            _that.rating,
            _that.shortDescription,
            _that.store,
            _that.storeCategory,
            _that.previewUrl,
            _that.thumbnail,
            _that.confidenceScore,
            _that.securityLabel);
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
            int id,
            String title,
            String packageName,
            double rating,
            String shortDescription,
            String store,
            String storeCategory,
            String previewUrl,
            String thumbnail,
            double confidenceScore,
            String securityLabel)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ActiveApp():
        return $default(
            _that.id,
            _that.title,
            _that.packageName,
            _that.rating,
            _that.shortDescription,
            _that.store,
            _that.storeCategory,
            _that.previewUrl,
            _that.thumbnail,
            _that.confidenceScore,
            _that.securityLabel);
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
            int id,
            String title,
            String packageName,
            double rating,
            String shortDescription,
            String store,
            String storeCategory,
            String previewUrl,
            String thumbnail,
            double confidenceScore,
            String securityLabel)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ActiveApp() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.packageName,
            _that.rating,
            _that.shortDescription,
            _that.store,
            _that.storeCategory,
            _that.previewUrl,
            _that.thumbnail,
            _that.confidenceScore,
            _that.securityLabel);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ActiveApp implements ActiveApp {
  const _ActiveApp(
      {this.id = 0,
      this.title = '',
      this.packageName = '',
      this.rating = 0.0,
      this.shortDescription = '',
      this.store = '',
      this.storeCategory = '',
      this.previewUrl = '',
      this.thumbnail = '',
      this.confidenceScore = 0.0,
      this.securityLabel = ''});
  factory _ActiveApp.fromJson(Map<String, dynamic> json) =>
      _$ActiveAppFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String packageName;
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final String shortDescription;
  @override
  @JsonKey()
  final String store;
  @override
  @JsonKey()
  final String storeCategory;
  @override
  @JsonKey()
  final String previewUrl;
  @override
  @JsonKey()
  final String thumbnail;
  @override
  @JsonKey()
  final double confidenceScore;
  @override
  @JsonKey()
  final String securityLabel;

  /// Create a copy of ActiveApp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ActiveAppCopyWith<_ActiveApp> get copyWith =>
      __$ActiveAppCopyWithImpl<_ActiveApp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ActiveAppToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActiveApp &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.store, store) || other.store == store) &&
            (identical(other.storeCategory, storeCategory) ||
                other.storeCategory == storeCategory) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.confidenceScore, confidenceScore) ||
                other.confidenceScore == confidenceScore) &&
            (identical(other.securityLabel, securityLabel) ||
                other.securityLabel == securityLabel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      packageName,
      rating,
      shortDescription,
      store,
      storeCategory,
      previewUrl,
      thumbnail,
      confidenceScore,
      securityLabel);

  @override
  String toString() {
    return 'ActiveApp(id: $id, title: $title, packageName: $packageName, rating: $rating, shortDescription: $shortDescription, store: $store, storeCategory: $storeCategory, previewUrl: $previewUrl, thumbnail: $thumbnail, confidenceScore: $confidenceScore, securityLabel: $securityLabel)';
  }
}

/// @nodoc
abstract mixin class _$ActiveAppCopyWith<$Res>
    implements $ActiveAppCopyWith<$Res> {
  factory _$ActiveAppCopyWith(
          _ActiveApp value, $Res Function(_ActiveApp) _then) =
      __$ActiveAppCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String packageName,
      double rating,
      String shortDescription,
      String store,
      String storeCategory,
      String previewUrl,
      String thumbnail,
      double confidenceScore,
      String securityLabel});
}

/// @nodoc
class __$ActiveAppCopyWithImpl<$Res> implements _$ActiveAppCopyWith<$Res> {
  __$ActiveAppCopyWithImpl(this._self, this._then);

  final _ActiveApp _self;
  final $Res Function(_ActiveApp) _then;

  /// Create a copy of ActiveApp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? packageName = null,
    Object? rating = null,
    Object? shortDescription = null,
    Object? store = null,
    Object? storeCategory = null,
    Object? previewUrl = null,
    Object? thumbnail = null,
    Object? confidenceScore = null,
    Object? securityLabel = null,
  }) {
    return _then(_ActiveApp(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: null == packageName
          ? _self.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      shortDescription: null == shortDescription
          ? _self.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      store: null == store
          ? _self.store
          : store // ignore: cast_nullable_to_non_nullable
              as String,
      storeCategory: null == storeCategory
          ? _self.storeCategory
          : storeCategory // ignore: cast_nullable_to_non_nullable
              as String,
      previewUrl: null == previewUrl
          ? _self.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _self.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      confidenceScore: null == confidenceScore
          ? _self.confidenceScore
          : confidenceScore // ignore: cast_nullable_to_non_nullable
              as double,
      securityLabel: null == securityLabel
          ? _self.securityLabel
          : securityLabel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$CampaignEventSummary {
  int get playableEventCountAvailable;
  int get playableEventCountCompleted;
  int get playableEventCountTotal;
  int get microchargeEventCountAvailable;
  int get microchargeEventCountCompleted;
  int get microchargeEventCountTotal;

  /// Create a copy of CampaignEventSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CampaignEventSummaryCopyWith<CampaignEventSummary> get copyWith =>
      _$CampaignEventSummaryCopyWithImpl<CampaignEventSummary>(
          this as CampaignEventSummary, _$identity);

  /// Serializes this CampaignEventSummary to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CampaignEventSummary &&
            (identical(other.playableEventCountAvailable,
                    playableEventCountAvailable) ||
                other.playableEventCountAvailable ==
                    playableEventCountAvailable) &&
            (identical(other.playableEventCountCompleted,
                    playableEventCountCompleted) ||
                other.playableEventCountCompleted ==
                    playableEventCountCompleted) &&
            (identical(
                    other.playableEventCountTotal, playableEventCountTotal) ||
                other.playableEventCountTotal == playableEventCountTotal) &&
            (identical(other.microchargeEventCountAvailable,
                    microchargeEventCountAvailable) ||
                other.microchargeEventCountAvailable ==
                    microchargeEventCountAvailable) &&
            (identical(other.microchargeEventCountCompleted,
                    microchargeEventCountCompleted) ||
                other.microchargeEventCountCompleted ==
                    microchargeEventCountCompleted) &&
            (identical(other.microchargeEventCountTotal,
                    microchargeEventCountTotal) ||
                other.microchargeEventCountTotal ==
                    microchargeEventCountTotal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      playableEventCountAvailable,
      playableEventCountCompleted,
      playableEventCountTotal,
      microchargeEventCountAvailable,
      microchargeEventCountCompleted,
      microchargeEventCountTotal);

  @override
  String toString() {
    return 'CampaignEventSummary(playableEventCountAvailable: $playableEventCountAvailable, playableEventCountCompleted: $playableEventCountCompleted, playableEventCountTotal: $playableEventCountTotal, microchargeEventCountAvailable: $microchargeEventCountAvailable, microchargeEventCountCompleted: $microchargeEventCountCompleted, microchargeEventCountTotal: $microchargeEventCountTotal)';
  }
}

/// @nodoc
abstract mixin class $CampaignEventSummaryCopyWith<$Res> {
  factory $CampaignEventSummaryCopyWith(CampaignEventSummary value,
          $Res Function(CampaignEventSummary) _then) =
      _$CampaignEventSummaryCopyWithImpl;
  @useResult
  $Res call(
      {int playableEventCountAvailable,
      int playableEventCountCompleted,
      int playableEventCountTotal,
      int microchargeEventCountAvailable,
      int microchargeEventCountCompleted,
      int microchargeEventCountTotal});
}

/// @nodoc
class _$CampaignEventSummaryCopyWithImpl<$Res>
    implements $CampaignEventSummaryCopyWith<$Res> {
  _$CampaignEventSummaryCopyWithImpl(this._self, this._then);

  final CampaignEventSummary _self;
  final $Res Function(CampaignEventSummary) _then;

  /// Create a copy of CampaignEventSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playableEventCountAvailable = null,
    Object? playableEventCountCompleted = null,
    Object? playableEventCountTotal = null,
    Object? microchargeEventCountAvailable = null,
    Object? microchargeEventCountCompleted = null,
    Object? microchargeEventCountTotal = null,
  }) {
    return _then(_self.copyWith(
      playableEventCountAvailable: null == playableEventCountAvailable
          ? _self.playableEventCountAvailable
          : playableEventCountAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      playableEventCountCompleted: null == playableEventCountCompleted
          ? _self.playableEventCountCompleted
          : playableEventCountCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      playableEventCountTotal: null == playableEventCountTotal
          ? _self.playableEventCountTotal
          : playableEventCountTotal // ignore: cast_nullable_to_non_nullable
              as int,
      microchargeEventCountAvailable: null == microchargeEventCountAvailable
          ? _self.microchargeEventCountAvailable
          : microchargeEventCountAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      microchargeEventCountCompleted: null == microchargeEventCountCompleted
          ? _self.microchargeEventCountCompleted
          : microchargeEventCountCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      microchargeEventCountTotal: null == microchargeEventCountTotal
          ? _self.microchargeEventCountTotal
          : microchargeEventCountTotal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [CampaignEventSummary].
extension CampaignEventSummaryPatterns on CampaignEventSummary {
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
    TResult Function(_CampaignEventSummary value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CampaignEventSummary() when $default != null:
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
    TResult Function(_CampaignEventSummary value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CampaignEventSummary():
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
    TResult? Function(_CampaignEventSummary value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CampaignEventSummary() when $default != null:
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
            int playableEventCountAvailable,
            int playableEventCountCompleted,
            int playableEventCountTotal,
            int microchargeEventCountAvailable,
            int microchargeEventCountCompleted,
            int microchargeEventCountTotal)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CampaignEventSummary() when $default != null:
        return $default(
            _that.playableEventCountAvailable,
            _that.playableEventCountCompleted,
            _that.playableEventCountTotal,
            _that.microchargeEventCountAvailable,
            _that.microchargeEventCountCompleted,
            _that.microchargeEventCountTotal);
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
            int playableEventCountAvailable,
            int playableEventCountCompleted,
            int playableEventCountTotal,
            int microchargeEventCountAvailable,
            int microchargeEventCountCompleted,
            int microchargeEventCountTotal)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CampaignEventSummary():
        return $default(
            _that.playableEventCountAvailable,
            _that.playableEventCountCompleted,
            _that.playableEventCountTotal,
            _that.microchargeEventCountAvailable,
            _that.microchargeEventCountCompleted,
            _that.microchargeEventCountTotal);
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
            int playableEventCountAvailable,
            int playableEventCountCompleted,
            int playableEventCountTotal,
            int microchargeEventCountAvailable,
            int microchargeEventCountCompleted,
            int microchargeEventCountTotal)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CampaignEventSummary() when $default != null:
        return $default(
            _that.playableEventCountAvailable,
            _that.playableEventCountCompleted,
            _that.playableEventCountTotal,
            _that.microchargeEventCountAvailable,
            _that.microchargeEventCountCompleted,
            _that.microchargeEventCountTotal);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CampaignEventSummary implements CampaignEventSummary {
  const _CampaignEventSummary(
      {this.playableEventCountAvailable = 0,
      this.playableEventCountCompleted = 0,
      this.playableEventCountTotal = 0,
      this.microchargeEventCountAvailable = 0,
      this.microchargeEventCountCompleted = 0,
      this.microchargeEventCountTotal = 0});
  factory _CampaignEventSummary.fromJson(Map<String, dynamic> json) =>
      _$CampaignEventSummaryFromJson(json);

  @override
  @JsonKey()
  final int playableEventCountAvailable;
  @override
  @JsonKey()
  final int playableEventCountCompleted;
  @override
  @JsonKey()
  final int playableEventCountTotal;
  @override
  @JsonKey()
  final int microchargeEventCountAvailable;
  @override
  @JsonKey()
  final int microchargeEventCountCompleted;
  @override
  @JsonKey()
  final int microchargeEventCountTotal;

  /// Create a copy of CampaignEventSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CampaignEventSummaryCopyWith<_CampaignEventSummary> get copyWith =>
      __$CampaignEventSummaryCopyWithImpl<_CampaignEventSummary>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CampaignEventSummaryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CampaignEventSummary &&
            (identical(other.playableEventCountAvailable,
                    playableEventCountAvailable) ||
                other.playableEventCountAvailable ==
                    playableEventCountAvailable) &&
            (identical(other.playableEventCountCompleted,
                    playableEventCountCompleted) ||
                other.playableEventCountCompleted ==
                    playableEventCountCompleted) &&
            (identical(
                    other.playableEventCountTotal, playableEventCountTotal) ||
                other.playableEventCountTotal == playableEventCountTotal) &&
            (identical(other.microchargeEventCountAvailable,
                    microchargeEventCountAvailable) ||
                other.microchargeEventCountAvailable ==
                    microchargeEventCountAvailable) &&
            (identical(other.microchargeEventCountCompleted,
                    microchargeEventCountCompleted) ||
                other.microchargeEventCountCompleted ==
                    microchargeEventCountCompleted) &&
            (identical(other.microchargeEventCountTotal,
                    microchargeEventCountTotal) ||
                other.microchargeEventCountTotal ==
                    microchargeEventCountTotal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      playableEventCountAvailable,
      playableEventCountCompleted,
      playableEventCountTotal,
      microchargeEventCountAvailable,
      microchargeEventCountCompleted,
      microchargeEventCountTotal);

  @override
  String toString() {
    return 'CampaignEventSummary(playableEventCountAvailable: $playableEventCountAvailable, playableEventCountCompleted: $playableEventCountCompleted, playableEventCountTotal: $playableEventCountTotal, microchargeEventCountAvailable: $microchargeEventCountAvailable, microchargeEventCountCompleted: $microchargeEventCountCompleted, microchargeEventCountTotal: $microchargeEventCountTotal)';
  }
}

/// @nodoc
abstract mixin class _$CampaignEventSummaryCopyWith<$Res>
    implements $CampaignEventSummaryCopyWith<$Res> {
  factory _$CampaignEventSummaryCopyWith(_CampaignEventSummary value,
          $Res Function(_CampaignEventSummary) _then) =
      __$CampaignEventSummaryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int playableEventCountAvailable,
      int playableEventCountCompleted,
      int playableEventCountTotal,
      int microchargeEventCountAvailable,
      int microchargeEventCountCompleted,
      int microchargeEventCountTotal});
}

/// @nodoc
class __$CampaignEventSummaryCopyWithImpl<$Res>
    implements _$CampaignEventSummaryCopyWith<$Res> {
  __$CampaignEventSummaryCopyWithImpl(this._self, this._then);

  final _CampaignEventSummary _self;
  final $Res Function(_CampaignEventSummary) _then;

  /// Create a copy of CampaignEventSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? playableEventCountAvailable = null,
    Object? playableEventCountCompleted = null,
    Object? playableEventCountTotal = null,
    Object? microchargeEventCountAvailable = null,
    Object? microchargeEventCountCompleted = null,
    Object? microchargeEventCountTotal = null,
  }) {
    return _then(_CampaignEventSummary(
      playableEventCountAvailable: null == playableEventCountAvailable
          ? _self.playableEventCountAvailable
          : playableEventCountAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      playableEventCountCompleted: null == playableEventCountCompleted
          ? _self.playableEventCountCompleted
          : playableEventCountCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      playableEventCountTotal: null == playableEventCountTotal
          ? _self.playableEventCountTotal
          : playableEventCountTotal // ignore: cast_nullable_to_non_nullable
              as int,
      microchargeEventCountAvailable: null == microchargeEventCountAvailable
          ? _self.microchargeEventCountAvailable
          : microchargeEventCountAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      microchargeEventCountCompleted: null == microchargeEventCountCompleted
          ? _self.microchargeEventCountCompleted
          : microchargeEventCountCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      microchargeEventCountTotal: null == microchargeEventCountTotal
          ? _self.microchargeEventCountTotal
          : microchargeEventCountTotal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$CampaignValidity {
  bool get isRetryDownload;
  bool get isActivated;
  bool get isOldUser;
  int get activeCurrencyId;
  DateTime? get expiredOn;
  double? get expiredInSeconds;
  bool get isInstalled;
  bool get capReached;

  /// Create a copy of CampaignValidity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CampaignValidityCopyWith<CampaignValidity> get copyWith =>
      _$CampaignValidityCopyWithImpl<CampaignValidity>(
          this as CampaignValidity, _$identity);

  /// Serializes this CampaignValidity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CampaignValidity &&
            (identical(other.isRetryDownload, isRetryDownload) ||
                other.isRetryDownload == isRetryDownload) &&
            (identical(other.isActivated, isActivated) ||
                other.isActivated == isActivated) &&
            (identical(other.isOldUser, isOldUser) ||
                other.isOldUser == isOldUser) &&
            (identical(other.activeCurrencyId, activeCurrencyId) ||
                other.activeCurrencyId == activeCurrencyId) &&
            (identical(other.expiredOn, expiredOn) ||
                other.expiredOn == expiredOn) &&
            (identical(other.expiredInSeconds, expiredInSeconds) ||
                other.expiredInSeconds == expiredInSeconds) &&
            (identical(other.isInstalled, isInstalled) ||
                other.isInstalled == isInstalled) &&
            (identical(other.capReached, capReached) ||
                other.capReached == capReached));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isRetryDownload,
      isActivated,
      isOldUser,
      activeCurrencyId,
      expiredOn,
      expiredInSeconds,
      isInstalled,
      capReached);

  @override
  String toString() {
    return 'CampaignValidity(isRetryDownload: $isRetryDownload, isActivated: $isActivated, isOldUser: $isOldUser, activeCurrencyId: $activeCurrencyId, expiredOn: $expiredOn, expiredInSeconds: $expiredInSeconds, isInstalled: $isInstalled, capReached: $capReached)';
  }
}

/// @nodoc
abstract mixin class $CampaignValidityCopyWith<$Res> {
  factory $CampaignValidityCopyWith(
          CampaignValidity value, $Res Function(CampaignValidity) _then) =
      _$CampaignValidityCopyWithImpl;
  @useResult
  $Res call(
      {bool isRetryDownload,
      bool isActivated,
      bool isOldUser,
      int activeCurrencyId,
      DateTime? expiredOn,
      double? expiredInSeconds,
      bool isInstalled,
      bool capReached});
}

/// @nodoc
class _$CampaignValidityCopyWithImpl<$Res>
    implements $CampaignValidityCopyWith<$Res> {
  _$CampaignValidityCopyWithImpl(this._self, this._then);

  final CampaignValidity _self;
  final $Res Function(CampaignValidity) _then;

  /// Create a copy of CampaignValidity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRetryDownload = null,
    Object? isActivated = null,
    Object? isOldUser = null,
    Object? activeCurrencyId = null,
    Object? expiredOn = freezed,
    Object? expiredInSeconds = freezed,
    Object? isInstalled = null,
    Object? capReached = null,
  }) {
    return _then(_self.copyWith(
      isRetryDownload: null == isRetryDownload
          ? _self.isRetryDownload
          : isRetryDownload // ignore: cast_nullable_to_non_nullable
              as bool,
      isActivated: null == isActivated
          ? _self.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      isOldUser: null == isOldUser
          ? _self.isOldUser
          : isOldUser // ignore: cast_nullable_to_non_nullable
              as bool,
      activeCurrencyId: null == activeCurrencyId
          ? _self.activeCurrencyId
          : activeCurrencyId // ignore: cast_nullable_to_non_nullable
              as int,
      expiredOn: freezed == expiredOn
          ? _self.expiredOn
          : expiredOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiredInSeconds: freezed == expiredInSeconds
          ? _self.expiredInSeconds
          : expiredInSeconds // ignore: cast_nullable_to_non_nullable
              as double?,
      isInstalled: null == isInstalled
          ? _self.isInstalled
          : isInstalled // ignore: cast_nullable_to_non_nullable
              as bool,
      capReached: null == capReached
          ? _self.capReached
          : capReached // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [CampaignValidity].
extension CampaignValidityPatterns on CampaignValidity {
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
    TResult Function(_CampaignValidity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CampaignValidity() when $default != null:
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
    TResult Function(_CampaignValidity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CampaignValidity():
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
    TResult? Function(_CampaignValidity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CampaignValidity() when $default != null:
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
            bool isRetryDownload,
            bool isActivated,
            bool isOldUser,
            int activeCurrencyId,
            DateTime? expiredOn,
            double? expiredInSeconds,
            bool isInstalled,
            bool capReached)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CampaignValidity() when $default != null:
        return $default(
            _that.isRetryDownload,
            _that.isActivated,
            _that.isOldUser,
            _that.activeCurrencyId,
            _that.expiredOn,
            _that.expiredInSeconds,
            _that.isInstalled,
            _that.capReached);
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
            bool isRetryDownload,
            bool isActivated,
            bool isOldUser,
            int activeCurrencyId,
            DateTime? expiredOn,
            double? expiredInSeconds,
            bool isInstalled,
            bool capReached)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CampaignValidity():
        return $default(
            _that.isRetryDownload,
            _that.isActivated,
            _that.isOldUser,
            _that.activeCurrencyId,
            _that.expiredOn,
            _that.expiredInSeconds,
            _that.isInstalled,
            _that.capReached);
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
            bool isRetryDownload,
            bool isActivated,
            bool isOldUser,
            int activeCurrencyId,
            DateTime? expiredOn,
            double? expiredInSeconds,
            bool isInstalled,
            bool capReached)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CampaignValidity() when $default != null:
        return $default(
            _that.isRetryDownload,
            _that.isActivated,
            _that.isOldUser,
            _that.activeCurrencyId,
            _that.expiredOn,
            _that.expiredInSeconds,
            _that.isInstalled,
            _that.capReached);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CampaignValidity implements CampaignValidity {
  const _CampaignValidity(
      {this.isRetryDownload = false,
      this.isActivated = false,
      this.isOldUser = false,
      this.activeCurrencyId = 0,
      this.expiredOn,
      this.expiredInSeconds,
      this.isInstalled = false,
      this.capReached = false});
  factory _CampaignValidity.fromJson(Map<String, dynamic> json) =>
      _$CampaignValidityFromJson(json);

  @override
  @JsonKey()
  final bool isRetryDownload;
  @override
  @JsonKey()
  final bool isActivated;
  @override
  @JsonKey()
  final bool isOldUser;
  @override
  @JsonKey()
  final int activeCurrencyId;
  @override
  final DateTime? expiredOn;
  @override
  final double? expiredInSeconds;
  @override
  @JsonKey()
  final bool isInstalled;
  @override
  @JsonKey()
  final bool capReached;

  /// Create a copy of CampaignValidity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CampaignValidityCopyWith<_CampaignValidity> get copyWith =>
      __$CampaignValidityCopyWithImpl<_CampaignValidity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CampaignValidityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CampaignValidity &&
            (identical(other.isRetryDownload, isRetryDownload) ||
                other.isRetryDownload == isRetryDownload) &&
            (identical(other.isActivated, isActivated) ||
                other.isActivated == isActivated) &&
            (identical(other.isOldUser, isOldUser) ||
                other.isOldUser == isOldUser) &&
            (identical(other.activeCurrencyId, activeCurrencyId) ||
                other.activeCurrencyId == activeCurrencyId) &&
            (identical(other.expiredOn, expiredOn) ||
                other.expiredOn == expiredOn) &&
            (identical(other.expiredInSeconds, expiredInSeconds) ||
                other.expiredInSeconds == expiredInSeconds) &&
            (identical(other.isInstalled, isInstalled) ||
                other.isInstalled == isInstalled) &&
            (identical(other.capReached, capReached) ||
                other.capReached == capReached));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isRetryDownload,
      isActivated,
      isOldUser,
      activeCurrencyId,
      expiredOn,
      expiredInSeconds,
      isInstalled,
      capReached);

  @override
  String toString() {
    return 'CampaignValidity(isRetryDownload: $isRetryDownload, isActivated: $isActivated, isOldUser: $isOldUser, activeCurrencyId: $activeCurrencyId, expiredOn: $expiredOn, expiredInSeconds: $expiredInSeconds, isInstalled: $isInstalled, capReached: $capReached)';
  }
}

/// @nodoc
abstract mixin class _$CampaignValidityCopyWith<$Res>
    implements $CampaignValidityCopyWith<$Res> {
  factory _$CampaignValidityCopyWith(
          _CampaignValidity value, $Res Function(_CampaignValidity) _then) =
      __$CampaignValidityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isRetryDownload,
      bool isActivated,
      bool isOldUser,
      int activeCurrencyId,
      DateTime? expiredOn,
      double? expiredInSeconds,
      bool isInstalled,
      bool capReached});
}

/// @nodoc
class __$CampaignValidityCopyWithImpl<$Res>
    implements _$CampaignValidityCopyWith<$Res> {
  __$CampaignValidityCopyWithImpl(this._self, this._then);

  final _CampaignValidity _self;
  final $Res Function(_CampaignValidity) _then;

  /// Create a copy of CampaignValidity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isRetryDownload = null,
    Object? isActivated = null,
    Object? isOldUser = null,
    Object? activeCurrencyId = null,
    Object? expiredOn = freezed,
    Object? expiredInSeconds = freezed,
    Object? isInstalled = null,
    Object? capReached = null,
  }) {
    return _then(_CampaignValidity(
      isRetryDownload: null == isRetryDownload
          ? _self.isRetryDownload
          : isRetryDownload // ignore: cast_nullable_to_non_nullable
              as bool,
      isActivated: null == isActivated
          ? _self.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      isOldUser: null == isOldUser
          ? _self.isOldUser
          : isOldUser // ignore: cast_nullable_to_non_nullable
              as bool,
      activeCurrencyId: null == activeCurrencyId
          ? _self.activeCurrencyId
          : activeCurrencyId // ignore: cast_nullable_to_non_nullable
              as int,
      expiredOn: freezed == expiredOn
          ? _self.expiredOn
          : expiredOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiredInSeconds: freezed == expiredInSeconds
          ? _self.expiredInSeconds
          : expiredInSeconds // ignore: cast_nullable_to_non_nullable
              as double?,
      isInstalled: null == isInstalled
          ? _self.isInstalled
          : isInstalled // ignore: cast_nullable_to_non_nullable
              as bool,
      capReached: null == capReached
          ? _self.capReached
          : capReached // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$ActiveCampaign {
  int get campaignId;
  String get campaignName;
  String get campaignDescription;
  String get campaignType;
  bool get campaignPremium;
  CampaignValidity get validity;
  Map<String, AcmoCurrency> get availableCurrencies;
  ActiveApp get app;
  String get campaignStatus;
  String get group;
  dynamic get stage;
  CampaignEventSummary get eventSummary;
  List<PayoutEvents> get limitedTimeEvents;
  List<dynamic> get shorterMaxTimeEvents;

  /// Create a copy of ActiveCampaign
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ActiveCampaignCopyWith<ActiveCampaign> get copyWith =>
      _$ActiveCampaignCopyWithImpl<ActiveCampaign>(
          this as ActiveCampaign, _$identity);

  /// Serializes this ActiveCampaign to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ActiveCampaign &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId) &&
            (identical(other.campaignName, campaignName) ||
                other.campaignName == campaignName) &&
            (identical(other.campaignDescription, campaignDescription) ||
                other.campaignDescription == campaignDescription) &&
            (identical(other.campaignType, campaignType) ||
                other.campaignType == campaignType) &&
            (identical(other.campaignPremium, campaignPremium) ||
                other.campaignPremium == campaignPremium) &&
            (identical(other.validity, validity) ||
                other.validity == validity) &&
            const DeepCollectionEquality()
                .equals(other.availableCurrencies, availableCurrencies) &&
            (identical(other.app, app) || other.app == app) &&
            (identical(other.campaignStatus, campaignStatus) ||
                other.campaignStatus == campaignStatus) &&
            (identical(other.group, group) || other.group == group) &&
            const DeepCollectionEquality().equals(other.stage, stage) &&
            (identical(other.eventSummary, eventSummary) ||
                other.eventSummary == eventSummary) &&
            const DeepCollectionEquality()
                .equals(other.limitedTimeEvents, limitedTimeEvents) &&
            const DeepCollectionEquality()
                .equals(other.shorterMaxTimeEvents, shorterMaxTimeEvents));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      campaignId,
      campaignName,
      campaignDescription,
      campaignType,
      campaignPremium,
      validity,
      const DeepCollectionEquality().hash(availableCurrencies),
      app,
      campaignStatus,
      group,
      const DeepCollectionEquality().hash(stage),
      eventSummary,
      const DeepCollectionEquality().hash(limitedTimeEvents),
      const DeepCollectionEquality().hash(shorterMaxTimeEvents));

  @override
  String toString() {
    return 'ActiveCampaign(campaignId: $campaignId, campaignName: $campaignName, campaignDescription: $campaignDescription, campaignType: $campaignType, campaignPremium: $campaignPremium, validity: $validity, availableCurrencies: $availableCurrencies, app: $app, campaignStatus: $campaignStatus, group: $group, stage: $stage, eventSummary: $eventSummary, limitedTimeEvents: $limitedTimeEvents, shorterMaxTimeEvents: $shorterMaxTimeEvents)';
  }
}

/// @nodoc
abstract mixin class $ActiveCampaignCopyWith<$Res> {
  factory $ActiveCampaignCopyWith(
          ActiveCampaign value, $Res Function(ActiveCampaign) _then) =
      _$ActiveCampaignCopyWithImpl;
  @useResult
  $Res call(
      {int campaignId,
      String campaignName,
      String campaignDescription,
      String campaignType,
      bool campaignPremium,
      CampaignValidity validity,
      Map<String, AcmoCurrency> availableCurrencies,
      ActiveApp app,
      String campaignStatus,
      String group,
      dynamic stage,
      CampaignEventSummary eventSummary,
      List<PayoutEvents> limitedTimeEvents,
      List<dynamic> shorterMaxTimeEvents});

  $CampaignValidityCopyWith<$Res> get validity;
  $ActiveAppCopyWith<$Res> get app;
  $CampaignEventSummaryCopyWith<$Res> get eventSummary;
}

/// @nodoc
class _$ActiveCampaignCopyWithImpl<$Res>
    implements $ActiveCampaignCopyWith<$Res> {
  _$ActiveCampaignCopyWithImpl(this._self, this._then);

  final ActiveCampaign _self;
  final $Res Function(ActiveCampaign) _then;

  /// Create a copy of ActiveCampaign
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? campaignId = null,
    Object? campaignName = null,
    Object? campaignDescription = null,
    Object? campaignType = null,
    Object? campaignPremium = null,
    Object? validity = null,
    Object? availableCurrencies = null,
    Object? app = null,
    Object? campaignStatus = null,
    Object? group = null,
    Object? stage = freezed,
    Object? eventSummary = null,
    Object? limitedTimeEvents = null,
    Object? shorterMaxTimeEvents = null,
  }) {
    return _then(_self.copyWith(
      campaignId: null == campaignId
          ? _self.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as int,
      campaignName: null == campaignName
          ? _self.campaignName
          : campaignName // ignore: cast_nullable_to_non_nullable
              as String,
      campaignDescription: null == campaignDescription
          ? _self.campaignDescription
          : campaignDescription // ignore: cast_nullable_to_non_nullable
              as String,
      campaignType: null == campaignType
          ? _self.campaignType
          : campaignType // ignore: cast_nullable_to_non_nullable
              as String,
      campaignPremium: null == campaignPremium
          ? _self.campaignPremium
          : campaignPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      validity: null == validity
          ? _self.validity
          : validity // ignore: cast_nullable_to_non_nullable
              as CampaignValidity,
      availableCurrencies: null == availableCurrencies
          ? _self.availableCurrencies
          : availableCurrencies // ignore: cast_nullable_to_non_nullable
              as Map<String, AcmoCurrency>,
      app: null == app
          ? _self.app
          : app // ignore: cast_nullable_to_non_nullable
              as ActiveApp,
      campaignStatus: null == campaignStatus
          ? _self.campaignStatus
          : campaignStatus // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _self.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      stage: freezed == stage
          ? _self.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      eventSummary: null == eventSummary
          ? _self.eventSummary
          : eventSummary // ignore: cast_nullable_to_non_nullable
              as CampaignEventSummary,
      limitedTimeEvents: null == limitedTimeEvents
          ? _self.limitedTimeEvents
          : limitedTimeEvents // ignore: cast_nullable_to_non_nullable
              as List<PayoutEvents>,
      shorterMaxTimeEvents: null == shorterMaxTimeEvents
          ? _self.shorterMaxTimeEvents
          : shorterMaxTimeEvents // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }

  /// Create a copy of ActiveCampaign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CampaignValidityCopyWith<$Res> get validity {
    return $CampaignValidityCopyWith<$Res>(_self.validity, (value) {
      return _then(_self.copyWith(validity: value));
    });
  }

  /// Create a copy of ActiveCampaign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActiveAppCopyWith<$Res> get app {
    return $ActiveAppCopyWith<$Res>(_self.app, (value) {
      return _then(_self.copyWith(app: value));
    });
  }

  /// Create a copy of ActiveCampaign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CampaignEventSummaryCopyWith<$Res> get eventSummary {
    return $CampaignEventSummaryCopyWith<$Res>(_self.eventSummary, (value) {
      return _then(_self.copyWith(eventSummary: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ActiveCampaign].
extension ActiveCampaignPatterns on ActiveCampaign {
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
    TResult Function(_ActiveCampaign value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ActiveCampaign() when $default != null:
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
    TResult Function(_ActiveCampaign value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ActiveCampaign():
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
    TResult? Function(_ActiveCampaign value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ActiveCampaign() when $default != null:
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
            int campaignId,
            String campaignName,
            String campaignDescription,
            String campaignType,
            bool campaignPremium,
            CampaignValidity validity,
            Map<String, AcmoCurrency> availableCurrencies,
            ActiveApp app,
            String campaignStatus,
            String group,
            dynamic stage,
            CampaignEventSummary eventSummary,
            List<PayoutEvents> limitedTimeEvents,
            List<dynamic> shorterMaxTimeEvents)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ActiveCampaign() when $default != null:
        return $default(
            _that.campaignId,
            _that.campaignName,
            _that.campaignDescription,
            _that.campaignType,
            _that.campaignPremium,
            _that.validity,
            _that.availableCurrencies,
            _that.app,
            _that.campaignStatus,
            _that.group,
            _that.stage,
            _that.eventSummary,
            _that.limitedTimeEvents,
            _that.shorterMaxTimeEvents);
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
            int campaignId,
            String campaignName,
            String campaignDescription,
            String campaignType,
            bool campaignPremium,
            CampaignValidity validity,
            Map<String, AcmoCurrency> availableCurrencies,
            ActiveApp app,
            String campaignStatus,
            String group,
            dynamic stage,
            CampaignEventSummary eventSummary,
            List<PayoutEvents> limitedTimeEvents,
            List<dynamic> shorterMaxTimeEvents)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ActiveCampaign():
        return $default(
            _that.campaignId,
            _that.campaignName,
            _that.campaignDescription,
            _that.campaignType,
            _that.campaignPremium,
            _that.validity,
            _that.availableCurrencies,
            _that.app,
            _that.campaignStatus,
            _that.group,
            _that.stage,
            _that.eventSummary,
            _that.limitedTimeEvents,
            _that.shorterMaxTimeEvents);
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
            int campaignId,
            String campaignName,
            String campaignDescription,
            String campaignType,
            bool campaignPremium,
            CampaignValidity validity,
            Map<String, AcmoCurrency> availableCurrencies,
            ActiveApp app,
            String campaignStatus,
            String group,
            dynamic stage,
            CampaignEventSummary eventSummary,
            List<PayoutEvents> limitedTimeEvents,
            List<dynamic> shorterMaxTimeEvents)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ActiveCampaign() when $default != null:
        return $default(
            _that.campaignId,
            _that.campaignName,
            _that.campaignDescription,
            _that.campaignType,
            _that.campaignPremium,
            _that.validity,
            _that.availableCurrencies,
            _that.app,
            _that.campaignStatus,
            _that.group,
            _that.stage,
            _that.eventSummary,
            _that.limitedTimeEvents,
            _that.shorterMaxTimeEvents);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ActiveCampaign implements ActiveCampaign {
  const _ActiveCampaign(
      {this.campaignId = 0,
      this.campaignName = '',
      this.campaignDescription = '',
      this.campaignType = '',
      this.campaignPremium = false,
      this.validity = CampaignValidity.empty,
      final Map<String, AcmoCurrency> availableCurrencies = const {},
      this.app = ActiveApp.empty,
      this.campaignStatus = '',
      this.group = '',
      this.stage,
      this.eventSummary = CampaignEventSummary.empty,
      final List<PayoutEvents> limitedTimeEvents = const [],
      final List<dynamic> shorterMaxTimeEvents = const []})
      : _availableCurrencies = availableCurrencies,
        _limitedTimeEvents = limitedTimeEvents,
        _shorterMaxTimeEvents = shorterMaxTimeEvents;
  factory _ActiveCampaign.fromJson(Map<String, dynamic> json) =>
      _$ActiveCampaignFromJson(json);

  @override
  @JsonKey()
  final int campaignId;
  @override
  @JsonKey()
  final String campaignName;
  @override
  @JsonKey()
  final String campaignDescription;
  @override
  @JsonKey()
  final String campaignType;
  @override
  @JsonKey()
  final bool campaignPremium;
  @override
  @JsonKey()
  final CampaignValidity validity;
  final Map<String, AcmoCurrency> _availableCurrencies;
  @override
  @JsonKey()
  Map<String, AcmoCurrency> get availableCurrencies {
    if (_availableCurrencies is EqualUnmodifiableMapView)
      return _availableCurrencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_availableCurrencies);
  }

  @override
  @JsonKey()
  final ActiveApp app;
  @override
  @JsonKey()
  final String campaignStatus;
  @override
  @JsonKey()
  final String group;
  @override
  final dynamic stage;
  @override
  @JsonKey()
  final CampaignEventSummary eventSummary;
  final List<PayoutEvents> _limitedTimeEvents;
  @override
  @JsonKey()
  List<PayoutEvents> get limitedTimeEvents {
    if (_limitedTimeEvents is EqualUnmodifiableListView)
      return _limitedTimeEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_limitedTimeEvents);
  }

  final List<dynamic> _shorterMaxTimeEvents;
  @override
  @JsonKey()
  List<dynamic> get shorterMaxTimeEvents {
    if (_shorterMaxTimeEvents is EqualUnmodifiableListView)
      return _shorterMaxTimeEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shorterMaxTimeEvents);
  }

  /// Create a copy of ActiveCampaign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ActiveCampaignCopyWith<_ActiveCampaign> get copyWith =>
      __$ActiveCampaignCopyWithImpl<_ActiveCampaign>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ActiveCampaignToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActiveCampaign &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId) &&
            (identical(other.campaignName, campaignName) ||
                other.campaignName == campaignName) &&
            (identical(other.campaignDescription, campaignDescription) ||
                other.campaignDescription == campaignDescription) &&
            (identical(other.campaignType, campaignType) ||
                other.campaignType == campaignType) &&
            (identical(other.campaignPremium, campaignPremium) ||
                other.campaignPremium == campaignPremium) &&
            (identical(other.validity, validity) ||
                other.validity == validity) &&
            const DeepCollectionEquality()
                .equals(other._availableCurrencies, _availableCurrencies) &&
            (identical(other.app, app) || other.app == app) &&
            (identical(other.campaignStatus, campaignStatus) ||
                other.campaignStatus == campaignStatus) &&
            (identical(other.group, group) || other.group == group) &&
            const DeepCollectionEquality().equals(other.stage, stage) &&
            (identical(other.eventSummary, eventSummary) ||
                other.eventSummary == eventSummary) &&
            const DeepCollectionEquality()
                .equals(other._limitedTimeEvents, _limitedTimeEvents) &&
            const DeepCollectionEquality()
                .equals(other._shorterMaxTimeEvents, _shorterMaxTimeEvents));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      campaignId,
      campaignName,
      campaignDescription,
      campaignType,
      campaignPremium,
      validity,
      const DeepCollectionEquality().hash(_availableCurrencies),
      app,
      campaignStatus,
      group,
      const DeepCollectionEquality().hash(stage),
      eventSummary,
      const DeepCollectionEquality().hash(_limitedTimeEvents),
      const DeepCollectionEquality().hash(_shorterMaxTimeEvents));

  @override
  String toString() {
    return 'ActiveCampaign(campaignId: $campaignId, campaignName: $campaignName, campaignDescription: $campaignDescription, campaignType: $campaignType, campaignPremium: $campaignPremium, validity: $validity, availableCurrencies: $availableCurrencies, app: $app, campaignStatus: $campaignStatus, group: $group, stage: $stage, eventSummary: $eventSummary, limitedTimeEvents: $limitedTimeEvents, shorterMaxTimeEvents: $shorterMaxTimeEvents)';
  }
}

/// @nodoc
abstract mixin class _$ActiveCampaignCopyWith<$Res>
    implements $ActiveCampaignCopyWith<$Res> {
  factory _$ActiveCampaignCopyWith(
          _ActiveCampaign value, $Res Function(_ActiveCampaign) _then) =
      __$ActiveCampaignCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int campaignId,
      String campaignName,
      String campaignDescription,
      String campaignType,
      bool campaignPremium,
      CampaignValidity validity,
      Map<String, AcmoCurrency> availableCurrencies,
      ActiveApp app,
      String campaignStatus,
      String group,
      dynamic stage,
      CampaignEventSummary eventSummary,
      List<PayoutEvents> limitedTimeEvents,
      List<dynamic> shorterMaxTimeEvents});

  @override
  $CampaignValidityCopyWith<$Res> get validity;
  @override
  $ActiveAppCopyWith<$Res> get app;
  @override
  $CampaignEventSummaryCopyWith<$Res> get eventSummary;
}

/// @nodoc
class __$ActiveCampaignCopyWithImpl<$Res>
    implements _$ActiveCampaignCopyWith<$Res> {
  __$ActiveCampaignCopyWithImpl(this._self, this._then);

  final _ActiveCampaign _self;
  final $Res Function(_ActiveCampaign) _then;

  /// Create a copy of ActiveCampaign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? campaignId = null,
    Object? campaignName = null,
    Object? campaignDescription = null,
    Object? campaignType = null,
    Object? campaignPremium = null,
    Object? validity = null,
    Object? availableCurrencies = null,
    Object? app = null,
    Object? campaignStatus = null,
    Object? group = null,
    Object? stage = freezed,
    Object? eventSummary = null,
    Object? limitedTimeEvents = null,
    Object? shorterMaxTimeEvents = null,
  }) {
    return _then(_ActiveCampaign(
      campaignId: null == campaignId
          ? _self.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as int,
      campaignName: null == campaignName
          ? _self.campaignName
          : campaignName // ignore: cast_nullable_to_non_nullable
              as String,
      campaignDescription: null == campaignDescription
          ? _self.campaignDescription
          : campaignDescription // ignore: cast_nullable_to_non_nullable
              as String,
      campaignType: null == campaignType
          ? _self.campaignType
          : campaignType // ignore: cast_nullable_to_non_nullable
              as String,
      campaignPremium: null == campaignPremium
          ? _self.campaignPremium
          : campaignPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      validity: null == validity
          ? _self.validity
          : validity // ignore: cast_nullable_to_non_nullable
              as CampaignValidity,
      availableCurrencies: null == availableCurrencies
          ? _self._availableCurrencies
          : availableCurrencies // ignore: cast_nullable_to_non_nullable
              as Map<String, AcmoCurrency>,
      app: null == app
          ? _self.app
          : app // ignore: cast_nullable_to_non_nullable
              as ActiveApp,
      campaignStatus: null == campaignStatus
          ? _self.campaignStatus
          : campaignStatus // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _self.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      stage: freezed == stage
          ? _self.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      eventSummary: null == eventSummary
          ? _self.eventSummary
          : eventSummary // ignore: cast_nullable_to_non_nullable
              as CampaignEventSummary,
      limitedTimeEvents: null == limitedTimeEvents
          ? _self._limitedTimeEvents
          : limitedTimeEvents // ignore: cast_nullable_to_non_nullable
              as List<PayoutEvents>,
      shorterMaxTimeEvents: null == shorterMaxTimeEvents
          ? _self._shorterMaxTimeEvents
          : shorterMaxTimeEvents // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }

  /// Create a copy of ActiveCampaign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CampaignValidityCopyWith<$Res> get validity {
    return $CampaignValidityCopyWith<$Res>(_self.validity, (value) {
      return _then(_self.copyWith(validity: value));
    });
  }

  /// Create a copy of ActiveCampaign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActiveAppCopyWith<$Res> get app {
    return $ActiveAppCopyWith<$Res>(_self.app, (value) {
      return _then(_self.copyWith(app: value));
    });
  }

  /// Create a copy of ActiveCampaign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CampaignEventSummaryCopyWith<$Res> get eventSummary {
    return $CampaignEventSummaryCopyWith<$Res>(_self.eventSummary, (value) {
      return _then(_self.copyWith(eventSummary: value));
    });
  }
}

/// @nodoc
mixin _$AcmoPayoutInfo {
  int get currencyId;
  String get currencyName;
  String get currencyIcon;
  double get currencyConversionRate;
  double get payoutAmountConverted;

  /// Create a copy of AcmoPayoutInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AcmoPayoutInfoCopyWith<AcmoPayoutInfo> get copyWith =>
      _$AcmoPayoutInfoCopyWithImpl<AcmoPayoutInfo>(
          this as AcmoPayoutInfo, _$identity);

  /// Serializes this AcmoPayoutInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AcmoPayoutInfo &&
            (identical(other.currencyId, currencyId) ||
                other.currencyId == currencyId) &&
            (identical(other.currencyName, currencyName) ||
                other.currencyName == currencyName) &&
            (identical(other.currencyIcon, currencyIcon) ||
                other.currencyIcon == currencyIcon) &&
            (identical(other.currencyConversionRate, currencyConversionRate) ||
                other.currencyConversionRate == currencyConversionRate) &&
            (identical(other.payoutAmountConverted, payoutAmountConverted) ||
                other.payoutAmountConverted == payoutAmountConverted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currencyId, currencyName,
      currencyIcon, currencyConversionRate, payoutAmountConverted);

  @override
  String toString() {
    return 'AcmoPayoutInfo(currencyId: $currencyId, currencyName: $currencyName, currencyIcon: $currencyIcon, currencyConversionRate: $currencyConversionRate, payoutAmountConverted: $payoutAmountConverted)';
  }
}

/// @nodoc
abstract mixin class $AcmoPayoutInfoCopyWith<$Res> {
  factory $AcmoPayoutInfoCopyWith(
          AcmoPayoutInfo value, $Res Function(AcmoPayoutInfo) _then) =
      _$AcmoPayoutInfoCopyWithImpl;
  @useResult
  $Res call(
      {int currencyId,
      String currencyName,
      String currencyIcon,
      double currencyConversionRate,
      double payoutAmountConverted});
}

/// @nodoc
class _$AcmoPayoutInfoCopyWithImpl<$Res>
    implements $AcmoPayoutInfoCopyWith<$Res> {
  _$AcmoPayoutInfoCopyWithImpl(this._self, this._then);

  final AcmoPayoutInfo _self;
  final $Res Function(AcmoPayoutInfo) _then;

  /// Create a copy of AcmoPayoutInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyId = null,
    Object? currencyName = null,
    Object? currencyIcon = null,
    Object? currencyConversionRate = null,
    Object? payoutAmountConverted = null,
  }) {
    return _then(_self.copyWith(
      currencyId: null == currencyId
          ? _self.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as int,
      currencyName: null == currencyName
          ? _self.currencyName
          : currencyName // ignore: cast_nullable_to_non_nullable
              as String,
      currencyIcon: null == currencyIcon
          ? _self.currencyIcon
          : currencyIcon // ignore: cast_nullable_to_non_nullable
              as String,
      currencyConversionRate: null == currencyConversionRate
          ? _self.currencyConversionRate
          : currencyConversionRate // ignore: cast_nullable_to_non_nullable
              as double,
      payoutAmountConverted: null == payoutAmountConverted
          ? _self.payoutAmountConverted
          : payoutAmountConverted // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [AcmoPayoutInfo].
extension AcmoPayoutInfoPatterns on AcmoPayoutInfo {
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
    TResult Function(_AcmoPayoutInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AcmoPayoutInfo() when $default != null:
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
    TResult Function(_AcmoPayoutInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoPayoutInfo():
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
    TResult? Function(_AcmoPayoutInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoPayoutInfo() when $default != null:
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
    TResult Function(int currencyId, String currencyName, String currencyIcon,
            double currencyConversionRate, double payoutAmountConverted)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AcmoPayoutInfo() when $default != null:
        return $default(
            _that.currencyId,
            _that.currencyName,
            _that.currencyIcon,
            _that.currencyConversionRate,
            _that.payoutAmountConverted);
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
    TResult Function(int currencyId, String currencyName, String currencyIcon,
            double currencyConversionRate, double payoutAmountConverted)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoPayoutInfo():
        return $default(
            _that.currencyId,
            _that.currencyName,
            _that.currencyIcon,
            _that.currencyConversionRate,
            _that.payoutAmountConverted);
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
    TResult? Function(int currencyId, String currencyName, String currencyIcon,
            double currencyConversionRate, double payoutAmountConverted)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoPayoutInfo() when $default != null:
        return $default(
            _that.currencyId,
            _that.currencyName,
            _that.currencyIcon,
            _that.currencyConversionRate,
            _that.payoutAmountConverted);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AcmoPayoutInfo implements AcmoPayoutInfo {
  const _AcmoPayoutInfo(
      {this.currencyId = 0,
      this.currencyName = '',
      this.currencyIcon = '',
      this.currencyConversionRate = 0.0,
      this.payoutAmountConverted = 0.0});
  factory _AcmoPayoutInfo.fromJson(Map<String, dynamic> json) =>
      _$AcmoPayoutInfoFromJson(json);

  @override
  @JsonKey()
  final int currencyId;
  @override
  @JsonKey()
  final String currencyName;
  @override
  @JsonKey()
  final String currencyIcon;
  @override
  @JsonKey()
  final double currencyConversionRate;
  @override
  @JsonKey()
  final double payoutAmountConverted;

  /// Create a copy of AcmoPayoutInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AcmoPayoutInfoCopyWith<_AcmoPayoutInfo> get copyWith =>
      __$AcmoPayoutInfoCopyWithImpl<_AcmoPayoutInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AcmoPayoutInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AcmoPayoutInfo &&
            (identical(other.currencyId, currencyId) ||
                other.currencyId == currencyId) &&
            (identical(other.currencyName, currencyName) ||
                other.currencyName == currencyName) &&
            (identical(other.currencyIcon, currencyIcon) ||
                other.currencyIcon == currencyIcon) &&
            (identical(other.currencyConversionRate, currencyConversionRate) ||
                other.currencyConversionRate == currencyConversionRate) &&
            (identical(other.payoutAmountConverted, payoutAmountConverted) ||
                other.payoutAmountConverted == payoutAmountConverted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currencyId, currencyName,
      currencyIcon, currencyConversionRate, payoutAmountConverted);

  @override
  String toString() {
    return 'AcmoPayoutInfo(currencyId: $currencyId, currencyName: $currencyName, currencyIcon: $currencyIcon, currencyConversionRate: $currencyConversionRate, payoutAmountConverted: $payoutAmountConverted)';
  }
}

/// @nodoc
abstract mixin class _$AcmoPayoutInfoCopyWith<$Res>
    implements $AcmoPayoutInfoCopyWith<$Res> {
  factory _$AcmoPayoutInfoCopyWith(
          _AcmoPayoutInfo value, $Res Function(_AcmoPayoutInfo) _then) =
      __$AcmoPayoutInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int currencyId,
      String currencyName,
      String currencyIcon,
      double currencyConversionRate,
      double payoutAmountConverted});
}

/// @nodoc
class __$AcmoPayoutInfoCopyWithImpl<$Res>
    implements _$AcmoPayoutInfoCopyWith<$Res> {
  __$AcmoPayoutInfoCopyWithImpl(this._self, this._then);

  final _AcmoPayoutInfo _self;
  final $Res Function(_AcmoPayoutInfo) _then;

  /// Create a copy of AcmoPayoutInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currencyId = null,
    Object? currencyName = null,
    Object? currencyIcon = null,
    Object? currencyConversionRate = null,
    Object? payoutAmountConverted = null,
  }) {
    return _then(_AcmoPayoutInfo(
      currencyId: null == currencyId
          ? _self.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as int,
      currencyName: null == currencyName
          ? _self.currencyName
          : currencyName // ignore: cast_nullable_to_non_nullable
              as String,
      currencyIcon: null == currencyIcon
          ? _self.currencyIcon
          : currencyIcon // ignore: cast_nullable_to_non_nullable
              as String,
      currencyConversionRate: null == currencyConversionRate
          ? _self.currencyConversionRate
          : currencyConversionRate // ignore: cast_nullable_to_non_nullable
              as double,
      payoutAmountConverted: null == payoutAmountConverted
          ? _self.payoutAmountConverted
          : payoutAmountConverted // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
mixin _$PayoutEvents {
  int get appEventId;
  dynamic get conversionStatus;
  String get identifier;
  String get eventName;
  String? get eventDescription;
  String get eventCategory;
  Map<String, AcmoPayoutInfo> get payoutInfo;
  bool get allowDuplicateEvents;
  int get maxTime;
  String? get maxTimeMetric;
  double? get maxTimeRemainSeconds;
  bool get enforceMaxTimeCompletion;
  bool get isLimitedTimeEvent;
  double get limitedTimeEventRemainingSeconds;
  bool get isTicketSubmitted;
  dynamic get ticketStatus;
  dynamic get lockEventRule;
  dynamic get hideEventRule;
  dynamic get shorterMaxTimeRule;
  dynamic get specialCompletionReason;
  int get dailyCount;
  int? get dailyLimit;
  int get count;
  int? get limit;
  int get totalDailyUniqueCount;
  int? get totalDailyUniqueLimit;
  bool get dailyUniqueTodayExist;

  /// Create a copy of PayoutEvents
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PayoutEventsCopyWith<PayoutEvents> get copyWith =>
      _$PayoutEventsCopyWithImpl<PayoutEvents>(
          this as PayoutEvents, _$identity);

  /// Serializes this PayoutEvents to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PayoutEvents &&
            (identical(other.appEventId, appEventId) ||
                other.appEventId == appEventId) &&
            const DeepCollectionEquality()
                .equals(other.conversionStatus, conversionStatus) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName) &&
            (identical(other.eventDescription, eventDescription) ||
                other.eventDescription == eventDescription) &&
            (identical(other.eventCategory, eventCategory) ||
                other.eventCategory == eventCategory) &&
            const DeepCollectionEquality()
                .equals(other.payoutInfo, payoutInfo) &&
            (identical(other.allowDuplicateEvents, allowDuplicateEvents) ||
                other.allowDuplicateEvents == allowDuplicateEvents) &&
            (identical(other.maxTime, maxTime) || other.maxTime == maxTime) &&
            (identical(other.maxTimeMetric, maxTimeMetric) ||
                other.maxTimeMetric == maxTimeMetric) &&
            (identical(other.maxTimeRemainSeconds, maxTimeRemainSeconds) ||
                other.maxTimeRemainSeconds == maxTimeRemainSeconds) &&
            (identical(
                    other.enforceMaxTimeCompletion, enforceMaxTimeCompletion) ||
                other.enforceMaxTimeCompletion == enforceMaxTimeCompletion) &&
            (identical(other.isLimitedTimeEvent, isLimitedTimeEvent) ||
                other.isLimitedTimeEvent == isLimitedTimeEvent) &&
            (identical(other.limitedTimeEventRemainingSeconds,
                    limitedTimeEventRemainingSeconds) ||
                other.limitedTimeEventRemainingSeconds ==
                    limitedTimeEventRemainingSeconds) &&
            (identical(other.isTicketSubmitted, isTicketSubmitted) ||
                other.isTicketSubmitted == isTicketSubmitted) &&
            const DeepCollectionEquality()
                .equals(other.ticketStatus, ticketStatus) &&
            const DeepCollectionEquality()
                .equals(other.lockEventRule, lockEventRule) &&
            const DeepCollectionEquality()
                .equals(other.hideEventRule, hideEventRule) &&
            const DeepCollectionEquality()
                .equals(other.shorterMaxTimeRule, shorterMaxTimeRule) &&
            const DeepCollectionEquality().equals(
                other.specialCompletionReason, specialCompletionReason) &&
            (identical(other.dailyCount, dailyCount) ||
                other.dailyCount == dailyCount) &&
            (identical(other.dailyLimit, dailyLimit) ||
                other.dailyLimit == dailyLimit) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.totalDailyUniqueCount, totalDailyUniqueCount) ||
                other.totalDailyUniqueCount == totalDailyUniqueCount) &&
            (identical(other.totalDailyUniqueLimit, totalDailyUniqueLimit) ||
                other.totalDailyUniqueLimit == totalDailyUniqueLimit) &&
            (identical(other.dailyUniqueTodayExist, dailyUniqueTodayExist) ||
                other.dailyUniqueTodayExist == dailyUniqueTodayExist));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        appEventId,
        const DeepCollectionEquality().hash(conversionStatus),
        identifier,
        eventName,
        eventDescription,
        eventCategory,
        const DeepCollectionEquality().hash(payoutInfo),
        allowDuplicateEvents,
        maxTime,
        maxTimeMetric,
        maxTimeRemainSeconds,
        enforceMaxTimeCompletion,
        isLimitedTimeEvent,
        limitedTimeEventRemainingSeconds,
        isTicketSubmitted,
        const DeepCollectionEquality().hash(ticketStatus),
        const DeepCollectionEquality().hash(lockEventRule),
        const DeepCollectionEquality().hash(hideEventRule),
        const DeepCollectionEquality().hash(shorterMaxTimeRule),
        const DeepCollectionEquality().hash(specialCompletionReason),
        dailyCount,
        dailyLimit,
        count,
        limit,
        totalDailyUniqueCount,
        totalDailyUniqueLimit,
        dailyUniqueTodayExist
      ]);

  @override
  String toString() {
    return 'PayoutEvents(appEventId: $appEventId, conversionStatus: $conversionStatus, identifier: $identifier, eventName: $eventName, eventDescription: $eventDescription, eventCategory: $eventCategory, payoutInfo: $payoutInfo, allowDuplicateEvents: $allowDuplicateEvents, maxTime: $maxTime, maxTimeMetric: $maxTimeMetric, maxTimeRemainSeconds: $maxTimeRemainSeconds, enforceMaxTimeCompletion: $enforceMaxTimeCompletion, isLimitedTimeEvent: $isLimitedTimeEvent, limitedTimeEventRemainingSeconds: $limitedTimeEventRemainingSeconds, isTicketSubmitted: $isTicketSubmitted, ticketStatus: $ticketStatus, lockEventRule: $lockEventRule, hideEventRule: $hideEventRule, shorterMaxTimeRule: $shorterMaxTimeRule, specialCompletionReason: $specialCompletionReason, dailyCount: $dailyCount, dailyLimit: $dailyLimit, count: $count, limit: $limit, totalDailyUniqueCount: $totalDailyUniqueCount, totalDailyUniqueLimit: $totalDailyUniqueLimit, dailyUniqueTodayExist: $dailyUniqueTodayExist)';
  }
}

/// @nodoc
abstract mixin class $PayoutEventsCopyWith<$Res> {
  factory $PayoutEventsCopyWith(
          PayoutEvents value, $Res Function(PayoutEvents) _then) =
      _$PayoutEventsCopyWithImpl;
  @useResult
  $Res call(
      {int appEventId,
      dynamic conversionStatus,
      String identifier,
      String eventName,
      String? eventDescription,
      String eventCategory,
      Map<String, AcmoPayoutInfo> payoutInfo,
      bool allowDuplicateEvents,
      int maxTime,
      String? maxTimeMetric,
      double? maxTimeRemainSeconds,
      bool enforceMaxTimeCompletion,
      bool isLimitedTimeEvent,
      double limitedTimeEventRemainingSeconds,
      bool isTicketSubmitted,
      dynamic ticketStatus,
      dynamic lockEventRule,
      dynamic hideEventRule,
      dynamic shorterMaxTimeRule,
      dynamic specialCompletionReason,
      int dailyCount,
      int? dailyLimit,
      int count,
      int? limit,
      int totalDailyUniqueCount,
      int? totalDailyUniqueLimit,
      bool dailyUniqueTodayExist});
}

/// @nodoc
class _$PayoutEventsCopyWithImpl<$Res> implements $PayoutEventsCopyWith<$Res> {
  _$PayoutEventsCopyWithImpl(this._self, this._then);

  final PayoutEvents _self;
  final $Res Function(PayoutEvents) _then;

  /// Create a copy of PayoutEvents
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appEventId = null,
    Object? conversionStatus = freezed,
    Object? identifier = null,
    Object? eventName = null,
    Object? eventDescription = freezed,
    Object? eventCategory = null,
    Object? payoutInfo = null,
    Object? allowDuplicateEvents = null,
    Object? maxTime = null,
    Object? maxTimeMetric = freezed,
    Object? maxTimeRemainSeconds = freezed,
    Object? enforceMaxTimeCompletion = null,
    Object? isLimitedTimeEvent = null,
    Object? limitedTimeEventRemainingSeconds = null,
    Object? isTicketSubmitted = null,
    Object? ticketStatus = freezed,
    Object? lockEventRule = freezed,
    Object? hideEventRule = freezed,
    Object? shorterMaxTimeRule = freezed,
    Object? specialCompletionReason = freezed,
    Object? dailyCount = null,
    Object? dailyLimit = freezed,
    Object? count = null,
    Object? limit = freezed,
    Object? totalDailyUniqueCount = null,
    Object? totalDailyUniqueLimit = freezed,
    Object? dailyUniqueTodayExist = null,
  }) {
    return _then(_self.copyWith(
      appEventId: null == appEventId
          ? _self.appEventId
          : appEventId // ignore: cast_nullable_to_non_nullable
              as int,
      conversionStatus: freezed == conversionStatus
          ? _self.conversionStatus
          : conversionStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      identifier: null == identifier
          ? _self.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _self.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      eventDescription: freezed == eventDescription
          ? _self.eventDescription
          : eventDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      eventCategory: null == eventCategory
          ? _self.eventCategory
          : eventCategory // ignore: cast_nullable_to_non_nullable
              as String,
      payoutInfo: null == payoutInfo
          ? _self.payoutInfo
          : payoutInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, AcmoPayoutInfo>,
      allowDuplicateEvents: null == allowDuplicateEvents
          ? _self.allowDuplicateEvents
          : allowDuplicateEvents // ignore: cast_nullable_to_non_nullable
              as bool,
      maxTime: null == maxTime
          ? _self.maxTime
          : maxTime // ignore: cast_nullable_to_non_nullable
              as int,
      maxTimeMetric: freezed == maxTimeMetric
          ? _self.maxTimeMetric
          : maxTimeMetric // ignore: cast_nullable_to_non_nullable
              as String?,
      maxTimeRemainSeconds: freezed == maxTimeRemainSeconds
          ? _self.maxTimeRemainSeconds
          : maxTimeRemainSeconds // ignore: cast_nullable_to_non_nullable
              as double?,
      enforceMaxTimeCompletion: null == enforceMaxTimeCompletion
          ? _self.enforceMaxTimeCompletion
          : enforceMaxTimeCompletion // ignore: cast_nullable_to_non_nullable
              as bool,
      isLimitedTimeEvent: null == isLimitedTimeEvent
          ? _self.isLimitedTimeEvent
          : isLimitedTimeEvent // ignore: cast_nullable_to_non_nullable
              as bool,
      limitedTimeEventRemainingSeconds: null == limitedTimeEventRemainingSeconds
          ? _self.limitedTimeEventRemainingSeconds
          : limitedTimeEventRemainingSeconds // ignore: cast_nullable_to_non_nullable
              as double,
      isTicketSubmitted: null == isTicketSubmitted
          ? _self.isTicketSubmitted
          : isTicketSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      ticketStatus: freezed == ticketStatus
          ? _self.ticketStatus
          : ticketStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lockEventRule: freezed == lockEventRule
          ? _self.lockEventRule
          : lockEventRule // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hideEventRule: freezed == hideEventRule
          ? _self.hideEventRule
          : hideEventRule // ignore: cast_nullable_to_non_nullable
              as dynamic,
      shorterMaxTimeRule: freezed == shorterMaxTimeRule
          ? _self.shorterMaxTimeRule
          : shorterMaxTimeRule // ignore: cast_nullable_to_non_nullable
              as dynamic,
      specialCompletionReason: freezed == specialCompletionReason
          ? _self.specialCompletionReason
          : specialCompletionReason // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dailyCount: null == dailyCount
          ? _self.dailyCount
          : dailyCount // ignore: cast_nullable_to_non_nullable
              as int,
      dailyLimit: freezed == dailyLimit
          ? _self.dailyLimit
          : dailyLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      limit: freezed == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      totalDailyUniqueCount: null == totalDailyUniqueCount
          ? _self.totalDailyUniqueCount
          : totalDailyUniqueCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalDailyUniqueLimit: freezed == totalDailyUniqueLimit
          ? _self.totalDailyUniqueLimit
          : totalDailyUniqueLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      dailyUniqueTodayExist: null == dailyUniqueTodayExist
          ? _self.dailyUniqueTodayExist
          : dailyUniqueTodayExist // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [PayoutEvents].
extension PayoutEventsPatterns on PayoutEvents {
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
    TResult Function(_PayoutEvents value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PayoutEvents() when $default != null:
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
    TResult Function(_PayoutEvents value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PayoutEvents():
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
    TResult? Function(_PayoutEvents value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PayoutEvents() when $default != null:
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
            int appEventId,
            dynamic conversionStatus,
            String identifier,
            String eventName,
            String? eventDescription,
            String eventCategory,
            Map<String, AcmoPayoutInfo> payoutInfo,
            bool allowDuplicateEvents,
            int maxTime,
            String? maxTimeMetric,
            double? maxTimeRemainSeconds,
            bool enforceMaxTimeCompletion,
            bool isLimitedTimeEvent,
            double limitedTimeEventRemainingSeconds,
            bool isTicketSubmitted,
            dynamic ticketStatus,
            dynamic lockEventRule,
            dynamic hideEventRule,
            dynamic shorterMaxTimeRule,
            dynamic specialCompletionReason,
            int dailyCount,
            int? dailyLimit,
            int count,
            int? limit,
            int totalDailyUniqueCount,
            int? totalDailyUniqueLimit,
            bool dailyUniqueTodayExist)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PayoutEvents() when $default != null:
        return $default(
            _that.appEventId,
            _that.conversionStatus,
            _that.identifier,
            _that.eventName,
            _that.eventDescription,
            _that.eventCategory,
            _that.payoutInfo,
            _that.allowDuplicateEvents,
            _that.maxTime,
            _that.maxTimeMetric,
            _that.maxTimeRemainSeconds,
            _that.enforceMaxTimeCompletion,
            _that.isLimitedTimeEvent,
            _that.limitedTimeEventRemainingSeconds,
            _that.isTicketSubmitted,
            _that.ticketStatus,
            _that.lockEventRule,
            _that.hideEventRule,
            _that.shorterMaxTimeRule,
            _that.specialCompletionReason,
            _that.dailyCount,
            _that.dailyLimit,
            _that.count,
            _that.limit,
            _that.totalDailyUniqueCount,
            _that.totalDailyUniqueLimit,
            _that.dailyUniqueTodayExist);
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
            int appEventId,
            dynamic conversionStatus,
            String identifier,
            String eventName,
            String? eventDescription,
            String eventCategory,
            Map<String, AcmoPayoutInfo> payoutInfo,
            bool allowDuplicateEvents,
            int maxTime,
            String? maxTimeMetric,
            double? maxTimeRemainSeconds,
            bool enforceMaxTimeCompletion,
            bool isLimitedTimeEvent,
            double limitedTimeEventRemainingSeconds,
            bool isTicketSubmitted,
            dynamic ticketStatus,
            dynamic lockEventRule,
            dynamic hideEventRule,
            dynamic shorterMaxTimeRule,
            dynamic specialCompletionReason,
            int dailyCount,
            int? dailyLimit,
            int count,
            int? limit,
            int totalDailyUniqueCount,
            int? totalDailyUniqueLimit,
            bool dailyUniqueTodayExist)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PayoutEvents():
        return $default(
            _that.appEventId,
            _that.conversionStatus,
            _that.identifier,
            _that.eventName,
            _that.eventDescription,
            _that.eventCategory,
            _that.payoutInfo,
            _that.allowDuplicateEvents,
            _that.maxTime,
            _that.maxTimeMetric,
            _that.maxTimeRemainSeconds,
            _that.enforceMaxTimeCompletion,
            _that.isLimitedTimeEvent,
            _that.limitedTimeEventRemainingSeconds,
            _that.isTicketSubmitted,
            _that.ticketStatus,
            _that.lockEventRule,
            _that.hideEventRule,
            _that.shorterMaxTimeRule,
            _that.specialCompletionReason,
            _that.dailyCount,
            _that.dailyLimit,
            _that.count,
            _that.limit,
            _that.totalDailyUniqueCount,
            _that.totalDailyUniqueLimit,
            _that.dailyUniqueTodayExist);
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
            int appEventId,
            dynamic conversionStatus,
            String identifier,
            String eventName,
            String? eventDescription,
            String eventCategory,
            Map<String, AcmoPayoutInfo> payoutInfo,
            bool allowDuplicateEvents,
            int maxTime,
            String? maxTimeMetric,
            double? maxTimeRemainSeconds,
            bool enforceMaxTimeCompletion,
            bool isLimitedTimeEvent,
            double limitedTimeEventRemainingSeconds,
            bool isTicketSubmitted,
            dynamic ticketStatus,
            dynamic lockEventRule,
            dynamic hideEventRule,
            dynamic shorterMaxTimeRule,
            dynamic specialCompletionReason,
            int dailyCount,
            int? dailyLimit,
            int count,
            int? limit,
            int totalDailyUniqueCount,
            int? totalDailyUniqueLimit,
            bool dailyUniqueTodayExist)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PayoutEvents() when $default != null:
        return $default(
            _that.appEventId,
            _that.conversionStatus,
            _that.identifier,
            _that.eventName,
            _that.eventDescription,
            _that.eventCategory,
            _that.payoutInfo,
            _that.allowDuplicateEvents,
            _that.maxTime,
            _that.maxTimeMetric,
            _that.maxTimeRemainSeconds,
            _that.enforceMaxTimeCompletion,
            _that.isLimitedTimeEvent,
            _that.limitedTimeEventRemainingSeconds,
            _that.isTicketSubmitted,
            _that.ticketStatus,
            _that.lockEventRule,
            _that.hideEventRule,
            _that.shorterMaxTimeRule,
            _that.specialCompletionReason,
            _that.dailyCount,
            _that.dailyLimit,
            _that.count,
            _that.limit,
            _that.totalDailyUniqueCount,
            _that.totalDailyUniqueLimit,
            _that.dailyUniqueTodayExist);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PayoutEvents implements PayoutEvents {
  _PayoutEvents(
      {this.appEventId = 0,
      this.conversionStatus,
      this.identifier = '',
      this.eventName = '',
      this.eventDescription,
      this.eventCategory = '',
      final Map<String, AcmoPayoutInfo> payoutInfo = const {},
      this.allowDuplicateEvents = false,
      this.maxTime = 0,
      this.maxTimeMetric,
      this.maxTimeRemainSeconds,
      this.enforceMaxTimeCompletion = false,
      this.isLimitedTimeEvent = false,
      this.limitedTimeEventRemainingSeconds = 0.0,
      this.isTicketSubmitted = false,
      this.ticketStatus,
      this.lockEventRule,
      this.hideEventRule,
      this.shorterMaxTimeRule,
      this.specialCompletionReason,
      this.dailyCount = 0,
      this.dailyLimit,
      this.count = 0,
      this.limit,
      this.totalDailyUniqueCount = 0,
      this.totalDailyUniqueLimit,
      this.dailyUniqueTodayExist = false})
      : _payoutInfo = payoutInfo;
  factory _PayoutEvents.fromJson(Map<String, dynamic> json) =>
      _$PayoutEventsFromJson(json);

  @override
  @JsonKey()
  final int appEventId;
  @override
  final dynamic conversionStatus;
  @override
  @JsonKey()
  final String identifier;
  @override
  @JsonKey()
  final String eventName;
  @override
  final String? eventDescription;
  @override
  @JsonKey()
  final String eventCategory;
  final Map<String, AcmoPayoutInfo> _payoutInfo;
  @override
  @JsonKey()
  Map<String, AcmoPayoutInfo> get payoutInfo {
    if (_payoutInfo is EqualUnmodifiableMapView) return _payoutInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_payoutInfo);
  }

  @override
  @JsonKey()
  final bool allowDuplicateEvents;
  @override
  @JsonKey()
  final int maxTime;
  @override
  final String? maxTimeMetric;
  @override
  final double? maxTimeRemainSeconds;
  @override
  @JsonKey()
  final bool enforceMaxTimeCompletion;
  @override
  @JsonKey()
  final bool isLimitedTimeEvent;
  @override
  @JsonKey()
  final double limitedTimeEventRemainingSeconds;
  @override
  @JsonKey()
  final bool isTicketSubmitted;
  @override
  final dynamic ticketStatus;
  @override
  final dynamic lockEventRule;
  @override
  final dynamic hideEventRule;
  @override
  final dynamic shorterMaxTimeRule;
  @override
  final dynamic specialCompletionReason;
  @override
  @JsonKey()
  final int dailyCount;
  @override
  final int? dailyLimit;
  @override
  @JsonKey()
  final int count;
  @override
  final int? limit;
  @override
  @JsonKey()
  final int totalDailyUniqueCount;
  @override
  final int? totalDailyUniqueLimit;
  @override
  @JsonKey()
  final bool dailyUniqueTodayExist;

  /// Create a copy of PayoutEvents
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PayoutEventsCopyWith<_PayoutEvents> get copyWith =>
      __$PayoutEventsCopyWithImpl<_PayoutEvents>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PayoutEventsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PayoutEvents &&
            (identical(other.appEventId, appEventId) ||
                other.appEventId == appEventId) &&
            const DeepCollectionEquality()
                .equals(other.conversionStatus, conversionStatus) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName) &&
            (identical(other.eventDescription, eventDescription) ||
                other.eventDescription == eventDescription) &&
            (identical(other.eventCategory, eventCategory) ||
                other.eventCategory == eventCategory) &&
            const DeepCollectionEquality()
                .equals(other._payoutInfo, _payoutInfo) &&
            (identical(other.allowDuplicateEvents, allowDuplicateEvents) ||
                other.allowDuplicateEvents == allowDuplicateEvents) &&
            (identical(other.maxTime, maxTime) || other.maxTime == maxTime) &&
            (identical(other.maxTimeMetric, maxTimeMetric) ||
                other.maxTimeMetric == maxTimeMetric) &&
            (identical(other.maxTimeRemainSeconds, maxTimeRemainSeconds) ||
                other.maxTimeRemainSeconds == maxTimeRemainSeconds) &&
            (identical(
                    other.enforceMaxTimeCompletion, enforceMaxTimeCompletion) ||
                other.enforceMaxTimeCompletion == enforceMaxTimeCompletion) &&
            (identical(other.isLimitedTimeEvent, isLimitedTimeEvent) ||
                other.isLimitedTimeEvent == isLimitedTimeEvent) &&
            (identical(other.limitedTimeEventRemainingSeconds,
                    limitedTimeEventRemainingSeconds) ||
                other.limitedTimeEventRemainingSeconds ==
                    limitedTimeEventRemainingSeconds) &&
            (identical(other.isTicketSubmitted, isTicketSubmitted) ||
                other.isTicketSubmitted == isTicketSubmitted) &&
            const DeepCollectionEquality()
                .equals(other.ticketStatus, ticketStatus) &&
            const DeepCollectionEquality()
                .equals(other.lockEventRule, lockEventRule) &&
            const DeepCollectionEquality()
                .equals(other.hideEventRule, hideEventRule) &&
            const DeepCollectionEquality()
                .equals(other.shorterMaxTimeRule, shorterMaxTimeRule) &&
            const DeepCollectionEquality().equals(
                other.specialCompletionReason, specialCompletionReason) &&
            (identical(other.dailyCount, dailyCount) ||
                other.dailyCount == dailyCount) &&
            (identical(other.dailyLimit, dailyLimit) ||
                other.dailyLimit == dailyLimit) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.totalDailyUniqueCount, totalDailyUniqueCount) ||
                other.totalDailyUniqueCount == totalDailyUniqueCount) &&
            (identical(other.totalDailyUniqueLimit, totalDailyUniqueLimit) ||
                other.totalDailyUniqueLimit == totalDailyUniqueLimit) &&
            (identical(other.dailyUniqueTodayExist, dailyUniqueTodayExist) ||
                other.dailyUniqueTodayExist == dailyUniqueTodayExist));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        appEventId,
        const DeepCollectionEquality().hash(conversionStatus),
        identifier,
        eventName,
        eventDescription,
        eventCategory,
        const DeepCollectionEquality().hash(_payoutInfo),
        allowDuplicateEvents,
        maxTime,
        maxTimeMetric,
        maxTimeRemainSeconds,
        enforceMaxTimeCompletion,
        isLimitedTimeEvent,
        limitedTimeEventRemainingSeconds,
        isTicketSubmitted,
        const DeepCollectionEquality().hash(ticketStatus),
        const DeepCollectionEquality().hash(lockEventRule),
        const DeepCollectionEquality().hash(hideEventRule),
        const DeepCollectionEquality().hash(shorterMaxTimeRule),
        const DeepCollectionEquality().hash(specialCompletionReason),
        dailyCount,
        dailyLimit,
        count,
        limit,
        totalDailyUniqueCount,
        totalDailyUniqueLimit,
        dailyUniqueTodayExist
      ]);

  @override
  String toString() {
    return 'PayoutEvents(appEventId: $appEventId, conversionStatus: $conversionStatus, identifier: $identifier, eventName: $eventName, eventDescription: $eventDescription, eventCategory: $eventCategory, payoutInfo: $payoutInfo, allowDuplicateEvents: $allowDuplicateEvents, maxTime: $maxTime, maxTimeMetric: $maxTimeMetric, maxTimeRemainSeconds: $maxTimeRemainSeconds, enforceMaxTimeCompletion: $enforceMaxTimeCompletion, isLimitedTimeEvent: $isLimitedTimeEvent, limitedTimeEventRemainingSeconds: $limitedTimeEventRemainingSeconds, isTicketSubmitted: $isTicketSubmitted, ticketStatus: $ticketStatus, lockEventRule: $lockEventRule, hideEventRule: $hideEventRule, shorterMaxTimeRule: $shorterMaxTimeRule, specialCompletionReason: $specialCompletionReason, dailyCount: $dailyCount, dailyLimit: $dailyLimit, count: $count, limit: $limit, totalDailyUniqueCount: $totalDailyUniqueCount, totalDailyUniqueLimit: $totalDailyUniqueLimit, dailyUniqueTodayExist: $dailyUniqueTodayExist)';
  }
}

/// @nodoc
abstract mixin class _$PayoutEventsCopyWith<$Res>
    implements $PayoutEventsCopyWith<$Res> {
  factory _$PayoutEventsCopyWith(
          _PayoutEvents value, $Res Function(_PayoutEvents) _then) =
      __$PayoutEventsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int appEventId,
      dynamic conversionStatus,
      String identifier,
      String eventName,
      String? eventDescription,
      String eventCategory,
      Map<String, AcmoPayoutInfo> payoutInfo,
      bool allowDuplicateEvents,
      int maxTime,
      String? maxTimeMetric,
      double? maxTimeRemainSeconds,
      bool enforceMaxTimeCompletion,
      bool isLimitedTimeEvent,
      double limitedTimeEventRemainingSeconds,
      bool isTicketSubmitted,
      dynamic ticketStatus,
      dynamic lockEventRule,
      dynamic hideEventRule,
      dynamic shorterMaxTimeRule,
      dynamic specialCompletionReason,
      int dailyCount,
      int? dailyLimit,
      int count,
      int? limit,
      int totalDailyUniqueCount,
      int? totalDailyUniqueLimit,
      bool dailyUniqueTodayExist});
}

/// @nodoc
class __$PayoutEventsCopyWithImpl<$Res>
    implements _$PayoutEventsCopyWith<$Res> {
  __$PayoutEventsCopyWithImpl(this._self, this._then);

  final _PayoutEvents _self;
  final $Res Function(_PayoutEvents) _then;

  /// Create a copy of PayoutEvents
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? appEventId = null,
    Object? conversionStatus = freezed,
    Object? identifier = null,
    Object? eventName = null,
    Object? eventDescription = freezed,
    Object? eventCategory = null,
    Object? payoutInfo = null,
    Object? allowDuplicateEvents = null,
    Object? maxTime = null,
    Object? maxTimeMetric = freezed,
    Object? maxTimeRemainSeconds = freezed,
    Object? enforceMaxTimeCompletion = null,
    Object? isLimitedTimeEvent = null,
    Object? limitedTimeEventRemainingSeconds = null,
    Object? isTicketSubmitted = null,
    Object? ticketStatus = freezed,
    Object? lockEventRule = freezed,
    Object? hideEventRule = freezed,
    Object? shorterMaxTimeRule = freezed,
    Object? specialCompletionReason = freezed,
    Object? dailyCount = null,
    Object? dailyLimit = freezed,
    Object? count = null,
    Object? limit = freezed,
    Object? totalDailyUniqueCount = null,
    Object? totalDailyUniqueLimit = freezed,
    Object? dailyUniqueTodayExist = null,
  }) {
    return _then(_PayoutEvents(
      appEventId: null == appEventId
          ? _self.appEventId
          : appEventId // ignore: cast_nullable_to_non_nullable
              as int,
      conversionStatus: freezed == conversionStatus
          ? _self.conversionStatus
          : conversionStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      identifier: null == identifier
          ? _self.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _self.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      eventDescription: freezed == eventDescription
          ? _self.eventDescription
          : eventDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      eventCategory: null == eventCategory
          ? _self.eventCategory
          : eventCategory // ignore: cast_nullable_to_non_nullable
              as String,
      payoutInfo: null == payoutInfo
          ? _self._payoutInfo
          : payoutInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, AcmoPayoutInfo>,
      allowDuplicateEvents: null == allowDuplicateEvents
          ? _self.allowDuplicateEvents
          : allowDuplicateEvents // ignore: cast_nullable_to_non_nullable
              as bool,
      maxTime: null == maxTime
          ? _self.maxTime
          : maxTime // ignore: cast_nullable_to_non_nullable
              as int,
      maxTimeMetric: freezed == maxTimeMetric
          ? _self.maxTimeMetric
          : maxTimeMetric // ignore: cast_nullable_to_non_nullable
              as String?,
      maxTimeRemainSeconds: freezed == maxTimeRemainSeconds
          ? _self.maxTimeRemainSeconds
          : maxTimeRemainSeconds // ignore: cast_nullable_to_non_nullable
              as double?,
      enforceMaxTimeCompletion: null == enforceMaxTimeCompletion
          ? _self.enforceMaxTimeCompletion
          : enforceMaxTimeCompletion // ignore: cast_nullable_to_non_nullable
              as bool,
      isLimitedTimeEvent: null == isLimitedTimeEvent
          ? _self.isLimitedTimeEvent
          : isLimitedTimeEvent // ignore: cast_nullable_to_non_nullable
              as bool,
      limitedTimeEventRemainingSeconds: null == limitedTimeEventRemainingSeconds
          ? _self.limitedTimeEventRemainingSeconds
          : limitedTimeEventRemainingSeconds // ignore: cast_nullable_to_non_nullable
              as double,
      isTicketSubmitted: null == isTicketSubmitted
          ? _self.isTicketSubmitted
          : isTicketSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      ticketStatus: freezed == ticketStatus
          ? _self.ticketStatus
          : ticketStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lockEventRule: freezed == lockEventRule
          ? _self.lockEventRule
          : lockEventRule // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hideEventRule: freezed == hideEventRule
          ? _self.hideEventRule
          : hideEventRule // ignore: cast_nullable_to_non_nullable
              as dynamic,
      shorterMaxTimeRule: freezed == shorterMaxTimeRule
          ? _self.shorterMaxTimeRule
          : shorterMaxTimeRule // ignore: cast_nullable_to_non_nullable
              as dynamic,
      specialCompletionReason: freezed == specialCompletionReason
          ? _self.specialCompletionReason
          : specialCompletionReason // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dailyCount: null == dailyCount
          ? _self.dailyCount
          : dailyCount // ignore: cast_nullable_to_non_nullable
              as int,
      dailyLimit: freezed == dailyLimit
          ? _self.dailyLimit
          : dailyLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      limit: freezed == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      totalDailyUniqueCount: null == totalDailyUniqueCount
          ? _self.totalDailyUniqueCount
          : totalDailyUniqueCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalDailyUniqueLimit: freezed == totalDailyUniqueLimit
          ? _self.totalDailyUniqueLimit
          : totalDailyUniqueLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      dailyUniqueTodayExist: null == dailyUniqueTodayExist
          ? _self.dailyUniqueTodayExist
          : dailyUniqueTodayExist // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$Currency {
  String get name;
  String get symbol;
  String get adUnitName;
  String get adUnitCurrencyName;
  String get adUnitCurrencyIcon;
  double get adUnitCurrencyConversion;

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CurrencyCopyWith<Currency> get copyWith =>
      _$CurrencyCopyWithImpl<Currency>(this as Currency, _$identity);

  /// Serializes this Currency to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Currency &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.adUnitName, adUnitName) ||
                other.adUnitName == adUnitName) &&
            (identical(other.adUnitCurrencyName, adUnitCurrencyName) ||
                other.adUnitCurrencyName == adUnitCurrencyName) &&
            (identical(other.adUnitCurrencyIcon, adUnitCurrencyIcon) ||
                other.adUnitCurrencyIcon == adUnitCurrencyIcon) &&
            (identical(
                    other.adUnitCurrencyConversion, adUnitCurrencyConversion) ||
                other.adUnitCurrencyConversion == adUnitCurrencyConversion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, symbol, adUnitName,
      adUnitCurrencyName, adUnitCurrencyIcon, adUnitCurrencyConversion);

  @override
  String toString() {
    return 'Currency(name: $name, symbol: $symbol, adUnitName: $adUnitName, adUnitCurrencyName: $adUnitCurrencyName, adUnitCurrencyIcon: $adUnitCurrencyIcon, adUnitCurrencyConversion: $adUnitCurrencyConversion)';
  }
}

/// @nodoc
abstract mixin class $CurrencyCopyWith<$Res> {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) _then) =
      _$CurrencyCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String symbol,
      String adUnitName,
      String adUnitCurrencyName,
      String adUnitCurrencyIcon,
      double adUnitCurrencyConversion});
}

/// @nodoc
class _$CurrencyCopyWithImpl<$Res> implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._self, this._then);

  final Currency _self;
  final $Res Function(Currency) _then;

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? symbol = null,
    Object? adUnitName = null,
    Object? adUnitCurrencyName = null,
    Object? adUnitCurrencyIcon = null,
    Object? adUnitCurrencyConversion = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _self.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      adUnitName: null == adUnitName
          ? _self.adUnitName
          : adUnitName // ignore: cast_nullable_to_non_nullable
              as String,
      adUnitCurrencyName: null == adUnitCurrencyName
          ? _self.adUnitCurrencyName
          : adUnitCurrencyName // ignore: cast_nullable_to_non_nullable
              as String,
      adUnitCurrencyIcon: null == adUnitCurrencyIcon
          ? _self.adUnitCurrencyIcon
          : adUnitCurrencyIcon // ignore: cast_nullable_to_non_nullable
              as String,
      adUnitCurrencyConversion: null == adUnitCurrencyConversion
          ? _self.adUnitCurrencyConversion
          : adUnitCurrencyConversion // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [Currency].
extension CurrencyPatterns on Currency {
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
    TResult Function(_Currency value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Currency() when $default != null:
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
    TResult Function(_Currency value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Currency():
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
    TResult? Function(_Currency value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Currency() when $default != null:
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
            String name,
            String symbol,
            String adUnitName,
            String adUnitCurrencyName,
            String adUnitCurrencyIcon,
            double adUnitCurrencyConversion)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Currency() when $default != null:
        return $default(
            _that.name,
            _that.symbol,
            _that.adUnitName,
            _that.adUnitCurrencyName,
            _that.adUnitCurrencyIcon,
            _that.adUnitCurrencyConversion);
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
            String name,
            String symbol,
            String adUnitName,
            String adUnitCurrencyName,
            String adUnitCurrencyIcon,
            double adUnitCurrencyConversion)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Currency():
        return $default(
            _that.name,
            _that.symbol,
            _that.adUnitName,
            _that.adUnitCurrencyName,
            _that.adUnitCurrencyIcon,
            _that.adUnitCurrencyConversion);
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
            String name,
            String symbol,
            String adUnitName,
            String adUnitCurrencyName,
            String adUnitCurrencyIcon,
            double adUnitCurrencyConversion)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Currency() when $default != null:
        return $default(
            _that.name,
            _that.symbol,
            _that.adUnitName,
            _that.adUnitCurrencyName,
            _that.adUnitCurrencyIcon,
            _that.adUnitCurrencyConversion);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Currency implements Currency {
  _Currency(
      {this.name = '',
      this.symbol = '',
      this.adUnitName = '',
      this.adUnitCurrencyName = '',
      this.adUnitCurrencyIcon = '',
      this.adUnitCurrencyConversion = 0});
  factory _Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String symbol;
  @override
  @JsonKey()
  final String adUnitName;
  @override
  @JsonKey()
  final String adUnitCurrencyName;
  @override
  @JsonKey()
  final String adUnitCurrencyIcon;
  @override
  @JsonKey()
  final double adUnitCurrencyConversion;

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CurrencyCopyWith<_Currency> get copyWith =>
      __$CurrencyCopyWithImpl<_Currency>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CurrencyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Currency &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.adUnitName, adUnitName) ||
                other.adUnitName == adUnitName) &&
            (identical(other.adUnitCurrencyName, adUnitCurrencyName) ||
                other.adUnitCurrencyName == adUnitCurrencyName) &&
            (identical(other.adUnitCurrencyIcon, adUnitCurrencyIcon) ||
                other.adUnitCurrencyIcon == adUnitCurrencyIcon) &&
            (identical(
                    other.adUnitCurrencyConversion, adUnitCurrencyConversion) ||
                other.adUnitCurrencyConversion == adUnitCurrencyConversion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, symbol, adUnitName,
      adUnitCurrencyName, adUnitCurrencyIcon, adUnitCurrencyConversion);

  @override
  String toString() {
    return 'Currency(name: $name, symbol: $symbol, adUnitName: $adUnitName, adUnitCurrencyName: $adUnitCurrencyName, adUnitCurrencyIcon: $adUnitCurrencyIcon, adUnitCurrencyConversion: $adUnitCurrencyConversion)';
  }
}

/// @nodoc
abstract mixin class _$CurrencyCopyWith<$Res>
    implements $CurrencyCopyWith<$Res> {
  factory _$CurrencyCopyWith(_Currency value, $Res Function(_Currency) _then) =
      __$CurrencyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String symbol,
      String adUnitName,
      String adUnitCurrencyName,
      String adUnitCurrencyIcon,
      double adUnitCurrencyConversion});
}

/// @nodoc
class __$CurrencyCopyWithImpl<$Res> implements _$CurrencyCopyWith<$Res> {
  __$CurrencyCopyWithImpl(this._self, this._then);

  final _Currency _self;
  final $Res Function(_Currency) _then;

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? symbol = null,
    Object? adUnitName = null,
    Object? adUnitCurrencyName = null,
    Object? adUnitCurrencyIcon = null,
    Object? adUnitCurrencyConversion = null,
  }) {
    return _then(_Currency(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _self.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      adUnitName: null == adUnitName
          ? _self.adUnitName
          : adUnitName // ignore: cast_nullable_to_non_nullable
              as String,
      adUnitCurrencyName: null == adUnitCurrencyName
          ? _self.adUnitCurrencyName
          : adUnitCurrencyName // ignore: cast_nullable_to_non_nullable
              as String,
      adUnitCurrencyIcon: null == adUnitCurrencyIcon
          ? _self.adUnitCurrencyIcon
          : adUnitCurrencyIcon // ignore: cast_nullable_to_non_nullable
              as String,
      adUnitCurrencyConversion: null == adUnitCurrencyConversion
          ? _self.adUnitCurrencyConversion
          : adUnitCurrencyConversion // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
