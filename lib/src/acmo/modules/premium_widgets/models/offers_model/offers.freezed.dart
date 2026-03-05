// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AcmoOffersResponseModel {
  int get code;
  List<AcmoOffersModel> get data;
  String get message;
  int get timestamp;
  double get responseTime;

  /// Create a copy of AcmoOffersResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AcmoOffersResponseModelCopyWith<AcmoOffersResponseModel> get copyWith =>
      _$AcmoOffersResponseModelCopyWithImpl<AcmoOffersResponseModel>(
          this as AcmoOffersResponseModel, _$identity);

  /// Serializes this AcmoOffersResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AcmoOffersResponseModel &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.responseTime, responseTime) ||
                other.responseTime == responseTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      const DeepCollectionEquality().hash(data),
      message,
      timestamp,
      responseTime);

  @override
  String toString() {
    return 'AcmoOffersResponseModel(code: $code, data: $data, message: $message, timestamp: $timestamp, responseTime: $responseTime)';
  }
}

/// @nodoc
abstract mixin class $AcmoOffersResponseModelCopyWith<$Res> {
  factory $AcmoOffersResponseModelCopyWith(AcmoOffersResponseModel value,
          $Res Function(AcmoOffersResponseModel) _then) =
      _$AcmoOffersResponseModelCopyWithImpl;
  @useResult
  $Res call(
      {int code,
      List<AcmoOffersModel> data,
      String message,
      int timestamp,
      double responseTime});
}

/// @nodoc
class _$AcmoOffersResponseModelCopyWithImpl<$Res>
    implements $AcmoOffersResponseModelCopyWith<$Res> {
  _$AcmoOffersResponseModelCopyWithImpl(this._self, this._then);

  final AcmoOffersResponseModel _self;
  final $Res Function(AcmoOffersResponseModel) _then;

  /// Create a copy of AcmoOffersResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? data = null,
    Object? message = null,
    Object? timestamp = null,
    Object? responseTime = null,
  }) {
    return _then(_self.copyWith(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AcmoOffersModel>,
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
    ));
  }
}

/// Adds pattern-matching-related methods to [AcmoOffersResponseModel].
extension AcmoOffersResponseModelPatterns on AcmoOffersResponseModel {
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
    TResult Function(_AcmoOffersResponseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AcmoOffersResponseModel() when $default != null:
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
    TResult Function(_AcmoOffersResponseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoOffersResponseModel():
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
    TResult? Function(_AcmoOffersResponseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoOffersResponseModel() when $default != null:
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
    TResult Function(int code, List<AcmoOffersModel> data, String message,
            int timestamp, double responseTime)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AcmoOffersResponseModel() when $default != null:
        return $default(_that.code, _that.data, _that.message, _that.timestamp,
            _that.responseTime);
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
    TResult Function(int code, List<AcmoOffersModel> data, String message,
            int timestamp, double responseTime)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoOffersResponseModel():
        return $default(_that.code, _that.data, _that.message, _that.timestamp,
            _that.responseTime);
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
    TResult? Function(int code, List<AcmoOffersModel> data, String message,
            int timestamp, double responseTime)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoOffersResponseModel() when $default != null:
        return $default(_that.code, _that.data, _that.message, _that.timestamp,
            _that.responseTime);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AcmoOffersResponseModel implements AcmoOffersResponseModel {
  _AcmoOffersResponseModel(
      {required this.code,
      required final List<AcmoOffersModel> data,
      required this.message,
      required this.timestamp,
      required this.responseTime})
      : _data = data;
  factory _AcmoOffersResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AcmoOffersResponseModelFromJson(json);

  @override
  final int code;
  final List<AcmoOffersModel> _data;
  @override
  List<AcmoOffersModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String message;
  @override
  final int timestamp;
  @override
  final double responseTime;

  /// Create a copy of AcmoOffersResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AcmoOffersResponseModelCopyWith<_AcmoOffersResponseModel> get copyWith =>
      __$AcmoOffersResponseModelCopyWithImpl<_AcmoOffersResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AcmoOffersResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AcmoOffersResponseModel &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.responseTime, responseTime) ||
                other.responseTime == responseTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      const DeepCollectionEquality().hash(_data),
      message,
      timestamp,
      responseTime);

  @override
  String toString() {
    return 'AcmoOffersResponseModel(code: $code, data: $data, message: $message, timestamp: $timestamp, responseTime: $responseTime)';
  }
}

/// @nodoc
abstract mixin class _$AcmoOffersResponseModelCopyWith<$Res>
    implements $AcmoOffersResponseModelCopyWith<$Res> {
  factory _$AcmoOffersResponseModelCopyWith(_AcmoOffersResponseModel value,
          $Res Function(_AcmoOffersResponseModel) _then) =
      __$AcmoOffersResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int code,
      List<AcmoOffersModel> data,
      String message,
      int timestamp,
      double responseTime});
}

/// @nodoc
class __$AcmoOffersResponseModelCopyWithImpl<$Res>
    implements _$AcmoOffersResponseModelCopyWith<$Res> {
  __$AcmoOffersResponseModelCopyWithImpl(this._self, this._then);

  final _AcmoOffersResponseModel _self;
  final $Res Function(_AcmoOffersResponseModel) _then;

  /// Create a copy of AcmoOffersResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? data = null,
    Object? message = null,
    Object? timestamp = null,
    Object? responseTime = null,
  }) {
    return _then(_AcmoOffersResponseModel(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AcmoOffersModel>,
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
    ));
  }
}

/// @nodoc
mixin _$AcmoOffersModel {
  int get campaignId;
  String get campaignName;
  String get campaignDescription;
  String get campaignType;
  bool get campaignPremium;
  String get campaignStatus;
  Validity get validity;
  Map<String, AvailableCurrency> get availableCurrencies;
  App get app;
  Targeting get targeting;
  Map<String, PayoutSummary> get payoutSummary;
  Tracking get tracking;
  Creative get creative;
  bool get hasPlaytimeEvents;
  num get sortingScore;

  /// Create a copy of AcmoOffersModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AcmoOffersModelCopyWith<AcmoOffersModel> get copyWith =>
      _$AcmoOffersModelCopyWithImpl<AcmoOffersModel>(
          this as AcmoOffersModel, _$identity);

  /// Serializes this AcmoOffersModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AcmoOffersModel &&
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
            (identical(other.campaignStatus, campaignStatus) ||
                other.campaignStatus == campaignStatus) &&
            (identical(other.validity, validity) ||
                other.validity == validity) &&
            const DeepCollectionEquality()
                .equals(other.availableCurrencies, availableCurrencies) &&
            (identical(other.app, app) || other.app == app) &&
            (identical(other.targeting, targeting) ||
                other.targeting == targeting) &&
            const DeepCollectionEquality()
                .equals(other.payoutSummary, payoutSummary) &&
            (identical(other.tracking, tracking) ||
                other.tracking == tracking) &&
            (identical(other.creative, creative) ||
                other.creative == creative) &&
            (identical(other.hasPlaytimeEvents, hasPlaytimeEvents) ||
                other.hasPlaytimeEvents == hasPlaytimeEvents) &&
            (identical(other.sortingScore, sortingScore) ||
                other.sortingScore == sortingScore));
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
      campaignStatus,
      validity,
      const DeepCollectionEquality().hash(availableCurrencies),
      app,
      targeting,
      const DeepCollectionEquality().hash(payoutSummary),
      tracking,
      creative,
      hasPlaytimeEvents,
      sortingScore);

  @override
  String toString() {
    return 'AcmoOffersModel(campaignId: $campaignId, campaignName: $campaignName, campaignDescription: $campaignDescription, campaignType: $campaignType, campaignPremium: $campaignPremium, campaignStatus: $campaignStatus, validity: $validity, availableCurrencies: $availableCurrencies, app: $app, targeting: $targeting, payoutSummary: $payoutSummary, tracking: $tracking, creative: $creative, hasPlaytimeEvents: $hasPlaytimeEvents, sortingScore: $sortingScore)';
  }
}

/// @nodoc
abstract mixin class $AcmoOffersModelCopyWith<$Res> {
  factory $AcmoOffersModelCopyWith(
          AcmoOffersModel value, $Res Function(AcmoOffersModel) _then) =
      _$AcmoOffersModelCopyWithImpl;
  @useResult
  $Res call(
      {int campaignId,
      String campaignName,
      String campaignDescription,
      String campaignType,
      bool campaignPremium,
      String campaignStatus,
      Validity validity,
      Map<String, AvailableCurrency> availableCurrencies,
      App app,
      Targeting targeting,
      Map<String, PayoutSummary> payoutSummary,
      Tracking tracking,
      Creative creative,
      bool hasPlaytimeEvents,
      num sortingScore});

  $ValidityCopyWith<$Res> get validity;
  $AppCopyWith<$Res> get app;
  $TargetingCopyWith<$Res> get targeting;
  $TrackingCopyWith<$Res> get tracking;
  $CreativeCopyWith<$Res> get creative;
}

/// @nodoc
class _$AcmoOffersModelCopyWithImpl<$Res>
    implements $AcmoOffersModelCopyWith<$Res> {
  _$AcmoOffersModelCopyWithImpl(this._self, this._then);

  final AcmoOffersModel _self;
  final $Res Function(AcmoOffersModel) _then;

  /// Create a copy of AcmoOffersModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? campaignId = null,
    Object? campaignName = null,
    Object? campaignDescription = null,
    Object? campaignType = null,
    Object? campaignPremium = null,
    Object? campaignStatus = null,
    Object? validity = null,
    Object? availableCurrencies = null,
    Object? app = null,
    Object? targeting = null,
    Object? payoutSummary = null,
    Object? tracking = null,
    Object? creative = null,
    Object? hasPlaytimeEvents = null,
    Object? sortingScore = null,
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
      campaignStatus: null == campaignStatus
          ? _self.campaignStatus
          : campaignStatus // ignore: cast_nullable_to_non_nullable
              as String,
      validity: null == validity
          ? _self.validity
          : validity // ignore: cast_nullable_to_non_nullable
              as Validity,
      availableCurrencies: null == availableCurrencies
          ? _self.availableCurrencies
          : availableCurrencies // ignore: cast_nullable_to_non_nullable
              as Map<String, AvailableCurrency>,
      app: null == app
          ? _self.app
          : app // ignore: cast_nullable_to_non_nullable
              as App,
      targeting: null == targeting
          ? _self.targeting
          : targeting // ignore: cast_nullable_to_non_nullable
              as Targeting,
      payoutSummary: null == payoutSummary
          ? _self.payoutSummary
          : payoutSummary // ignore: cast_nullable_to_non_nullable
              as Map<String, PayoutSummary>,
      tracking: null == tracking
          ? _self.tracking
          : tracking // ignore: cast_nullable_to_non_nullable
              as Tracking,
      creative: null == creative
          ? _self.creative
          : creative // ignore: cast_nullable_to_non_nullable
              as Creative,
      hasPlaytimeEvents: null == hasPlaytimeEvents
          ? _self.hasPlaytimeEvents
          : hasPlaytimeEvents // ignore: cast_nullable_to_non_nullable
              as bool,
      sortingScore: null == sortingScore
          ? _self.sortingScore
          : sortingScore // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }

  /// Create a copy of AcmoOffersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValidityCopyWith<$Res> get validity {
    return $ValidityCopyWith<$Res>(_self.validity, (value) {
      return _then(_self.copyWith(validity: value));
    });
  }

  /// Create a copy of AcmoOffersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppCopyWith<$Res> get app {
    return $AppCopyWith<$Res>(_self.app, (value) {
      return _then(_self.copyWith(app: value));
    });
  }

  /// Create a copy of AcmoOffersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TargetingCopyWith<$Res> get targeting {
    return $TargetingCopyWith<$Res>(_self.targeting, (value) {
      return _then(_self.copyWith(targeting: value));
    });
  }

  /// Create a copy of AcmoOffersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrackingCopyWith<$Res> get tracking {
    return $TrackingCopyWith<$Res>(_self.tracking, (value) {
      return _then(_self.copyWith(tracking: value));
    });
  }

  /// Create a copy of AcmoOffersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreativeCopyWith<$Res> get creative {
    return $CreativeCopyWith<$Res>(_self.creative, (value) {
      return _then(_self.copyWith(creative: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AcmoOffersModel].
extension AcmoOffersModelPatterns on AcmoOffersModel {
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
    TResult Function(_AcmoOffersModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AcmoOffersModel() when $default != null:
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
    TResult Function(_AcmoOffersModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoOffersModel():
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
    TResult? Function(_AcmoOffersModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoOffersModel() when $default != null:
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
            String campaignStatus,
            Validity validity,
            Map<String, AvailableCurrency> availableCurrencies,
            App app,
            Targeting targeting,
            Map<String, PayoutSummary> payoutSummary,
            Tracking tracking,
            Creative creative,
            bool hasPlaytimeEvents,
            num sortingScore)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AcmoOffersModel() when $default != null:
        return $default(
            _that.campaignId,
            _that.campaignName,
            _that.campaignDescription,
            _that.campaignType,
            _that.campaignPremium,
            _that.campaignStatus,
            _that.validity,
            _that.availableCurrencies,
            _that.app,
            _that.targeting,
            _that.payoutSummary,
            _that.tracking,
            _that.creative,
            _that.hasPlaytimeEvents,
            _that.sortingScore);
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
            String campaignStatus,
            Validity validity,
            Map<String, AvailableCurrency> availableCurrencies,
            App app,
            Targeting targeting,
            Map<String, PayoutSummary> payoutSummary,
            Tracking tracking,
            Creative creative,
            bool hasPlaytimeEvents,
            num sortingScore)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoOffersModel():
        return $default(
            _that.campaignId,
            _that.campaignName,
            _that.campaignDescription,
            _that.campaignType,
            _that.campaignPremium,
            _that.campaignStatus,
            _that.validity,
            _that.availableCurrencies,
            _that.app,
            _that.targeting,
            _that.payoutSummary,
            _that.tracking,
            _that.creative,
            _that.hasPlaytimeEvents,
            _that.sortingScore);
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
            String campaignStatus,
            Validity validity,
            Map<String, AvailableCurrency> availableCurrencies,
            App app,
            Targeting targeting,
            Map<String, PayoutSummary> payoutSummary,
            Tracking tracking,
            Creative creative,
            bool hasPlaytimeEvents,
            num sortingScore)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoOffersModel() when $default != null:
        return $default(
            _that.campaignId,
            _that.campaignName,
            _that.campaignDescription,
            _that.campaignType,
            _that.campaignPremium,
            _that.campaignStatus,
            _that.validity,
            _that.availableCurrencies,
            _that.app,
            _that.targeting,
            _that.payoutSummary,
            _that.tracking,
            _that.creative,
            _that.hasPlaytimeEvents,
            _that.sortingScore);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AcmoOffersModel implements AcmoOffersModel {
  _AcmoOffersModel(
      {required this.campaignId,
      required this.campaignName,
      this.campaignDescription = '',
      this.campaignType = '',
      this.campaignPremium = false,
      this.campaignStatus = '',
      required this.validity,
      final Map<String, AvailableCurrency> availableCurrencies = const {},
      required this.app,
      required this.targeting,
      final Map<String, PayoutSummary> payoutSummary = const {},
      required this.tracking,
      required this.creative,
      this.hasPlaytimeEvents = false,
      this.sortingScore = 0})
      : _availableCurrencies = availableCurrencies,
        _payoutSummary = payoutSummary;
  factory _AcmoOffersModel.fromJson(Map<String, dynamic> json) =>
      _$AcmoOffersModelFromJson(json);

  @override
  final int campaignId;
  @override
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
  final String campaignStatus;
  @override
  final Validity validity;
  final Map<String, AvailableCurrency> _availableCurrencies;
  @override
  @JsonKey()
  Map<String, AvailableCurrency> get availableCurrencies {
    if (_availableCurrencies is EqualUnmodifiableMapView)
      return _availableCurrencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_availableCurrencies);
  }

  @override
  final App app;
  @override
  final Targeting targeting;
  final Map<String, PayoutSummary> _payoutSummary;
  @override
  @JsonKey()
  Map<String, PayoutSummary> get payoutSummary {
    if (_payoutSummary is EqualUnmodifiableMapView) return _payoutSummary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_payoutSummary);
  }

  @override
  final Tracking tracking;
  @override
  final Creative creative;
  @override
  @JsonKey()
  final bool hasPlaytimeEvents;
  @override
  @JsonKey()
  final num sortingScore;

  /// Create a copy of AcmoOffersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AcmoOffersModelCopyWith<_AcmoOffersModel> get copyWith =>
      __$AcmoOffersModelCopyWithImpl<_AcmoOffersModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AcmoOffersModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AcmoOffersModel &&
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
            (identical(other.campaignStatus, campaignStatus) ||
                other.campaignStatus == campaignStatus) &&
            (identical(other.validity, validity) ||
                other.validity == validity) &&
            const DeepCollectionEquality()
                .equals(other._availableCurrencies, _availableCurrencies) &&
            (identical(other.app, app) || other.app == app) &&
            (identical(other.targeting, targeting) ||
                other.targeting == targeting) &&
            const DeepCollectionEquality()
                .equals(other._payoutSummary, _payoutSummary) &&
            (identical(other.tracking, tracking) ||
                other.tracking == tracking) &&
            (identical(other.creative, creative) ||
                other.creative == creative) &&
            (identical(other.hasPlaytimeEvents, hasPlaytimeEvents) ||
                other.hasPlaytimeEvents == hasPlaytimeEvents) &&
            (identical(other.sortingScore, sortingScore) ||
                other.sortingScore == sortingScore));
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
      campaignStatus,
      validity,
      const DeepCollectionEquality().hash(_availableCurrencies),
      app,
      targeting,
      const DeepCollectionEquality().hash(_payoutSummary),
      tracking,
      creative,
      hasPlaytimeEvents,
      sortingScore);

  @override
  String toString() {
    return 'AcmoOffersModel(campaignId: $campaignId, campaignName: $campaignName, campaignDescription: $campaignDescription, campaignType: $campaignType, campaignPremium: $campaignPremium, campaignStatus: $campaignStatus, validity: $validity, availableCurrencies: $availableCurrencies, app: $app, targeting: $targeting, payoutSummary: $payoutSummary, tracking: $tracking, creative: $creative, hasPlaytimeEvents: $hasPlaytimeEvents, sortingScore: $sortingScore)';
  }
}

/// @nodoc
abstract mixin class _$AcmoOffersModelCopyWith<$Res>
    implements $AcmoOffersModelCopyWith<$Res> {
  factory _$AcmoOffersModelCopyWith(
          _AcmoOffersModel value, $Res Function(_AcmoOffersModel) _then) =
      __$AcmoOffersModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int campaignId,
      String campaignName,
      String campaignDescription,
      String campaignType,
      bool campaignPremium,
      String campaignStatus,
      Validity validity,
      Map<String, AvailableCurrency> availableCurrencies,
      App app,
      Targeting targeting,
      Map<String, PayoutSummary> payoutSummary,
      Tracking tracking,
      Creative creative,
      bool hasPlaytimeEvents,
      num sortingScore});

  @override
  $ValidityCopyWith<$Res> get validity;
  @override
  $AppCopyWith<$Res> get app;
  @override
  $TargetingCopyWith<$Res> get targeting;
  @override
  $TrackingCopyWith<$Res> get tracking;
  @override
  $CreativeCopyWith<$Res> get creative;
}

/// @nodoc
class __$AcmoOffersModelCopyWithImpl<$Res>
    implements _$AcmoOffersModelCopyWith<$Res> {
  __$AcmoOffersModelCopyWithImpl(this._self, this._then);

  final _AcmoOffersModel _self;
  final $Res Function(_AcmoOffersModel) _then;

  /// Create a copy of AcmoOffersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? campaignId = null,
    Object? campaignName = null,
    Object? campaignDescription = null,
    Object? campaignType = null,
    Object? campaignPremium = null,
    Object? campaignStatus = null,
    Object? validity = null,
    Object? availableCurrencies = null,
    Object? app = null,
    Object? targeting = null,
    Object? payoutSummary = null,
    Object? tracking = null,
    Object? creative = null,
    Object? hasPlaytimeEvents = null,
    Object? sortingScore = null,
  }) {
    return _then(_AcmoOffersModel(
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
      campaignStatus: null == campaignStatus
          ? _self.campaignStatus
          : campaignStatus // ignore: cast_nullable_to_non_nullable
              as String,
      validity: null == validity
          ? _self.validity
          : validity // ignore: cast_nullable_to_non_nullable
              as Validity,
      availableCurrencies: null == availableCurrencies
          ? _self._availableCurrencies
          : availableCurrencies // ignore: cast_nullable_to_non_nullable
              as Map<String, AvailableCurrency>,
      app: null == app
          ? _self.app
          : app // ignore: cast_nullable_to_non_nullable
              as App,
      targeting: null == targeting
          ? _self.targeting
          : targeting // ignore: cast_nullable_to_non_nullable
              as Targeting,
      payoutSummary: null == payoutSummary
          ? _self._payoutSummary
          : payoutSummary // ignore: cast_nullable_to_non_nullable
              as Map<String, PayoutSummary>,
      tracking: null == tracking
          ? _self.tracking
          : tracking // ignore: cast_nullable_to_non_nullable
              as Tracking,
      creative: null == creative
          ? _self.creative
          : creative // ignore: cast_nullable_to_non_nullable
              as Creative,
      hasPlaytimeEvents: null == hasPlaytimeEvents
          ? _self.hasPlaytimeEvents
          : hasPlaytimeEvents // ignore: cast_nullable_to_non_nullable
              as bool,
      sortingScore: null == sortingScore
          ? _self.sortingScore
          : sortingScore // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }

  /// Create a copy of AcmoOffersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValidityCopyWith<$Res> get validity {
    return $ValidityCopyWith<$Res>(_self.validity, (value) {
      return _then(_self.copyWith(validity: value));
    });
  }

  /// Create a copy of AcmoOffersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppCopyWith<$Res> get app {
    return $AppCopyWith<$Res>(_self.app, (value) {
      return _then(_self.copyWith(app: value));
    });
  }

  /// Create a copy of AcmoOffersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TargetingCopyWith<$Res> get targeting {
    return $TargetingCopyWith<$Res>(_self.targeting, (value) {
      return _then(_self.copyWith(targeting: value));
    });
  }

  /// Create a copy of AcmoOffersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrackingCopyWith<$Res> get tracking {
    return $TrackingCopyWith<$Res>(_self.tracking, (value) {
      return _then(_self.copyWith(tracking: value));
    });
  }

  /// Create a copy of AcmoOffersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreativeCopyWith<$Res> get creative {
    return $CreativeCopyWith<$Res>(_self.creative, (value) {
      return _then(_self.copyWith(creative: value));
    });
  }
}

/// @nodoc
mixin _$Validity {
  bool get isRetryDownload;
  bool get isActivated;
  bool get isOldUser;
  String? get expiredOn;
  int? get expiredInSeconds;
  bool get isInstalled;

  /// Create a copy of Validity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ValidityCopyWith<Validity> get copyWith =>
      _$ValidityCopyWithImpl<Validity>(this as Validity, _$identity);

  /// Serializes this Validity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Validity &&
            (identical(other.isRetryDownload, isRetryDownload) ||
                other.isRetryDownload == isRetryDownload) &&
            (identical(other.isActivated, isActivated) ||
                other.isActivated == isActivated) &&
            (identical(other.isOldUser, isOldUser) ||
                other.isOldUser == isOldUser) &&
            (identical(other.expiredOn, expiredOn) ||
                other.expiredOn == expiredOn) &&
            (identical(other.expiredInSeconds, expiredInSeconds) ||
                other.expiredInSeconds == expiredInSeconds) &&
            (identical(other.isInstalled, isInstalled) ||
                other.isInstalled == isInstalled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isRetryDownload, isActivated,
      isOldUser, expiredOn, expiredInSeconds, isInstalled);

  @override
  String toString() {
    return 'Validity(isRetryDownload: $isRetryDownload, isActivated: $isActivated, isOldUser: $isOldUser, expiredOn: $expiredOn, expiredInSeconds: $expiredInSeconds, isInstalled: $isInstalled)';
  }
}

/// @nodoc
abstract mixin class $ValidityCopyWith<$Res> {
  factory $ValidityCopyWith(Validity value, $Res Function(Validity) _then) =
      _$ValidityCopyWithImpl;
  @useResult
  $Res call(
      {bool isRetryDownload,
      bool isActivated,
      bool isOldUser,
      String? expiredOn,
      int? expiredInSeconds,
      bool isInstalled});
}

/// @nodoc
class _$ValidityCopyWithImpl<$Res> implements $ValidityCopyWith<$Res> {
  _$ValidityCopyWithImpl(this._self, this._then);

  final Validity _self;
  final $Res Function(Validity) _then;

  /// Create a copy of Validity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRetryDownload = null,
    Object? isActivated = null,
    Object? isOldUser = null,
    Object? expiredOn = freezed,
    Object? expiredInSeconds = freezed,
    Object? isInstalled = null,
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
      expiredOn: freezed == expiredOn
          ? _self.expiredOn
          : expiredOn // ignore: cast_nullable_to_non_nullable
              as String?,
      expiredInSeconds: freezed == expiredInSeconds
          ? _self.expiredInSeconds
          : expiredInSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      isInstalled: null == isInstalled
          ? _self.isInstalled
          : isInstalled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [Validity].
extension ValidityPatterns on Validity {
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
    TResult Function(_Validity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Validity() when $default != null:
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
    TResult Function(_Validity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Validity():
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
    TResult? Function(_Validity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Validity() when $default != null:
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
    TResult Function(bool isRetryDownload, bool isActivated, bool isOldUser,
            String? expiredOn, int? expiredInSeconds, bool isInstalled)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Validity() when $default != null:
        return $default(
            _that.isRetryDownload,
            _that.isActivated,
            _that.isOldUser,
            _that.expiredOn,
            _that.expiredInSeconds,
            _that.isInstalled);
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
    TResult Function(bool isRetryDownload, bool isActivated, bool isOldUser,
            String? expiredOn, int? expiredInSeconds, bool isInstalled)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Validity():
        return $default(
            _that.isRetryDownload,
            _that.isActivated,
            _that.isOldUser,
            _that.expiredOn,
            _that.expiredInSeconds,
            _that.isInstalled);
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
    TResult? Function(bool isRetryDownload, bool isActivated, bool isOldUser,
            String? expiredOn, int? expiredInSeconds, bool isInstalled)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Validity() when $default != null:
        return $default(
            _that.isRetryDownload,
            _that.isActivated,
            _that.isOldUser,
            _that.expiredOn,
            _that.expiredInSeconds,
            _that.isInstalled);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Validity implements Validity {
  _Validity(
      {this.isRetryDownload = false,
      this.isActivated = false,
      this.isOldUser = false,
      this.expiredOn,
      this.expiredInSeconds,
      this.isInstalled = false});
  factory _Validity.fromJson(Map<String, dynamic> json) =>
      _$ValidityFromJson(json);

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
  final String? expiredOn;
  @override
  final int? expiredInSeconds;
  @override
  @JsonKey()
  final bool isInstalled;

  /// Create a copy of Validity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ValidityCopyWith<_Validity> get copyWith =>
      __$ValidityCopyWithImpl<_Validity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ValidityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Validity &&
            (identical(other.isRetryDownload, isRetryDownload) ||
                other.isRetryDownload == isRetryDownload) &&
            (identical(other.isActivated, isActivated) ||
                other.isActivated == isActivated) &&
            (identical(other.isOldUser, isOldUser) ||
                other.isOldUser == isOldUser) &&
            (identical(other.expiredOn, expiredOn) ||
                other.expiredOn == expiredOn) &&
            (identical(other.expiredInSeconds, expiredInSeconds) ||
                other.expiredInSeconds == expiredInSeconds) &&
            (identical(other.isInstalled, isInstalled) ||
                other.isInstalled == isInstalled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isRetryDownload, isActivated,
      isOldUser, expiredOn, expiredInSeconds, isInstalled);

  @override
  String toString() {
    return 'Validity(isRetryDownload: $isRetryDownload, isActivated: $isActivated, isOldUser: $isOldUser, expiredOn: $expiredOn, expiredInSeconds: $expiredInSeconds, isInstalled: $isInstalled)';
  }
}

/// @nodoc
abstract mixin class _$ValidityCopyWith<$Res>
    implements $ValidityCopyWith<$Res> {
  factory _$ValidityCopyWith(_Validity value, $Res Function(_Validity) _then) =
      __$ValidityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isRetryDownload,
      bool isActivated,
      bool isOldUser,
      String? expiredOn,
      int? expiredInSeconds,
      bool isInstalled});
}

/// @nodoc
class __$ValidityCopyWithImpl<$Res> implements _$ValidityCopyWith<$Res> {
  __$ValidityCopyWithImpl(this._self, this._then);

  final _Validity _self;
  final $Res Function(_Validity) _then;

  /// Create a copy of Validity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isRetryDownload = null,
    Object? isActivated = null,
    Object? isOldUser = null,
    Object? expiredOn = freezed,
    Object? expiredInSeconds = freezed,
    Object? isInstalled = null,
  }) {
    return _then(_Validity(
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
      expiredOn: freezed == expiredOn
          ? _self.expiredOn
          : expiredOn // ignore: cast_nullable_to_non_nullable
              as String?,
      expiredInSeconds: freezed == expiredInSeconds
          ? _self.expiredInSeconds
          : expiredInSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      isInstalled: null == isInstalled
          ? _self.isInstalled
          : isInstalled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$AvailableCurrency {
  int get currencyId;
  String get currencyIcon;
  String get currencyName;

  /// Create a copy of AvailableCurrency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AvailableCurrencyCopyWith<AvailableCurrency> get copyWith =>
      _$AvailableCurrencyCopyWithImpl<AvailableCurrency>(
          this as AvailableCurrency, _$identity);

  /// Serializes this AvailableCurrency to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AvailableCurrency &&
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
    return 'AvailableCurrency(currencyId: $currencyId, currencyIcon: $currencyIcon, currencyName: $currencyName)';
  }
}

/// @nodoc
abstract mixin class $AvailableCurrencyCopyWith<$Res> {
  factory $AvailableCurrencyCopyWith(
          AvailableCurrency value, $Res Function(AvailableCurrency) _then) =
      _$AvailableCurrencyCopyWithImpl;
  @useResult
  $Res call({int currencyId, String currencyIcon, String currencyName});
}

/// @nodoc
class _$AvailableCurrencyCopyWithImpl<$Res>
    implements $AvailableCurrencyCopyWith<$Res> {
  _$AvailableCurrencyCopyWithImpl(this._self, this._then);

  final AvailableCurrency _self;
  final $Res Function(AvailableCurrency) _then;

  /// Create a copy of AvailableCurrency
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

/// Adds pattern-matching-related methods to [AvailableCurrency].
extension AvailableCurrencyPatterns on AvailableCurrency {
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
    TResult Function(_AvailableCurrency value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AvailableCurrency() when $default != null:
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
    TResult Function(_AvailableCurrency value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AvailableCurrency():
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
    TResult? Function(_AvailableCurrency value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AvailableCurrency() when $default != null:
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
      case _AvailableCurrency() when $default != null:
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
      case _AvailableCurrency():
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
      case _AvailableCurrency() when $default != null:
        return $default(
            _that.currencyId, _that.currencyIcon, _that.currencyName);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AvailableCurrency implements AvailableCurrency {
  _AvailableCurrency(
      {required this.currencyId,
      required this.currencyIcon,
      required this.currencyName});
  factory _AvailableCurrency.fromJson(Map<String, dynamic> json) =>
      _$AvailableCurrencyFromJson(json);

  @override
  final int currencyId;
  @override
  final String currencyIcon;
  @override
  final String currencyName;

  /// Create a copy of AvailableCurrency
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AvailableCurrencyCopyWith<_AvailableCurrency> get copyWith =>
      __$AvailableCurrencyCopyWithImpl<_AvailableCurrency>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AvailableCurrencyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AvailableCurrency &&
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
    return 'AvailableCurrency(currencyId: $currencyId, currencyIcon: $currencyIcon, currencyName: $currencyName)';
  }
}

/// @nodoc
abstract mixin class _$AvailableCurrencyCopyWith<$Res>
    implements $AvailableCurrencyCopyWith<$Res> {
  factory _$AvailableCurrencyCopyWith(
          _AvailableCurrency value, $Res Function(_AvailableCurrency) _then) =
      __$AvailableCurrencyCopyWithImpl;
  @override
  @useResult
  $Res call({int currencyId, String currencyIcon, String currencyName});
}

/// @nodoc
class __$AvailableCurrencyCopyWithImpl<$Res>
    implements _$AvailableCurrencyCopyWith<$Res> {
  __$AvailableCurrencyCopyWithImpl(this._self, this._then);

  final _AvailableCurrency _self;
  final $Res Function(_AvailableCurrency) _then;

  /// Create a copy of AvailableCurrency
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currencyId = null,
    Object? currencyIcon = null,
    Object? currencyName = null,
  }) {
    return _then(_AvailableCurrency(
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
mixin _$PayoutSummary {
  num get totalPayoutConverted;
  num get totalPlayablePayoutConverted;
  num get totalMicrochargePayoutConverted;

  /// Create a copy of PayoutSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PayoutSummaryCopyWith<PayoutSummary> get copyWith =>
      _$PayoutSummaryCopyWithImpl<PayoutSummary>(
          this as PayoutSummary, _$identity);

  /// Serializes this PayoutSummary to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PayoutSummary &&
            (identical(other.totalPayoutConverted, totalPayoutConverted) ||
                other.totalPayoutConverted == totalPayoutConverted) &&
            (identical(other.totalPlayablePayoutConverted,
                    totalPlayablePayoutConverted) ||
                other.totalPlayablePayoutConverted ==
                    totalPlayablePayoutConverted) &&
            (identical(other.totalMicrochargePayoutConverted,
                    totalMicrochargePayoutConverted) ||
                other.totalMicrochargePayoutConverted ==
                    totalMicrochargePayoutConverted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalPayoutConverted,
      totalPlayablePayoutConverted, totalMicrochargePayoutConverted);

  @override
  String toString() {
    return 'PayoutSummary(totalPayoutConverted: $totalPayoutConverted, totalPlayablePayoutConverted: $totalPlayablePayoutConverted, totalMicrochargePayoutConverted: $totalMicrochargePayoutConverted)';
  }
}

/// @nodoc
abstract mixin class $PayoutSummaryCopyWith<$Res> {
  factory $PayoutSummaryCopyWith(
          PayoutSummary value, $Res Function(PayoutSummary) _then) =
      _$PayoutSummaryCopyWithImpl;
  @useResult
  $Res call(
      {num totalPayoutConverted,
      num totalPlayablePayoutConverted,
      num totalMicrochargePayoutConverted});
}

/// @nodoc
class _$PayoutSummaryCopyWithImpl<$Res>
    implements $PayoutSummaryCopyWith<$Res> {
  _$PayoutSummaryCopyWithImpl(this._self, this._then);

  final PayoutSummary _self;
  final $Res Function(PayoutSummary) _then;

  /// Create a copy of PayoutSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPayoutConverted = null,
    Object? totalPlayablePayoutConverted = null,
    Object? totalMicrochargePayoutConverted = null,
  }) {
    return _then(_self.copyWith(
      totalPayoutConverted: null == totalPayoutConverted
          ? _self.totalPayoutConverted
          : totalPayoutConverted // ignore: cast_nullable_to_non_nullable
              as num,
      totalPlayablePayoutConverted: null == totalPlayablePayoutConverted
          ? _self.totalPlayablePayoutConverted
          : totalPlayablePayoutConverted // ignore: cast_nullable_to_non_nullable
              as num,
      totalMicrochargePayoutConverted: null == totalMicrochargePayoutConverted
          ? _self.totalMicrochargePayoutConverted
          : totalMicrochargePayoutConverted // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// Adds pattern-matching-related methods to [PayoutSummary].
extension PayoutSummaryPatterns on PayoutSummary {
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
    TResult Function(_PayoutSummary value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PayoutSummary() when $default != null:
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
    TResult Function(_PayoutSummary value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PayoutSummary():
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
    TResult? Function(_PayoutSummary value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PayoutSummary() when $default != null:
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
    TResult Function(num totalPayoutConverted, num totalPlayablePayoutConverted,
            num totalMicrochargePayoutConverted)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PayoutSummary() when $default != null:
        return $default(
            _that.totalPayoutConverted,
            _that.totalPlayablePayoutConverted,
            _that.totalMicrochargePayoutConverted);
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
    TResult Function(num totalPayoutConverted, num totalPlayablePayoutConverted,
            num totalMicrochargePayoutConverted)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PayoutSummary():
        return $default(
            _that.totalPayoutConverted,
            _that.totalPlayablePayoutConverted,
            _that.totalMicrochargePayoutConverted);
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
            num totalPayoutConverted,
            num totalPlayablePayoutConverted,
            num totalMicrochargePayoutConverted)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PayoutSummary() when $default != null:
        return $default(
            _that.totalPayoutConverted,
            _that.totalPlayablePayoutConverted,
            _that.totalMicrochargePayoutConverted);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PayoutSummary implements PayoutSummary {
  _PayoutSummary(
      {this.totalPayoutConverted = 0,
      this.totalPlayablePayoutConverted = 0,
      this.totalMicrochargePayoutConverted = 0});
  factory _PayoutSummary.fromJson(Map<String, dynamic> json) =>
      _$PayoutSummaryFromJson(json);

  @override
  @JsonKey()
  final num totalPayoutConverted;
  @override
  @JsonKey()
  final num totalPlayablePayoutConverted;
  @override
  @JsonKey()
  final num totalMicrochargePayoutConverted;

  /// Create a copy of PayoutSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PayoutSummaryCopyWith<_PayoutSummary> get copyWith =>
      __$PayoutSummaryCopyWithImpl<_PayoutSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PayoutSummaryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PayoutSummary &&
            (identical(other.totalPayoutConverted, totalPayoutConverted) ||
                other.totalPayoutConverted == totalPayoutConverted) &&
            (identical(other.totalPlayablePayoutConverted,
                    totalPlayablePayoutConverted) ||
                other.totalPlayablePayoutConverted ==
                    totalPlayablePayoutConverted) &&
            (identical(other.totalMicrochargePayoutConverted,
                    totalMicrochargePayoutConverted) ||
                other.totalMicrochargePayoutConverted ==
                    totalMicrochargePayoutConverted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalPayoutConverted,
      totalPlayablePayoutConverted, totalMicrochargePayoutConverted);

  @override
  String toString() {
    return 'PayoutSummary(totalPayoutConverted: $totalPayoutConverted, totalPlayablePayoutConverted: $totalPlayablePayoutConverted, totalMicrochargePayoutConverted: $totalMicrochargePayoutConverted)';
  }
}

/// @nodoc
abstract mixin class _$PayoutSummaryCopyWith<$Res>
    implements $PayoutSummaryCopyWith<$Res> {
  factory _$PayoutSummaryCopyWith(
          _PayoutSummary value, $Res Function(_PayoutSummary) _then) =
      __$PayoutSummaryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {num totalPayoutConverted,
      num totalPlayablePayoutConverted,
      num totalMicrochargePayoutConverted});
}

/// @nodoc
class __$PayoutSummaryCopyWithImpl<$Res>
    implements _$PayoutSummaryCopyWith<$Res> {
  __$PayoutSummaryCopyWithImpl(this._self, this._then);

  final _PayoutSummary _self;
  final $Res Function(_PayoutSummary) _then;

  /// Create a copy of PayoutSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? totalPayoutConverted = null,
    Object? totalPlayablePayoutConverted = null,
    Object? totalMicrochargePayoutConverted = null,
  }) {
    return _then(_PayoutSummary(
      totalPayoutConverted: null == totalPayoutConverted
          ? _self.totalPayoutConverted
          : totalPayoutConverted // ignore: cast_nullable_to_non_nullable
              as num,
      totalPlayablePayoutConverted: null == totalPlayablePayoutConverted
          ? _self.totalPlayablePayoutConverted
          : totalPlayablePayoutConverted // ignore: cast_nullable_to_non_nullable
              as num,
      totalMicrochargePayoutConverted: null == totalMicrochargePayoutConverted
          ? _self.totalMicrochargePayoutConverted
          : totalMicrochargePayoutConverted // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
mixin _$Creative {
  String get creativeUrl;
  List<CreativePacks> get creativePacks;

  /// Create a copy of Creative
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreativeCopyWith<Creative> get copyWith =>
      _$CreativeCopyWithImpl<Creative>(this as Creative, _$identity);

  /// Serializes this Creative to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Creative &&
            (identical(other.creativeUrl, creativeUrl) ||
                other.creativeUrl == creativeUrl) &&
            const DeepCollectionEquality()
                .equals(other.creativePacks, creativePacks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, creativeUrl,
      const DeepCollectionEquality().hash(creativePacks));

  @override
  String toString() {
    return 'Creative(creativeUrl: $creativeUrl, creativePacks: $creativePacks)';
  }
}

/// @nodoc
abstract mixin class $CreativeCopyWith<$Res> {
  factory $CreativeCopyWith(Creative value, $Res Function(Creative) _then) =
      _$CreativeCopyWithImpl;
  @useResult
  $Res call({String creativeUrl, List<CreativePacks> creativePacks});
}

/// @nodoc
class _$CreativeCopyWithImpl<$Res> implements $CreativeCopyWith<$Res> {
  _$CreativeCopyWithImpl(this._self, this._then);

  final Creative _self;
  final $Res Function(Creative) _then;

  /// Create a copy of Creative
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creativeUrl = null,
    Object? creativePacks = null,
  }) {
    return _then(_self.copyWith(
      creativeUrl: null == creativeUrl
          ? _self.creativeUrl
          : creativeUrl // ignore: cast_nullable_to_non_nullable
              as String,
      creativePacks: null == creativePacks
          ? _self.creativePacks
          : creativePacks // ignore: cast_nullable_to_non_nullable
              as List<CreativePacks>,
    ));
  }
}

/// Adds pattern-matching-related methods to [Creative].
extension CreativePatterns on Creative {
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
    TResult Function(_Creative value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Creative() when $default != null:
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
    TResult Function(_Creative value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Creative():
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
    TResult? Function(_Creative value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Creative() when $default != null:
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
    TResult Function(String creativeUrl, List<CreativePacks> creativePacks)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Creative() when $default != null:
        return $default(_that.creativeUrl, _that.creativePacks);
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
    TResult Function(String creativeUrl, List<CreativePacks> creativePacks)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Creative():
        return $default(_that.creativeUrl, _that.creativePacks);
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
    TResult? Function(String creativeUrl, List<CreativePacks> creativePacks)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Creative() when $default != null:
        return $default(_that.creativeUrl, _that.creativePacks);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Creative implements Creative {
  _Creative(
      {this.creativeUrl = '', required final List<CreativePacks> creativePacks})
      : _creativePacks = creativePacks;
  factory _Creative.fromJson(Map<String, dynamic> json) =>
      _$CreativeFromJson(json);

  @override
  @JsonKey()
  final String creativeUrl;
  final List<CreativePacks> _creativePacks;
  @override
  List<CreativePacks> get creativePacks {
    if (_creativePacks is EqualUnmodifiableListView) return _creativePacks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_creativePacks);
  }

  /// Create a copy of Creative
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreativeCopyWith<_Creative> get copyWith =>
      __$CreativeCopyWithImpl<_Creative>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreativeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Creative &&
            (identical(other.creativeUrl, creativeUrl) ||
                other.creativeUrl == creativeUrl) &&
            const DeepCollectionEquality()
                .equals(other._creativePacks, _creativePacks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, creativeUrl,
      const DeepCollectionEquality().hash(_creativePacks));

  @override
  String toString() {
    return 'Creative(creativeUrl: $creativeUrl, creativePacks: $creativePacks)';
  }
}

/// @nodoc
abstract mixin class _$CreativeCopyWith<$Res>
    implements $CreativeCopyWith<$Res> {
  factory _$CreativeCopyWith(_Creative value, $Res Function(_Creative) _then) =
      __$CreativeCopyWithImpl;
  @override
  @useResult
  $Res call({String creativeUrl, List<CreativePacks> creativePacks});
}

/// @nodoc
class __$CreativeCopyWithImpl<$Res> implements _$CreativeCopyWith<$Res> {
  __$CreativeCopyWithImpl(this._self, this._then);

  final _Creative _self;
  final $Res Function(_Creative) _then;

  /// Create a copy of Creative
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? creativeUrl = null,
    Object? creativePacks = null,
  }) {
    return _then(_Creative(
      creativeUrl: null == creativeUrl
          ? _self.creativeUrl
          : creativeUrl // ignore: cast_nullable_to_non_nullable
              as String,
      creativePacks: null == creativePacks
          ? _self._creativePacks
          : creativePacks // ignore: cast_nullable_to_non_nullable
              as List<CreativePacks>,
    ));
  }
}

/// @nodoc
mixin _$CreativePacks {
  int get creativePackId;
  String get creativePackName;
  String get languageName;
  String get languageCode;
  List<Creatives?> get creatives;

  /// Create a copy of CreativePacks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreativePacksCopyWith<CreativePacks> get copyWith =>
      _$CreativePacksCopyWithImpl<CreativePacks>(
          this as CreativePacks, _$identity);

  /// Serializes this CreativePacks to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreativePacks &&
            (identical(other.creativePackId, creativePackId) ||
                other.creativePackId == creativePackId) &&
            (identical(other.creativePackName, creativePackName) ||
                other.creativePackName == creativePackName) &&
            (identical(other.languageName, languageName) ||
                other.languageName == languageName) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            const DeepCollectionEquality().equals(other.creatives, creatives));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      creativePackId,
      creativePackName,
      languageName,
      languageCode,
      const DeepCollectionEquality().hash(creatives));

  @override
  String toString() {
    return 'CreativePacks(creativePackId: $creativePackId, creativePackName: $creativePackName, languageName: $languageName, languageCode: $languageCode, creatives: $creatives)';
  }
}

/// @nodoc
abstract mixin class $CreativePacksCopyWith<$Res> {
  factory $CreativePacksCopyWith(
          CreativePacks value, $Res Function(CreativePacks) _then) =
      _$CreativePacksCopyWithImpl;
  @useResult
  $Res call(
      {int creativePackId,
      String creativePackName,
      String languageName,
      String languageCode,
      List<Creatives?> creatives});
}

/// @nodoc
class _$CreativePacksCopyWithImpl<$Res>
    implements $CreativePacksCopyWith<$Res> {
  _$CreativePacksCopyWithImpl(this._self, this._then);

  final CreativePacks _self;
  final $Res Function(CreativePacks) _then;

  /// Create a copy of CreativePacks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creativePackId = null,
    Object? creativePackName = null,
    Object? languageName = null,
    Object? languageCode = null,
    Object? creatives = null,
  }) {
    return _then(_self.copyWith(
      creativePackId: null == creativePackId
          ? _self.creativePackId
          : creativePackId // ignore: cast_nullable_to_non_nullable
              as int,
      creativePackName: null == creativePackName
          ? _self.creativePackName
          : creativePackName // ignore: cast_nullable_to_non_nullable
              as String,
      languageName: null == languageName
          ? _self.languageName
          : languageName // ignore: cast_nullable_to_non_nullable
              as String,
      languageCode: null == languageCode
          ? _self.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      creatives: null == creatives
          ? _self.creatives
          : creatives // ignore: cast_nullable_to_non_nullable
              as List<Creatives?>,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreativePacks].
extension CreativePacksPatterns on CreativePacks {
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
    TResult Function(_CreativePacks value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreativePacks() when $default != null:
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
    TResult Function(_CreativePacks value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreativePacks():
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
    TResult? Function(_CreativePacks value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreativePacks() when $default != null:
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
            int creativePackId,
            String creativePackName,
            String languageName,
            String languageCode,
            List<Creatives?> creatives)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreativePacks() when $default != null:
        return $default(_that.creativePackId, _that.creativePackName,
            _that.languageName, _that.languageCode, _that.creatives);
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
            int creativePackId,
            String creativePackName,
            String languageName,
            String languageCode,
            List<Creatives?> creatives)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreativePacks():
        return $default(_that.creativePackId, _that.creativePackName,
            _that.languageName, _that.languageCode, _that.creatives);
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
            int creativePackId,
            String creativePackName,
            String languageName,
            String languageCode,
            List<Creatives?> creatives)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreativePacks() when $default != null:
        return $default(_that.creativePackId, _that.creativePackName,
            _that.languageName, _that.languageCode, _that.creatives);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreativePacks implements CreativePacks {
  _CreativePacks(
      {required this.creativePackId,
      required this.creativePackName,
      required this.languageName,
      required this.languageCode,
      final List<Creatives?> creatives = const []})
      : _creatives = creatives;
  factory _CreativePacks.fromJson(Map<String, dynamic> json) =>
      _$CreativePacksFromJson(json);

  @override
  final int creativePackId;
  @override
  final String creativePackName;
  @override
  final String languageName;
  @override
  final String languageCode;
  final List<Creatives?> _creatives;
  @override
  @JsonKey()
  List<Creatives?> get creatives {
    if (_creatives is EqualUnmodifiableListView) return _creatives;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_creatives);
  }

  /// Create a copy of CreativePacks
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreativePacksCopyWith<_CreativePacks> get copyWith =>
      __$CreativePacksCopyWithImpl<_CreativePacks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreativePacksToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreativePacks &&
            (identical(other.creativePackId, creativePackId) ||
                other.creativePackId == creativePackId) &&
            (identical(other.creativePackName, creativePackName) ||
                other.creativePackName == creativePackName) &&
            (identical(other.languageName, languageName) ||
                other.languageName == languageName) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            const DeepCollectionEquality()
                .equals(other._creatives, _creatives));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      creativePackId,
      creativePackName,
      languageName,
      languageCode,
      const DeepCollectionEquality().hash(_creatives));

  @override
  String toString() {
    return 'CreativePacks(creativePackId: $creativePackId, creativePackName: $creativePackName, languageName: $languageName, languageCode: $languageCode, creatives: $creatives)';
  }
}

/// @nodoc
abstract mixin class _$CreativePacksCopyWith<$Res>
    implements $CreativePacksCopyWith<$Res> {
  factory _$CreativePacksCopyWith(
          _CreativePacks value, $Res Function(_CreativePacks) _then) =
      __$CreativePacksCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int creativePackId,
      String creativePackName,
      String languageName,
      String languageCode,
      List<Creatives?> creatives});
}

/// @nodoc
class __$CreativePacksCopyWithImpl<$Res>
    implements _$CreativePacksCopyWith<$Res> {
  __$CreativePacksCopyWithImpl(this._self, this._then);

  final _CreativePacks _self;
  final $Res Function(_CreativePacks) _then;

  /// Create a copy of CreativePacks
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? creativePackId = null,
    Object? creativePackName = null,
    Object? languageName = null,
    Object? languageCode = null,
    Object? creatives = null,
  }) {
    return _then(_CreativePacks(
      creativePackId: null == creativePackId
          ? _self.creativePackId
          : creativePackId // ignore: cast_nullable_to_non_nullable
              as int,
      creativePackName: null == creativePackName
          ? _self.creativePackName
          : creativePackName // ignore: cast_nullable_to_non_nullable
              as String,
      languageName: null == languageName
          ? _self.languageName
          : languageName // ignore: cast_nullable_to_non_nullable
              as String,
      languageCode: null == languageCode
          ? _self.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      creatives: null == creatives
          ? _self._creatives
          : creatives // ignore: cast_nullable_to_non_nullable
              as List<Creatives?>,
    ));
  }
}

/// @nodoc
mixin _$Creatives {
  int get creativeId;
  String get creativeName;
  String? get callToAction;
  String get text;
  String get byteSize;
  String get fileUrl;
  int? get duration;
  CreativeType get creativeType;

  /// Create a copy of Creatives
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreativesCopyWith<Creatives> get copyWith =>
      _$CreativesCopyWithImpl<Creatives>(this as Creatives, _$identity);

  /// Serializes this Creatives to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Creatives &&
            (identical(other.creativeId, creativeId) ||
                other.creativeId == creativeId) &&
            (identical(other.creativeName, creativeName) ||
                other.creativeName == creativeName) &&
            (identical(other.callToAction, callToAction) ||
                other.callToAction == callToAction) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.byteSize, byteSize) ||
                other.byteSize == byteSize) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.creativeType, creativeType) ||
                other.creativeType == creativeType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, creativeId, creativeName,
      callToAction, text, byteSize, fileUrl, duration, creativeType);

  @override
  String toString() {
    return 'Creatives(creativeId: $creativeId, creativeName: $creativeName, callToAction: $callToAction, text: $text, byteSize: $byteSize, fileUrl: $fileUrl, duration: $duration, creativeType: $creativeType)';
  }
}

/// @nodoc
abstract mixin class $CreativesCopyWith<$Res> {
  factory $CreativesCopyWith(Creatives value, $Res Function(Creatives) _then) =
      _$CreativesCopyWithImpl;
  @useResult
  $Res call(
      {int creativeId,
      String creativeName,
      String? callToAction,
      String text,
      String byteSize,
      String fileUrl,
      int? duration,
      CreativeType creativeType});

  $CreativeTypeCopyWith<$Res> get creativeType;
}

/// @nodoc
class _$CreativesCopyWithImpl<$Res> implements $CreativesCopyWith<$Res> {
  _$CreativesCopyWithImpl(this._self, this._then);

  final Creatives _self;
  final $Res Function(Creatives) _then;

  /// Create a copy of Creatives
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creativeId = null,
    Object? creativeName = null,
    Object? callToAction = freezed,
    Object? text = null,
    Object? byteSize = null,
    Object? fileUrl = null,
    Object? duration = freezed,
    Object? creativeType = null,
  }) {
    return _then(_self.copyWith(
      creativeId: null == creativeId
          ? _self.creativeId
          : creativeId // ignore: cast_nullable_to_non_nullable
              as int,
      creativeName: null == creativeName
          ? _self.creativeName
          : creativeName // ignore: cast_nullable_to_non_nullable
              as String,
      callToAction: freezed == callToAction
          ? _self.callToAction
          : callToAction // ignore: cast_nullable_to_non_nullable
              as String?,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      byteSize: null == byteSize
          ? _self.byteSize
          : byteSize // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: null == fileUrl
          ? _self.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      duration: freezed == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      creativeType: null == creativeType
          ? _self.creativeType
          : creativeType // ignore: cast_nullable_to_non_nullable
              as CreativeType,
    ));
  }

  /// Create a copy of Creatives
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreativeTypeCopyWith<$Res> get creativeType {
    return $CreativeTypeCopyWith<$Res>(_self.creativeType, (value) {
      return _then(_self.copyWith(creativeType: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Creatives].
extension CreativesPatterns on Creatives {
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
    TResult Function(_Creatives value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Creatives() when $default != null:
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
    TResult Function(_Creatives value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Creatives():
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
    TResult? Function(_Creatives value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Creatives() when $default != null:
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
            int creativeId,
            String creativeName,
            String? callToAction,
            String text,
            String byteSize,
            String fileUrl,
            int? duration,
            CreativeType creativeType)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Creatives() when $default != null:
        return $default(
            _that.creativeId,
            _that.creativeName,
            _that.callToAction,
            _that.text,
            _that.byteSize,
            _that.fileUrl,
            _that.duration,
            _that.creativeType);
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
            int creativeId,
            String creativeName,
            String? callToAction,
            String text,
            String byteSize,
            String fileUrl,
            int? duration,
            CreativeType creativeType)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Creatives():
        return $default(
            _that.creativeId,
            _that.creativeName,
            _that.callToAction,
            _that.text,
            _that.byteSize,
            _that.fileUrl,
            _that.duration,
            _that.creativeType);
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
            int creativeId,
            String creativeName,
            String? callToAction,
            String text,
            String byteSize,
            String fileUrl,
            int? duration,
            CreativeType creativeType)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Creatives() when $default != null:
        return $default(
            _that.creativeId,
            _that.creativeName,
            _that.callToAction,
            _that.text,
            _that.byteSize,
            _that.fileUrl,
            _that.duration,
            _that.creativeType);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Creatives implements Creatives {
  _Creatives(
      {required this.creativeId,
      required this.creativeName,
      this.callToAction,
      this.text = '',
      this.byteSize = '',
      this.fileUrl = '',
      this.duration,
      required this.creativeType});
  factory _Creatives.fromJson(Map<String, dynamic> json) =>
      _$CreativesFromJson(json);

  @override
  final int creativeId;
  @override
  final String creativeName;
  @override
  final String? callToAction;
  @override
  @JsonKey()
  final String text;
  @override
  @JsonKey()
  final String byteSize;
  @override
  @JsonKey()
  final String fileUrl;
  @override
  final int? duration;
  @override
  final CreativeType creativeType;

  /// Create a copy of Creatives
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreativesCopyWith<_Creatives> get copyWith =>
      __$CreativesCopyWithImpl<_Creatives>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreativesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Creatives &&
            (identical(other.creativeId, creativeId) ||
                other.creativeId == creativeId) &&
            (identical(other.creativeName, creativeName) ||
                other.creativeName == creativeName) &&
            (identical(other.callToAction, callToAction) ||
                other.callToAction == callToAction) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.byteSize, byteSize) ||
                other.byteSize == byteSize) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.creativeType, creativeType) ||
                other.creativeType == creativeType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, creativeId, creativeName,
      callToAction, text, byteSize, fileUrl, duration, creativeType);

  @override
  String toString() {
    return 'Creatives(creativeId: $creativeId, creativeName: $creativeName, callToAction: $callToAction, text: $text, byteSize: $byteSize, fileUrl: $fileUrl, duration: $duration, creativeType: $creativeType)';
  }
}

/// @nodoc
abstract mixin class _$CreativesCopyWith<$Res>
    implements $CreativesCopyWith<$Res> {
  factory _$CreativesCopyWith(
          _Creatives value, $Res Function(_Creatives) _then) =
      __$CreativesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int creativeId,
      String creativeName,
      String? callToAction,
      String text,
      String byteSize,
      String fileUrl,
      int? duration,
      CreativeType creativeType});

  @override
  $CreativeTypeCopyWith<$Res> get creativeType;
}

/// @nodoc
class __$CreativesCopyWithImpl<$Res> implements _$CreativesCopyWith<$Res> {
  __$CreativesCopyWithImpl(this._self, this._then);

  final _Creatives _self;
  final $Res Function(_Creatives) _then;

  /// Create a copy of Creatives
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? creativeId = null,
    Object? creativeName = null,
    Object? callToAction = freezed,
    Object? text = null,
    Object? byteSize = null,
    Object? fileUrl = null,
    Object? duration = freezed,
    Object? creativeType = null,
  }) {
    return _then(_Creatives(
      creativeId: null == creativeId
          ? _self.creativeId
          : creativeId // ignore: cast_nullable_to_non_nullable
              as int,
      creativeName: null == creativeName
          ? _self.creativeName
          : creativeName // ignore: cast_nullable_to_non_nullable
              as String,
      callToAction: freezed == callToAction
          ? _self.callToAction
          : callToAction // ignore: cast_nullable_to_non_nullable
              as String?,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      byteSize: null == byteSize
          ? _self.byteSize
          : byteSize // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: null == fileUrl
          ? _self.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      duration: freezed == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      creativeType: null == creativeType
          ? _self.creativeType
          : creativeType // ignore: cast_nullable_to_non_nullable
              as CreativeType,
    ));
  }

  /// Create a copy of Creatives
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreativeTypeCopyWith<$Res> get creativeType {
    return $CreativeTypeCopyWith<$Res>(_self.creativeType, (value) {
      return _then(_self.copyWith(creativeType: value));
    });
  }
}

/// @nodoc
mixin _$CreativeType {
  String get name;
  String get type;
  String get width;
  String get height;
  String get creativeCategoryType;

  /// Create a copy of CreativeType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreativeTypeCopyWith<CreativeType> get copyWith =>
      _$CreativeTypeCopyWithImpl<CreativeType>(
          this as CreativeType, _$identity);

  /// Serializes this CreativeType to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreativeType &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.creativeCategoryType, creativeCategoryType) ||
                other.creativeCategoryType == creativeCategoryType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, type, width, height, creativeCategoryType);

  @override
  String toString() {
    return 'CreativeType(name: $name, type: $type, width: $width, height: $height, creativeCategoryType: $creativeCategoryType)';
  }
}

/// @nodoc
abstract mixin class $CreativeTypeCopyWith<$Res> {
  factory $CreativeTypeCopyWith(
          CreativeType value, $Res Function(CreativeType) _then) =
      _$CreativeTypeCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String type,
      String width,
      String height,
      String creativeCategoryType});
}

/// @nodoc
class _$CreativeTypeCopyWithImpl<$Res> implements $CreativeTypeCopyWith<$Res> {
  _$CreativeTypeCopyWithImpl(this._self, this._then);

  final CreativeType _self;
  final $Res Function(CreativeType) _then;

  /// Create a copy of CreativeType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? width = null,
    Object? height = null,
    Object? creativeCategoryType = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      creativeCategoryType: null == creativeCategoryType
          ? _self.creativeCategoryType
          : creativeCategoryType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreativeType].
extension CreativeTypePatterns on CreativeType {
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
    TResult Function(_CreativeType value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreativeType() when $default != null:
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
    TResult Function(_CreativeType value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreativeType():
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
    TResult? Function(_CreativeType value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreativeType() when $default != null:
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
    TResult Function(String name, String type, String width, String height,
            String creativeCategoryType)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreativeType() when $default != null:
        return $default(_that.name, _that.type, _that.width, _that.height,
            _that.creativeCategoryType);
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
    TResult Function(String name, String type, String width, String height,
            String creativeCategoryType)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreativeType():
        return $default(_that.name, _that.type, _that.width, _that.height,
            _that.creativeCategoryType);
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
    TResult? Function(String name, String type, String width, String height,
            String creativeCategoryType)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreativeType() when $default != null:
        return $default(_that.name, _that.type, _that.width, _that.height,
            _that.creativeCategoryType);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreativeType implements CreativeType {
  _CreativeType(
      {required this.name,
      required this.type,
      required this.width,
      required this.height,
      required this.creativeCategoryType});
  factory _CreativeType.fromJson(Map<String, dynamic> json) =>
      _$CreativeTypeFromJson(json);

  @override
  final String name;
  @override
  final String type;
  @override
  final String width;
  @override
  final String height;
  @override
  final String creativeCategoryType;

  /// Create a copy of CreativeType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreativeTypeCopyWith<_CreativeType> get copyWith =>
      __$CreativeTypeCopyWithImpl<_CreativeType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreativeTypeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreativeType &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.creativeCategoryType, creativeCategoryType) ||
                other.creativeCategoryType == creativeCategoryType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, type, width, height, creativeCategoryType);

  @override
  String toString() {
    return 'CreativeType(name: $name, type: $type, width: $width, height: $height, creativeCategoryType: $creativeCategoryType)';
  }
}

/// @nodoc
abstract mixin class _$CreativeTypeCopyWith<$Res>
    implements $CreativeTypeCopyWith<$Res> {
  factory _$CreativeTypeCopyWith(
          _CreativeType value, $Res Function(_CreativeType) _then) =
      __$CreativeTypeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String type,
      String width,
      String height,
      String creativeCategoryType});
}

/// @nodoc
class __$CreativeTypeCopyWithImpl<$Res>
    implements _$CreativeTypeCopyWith<$Res> {
  __$CreativeTypeCopyWithImpl(this._self, this._then);

  final _CreativeType _self;
  final $Res Function(_CreativeType) _then;

  /// Create a copy of CreativeType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? width = null,
    Object? height = null,
    Object? creativeCategoryType = null,
  }) {
    return _then(_CreativeType(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      creativeCategoryType: null == creativeCategoryType
          ? _self.creativeCategoryType
          : creativeCategoryType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$Targeting {
  String? get os;
  String get targetingType;
  Reward? get reward;

  /// Create a copy of Targeting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TargetingCopyWith<Targeting> get copyWith =>
      _$TargetingCopyWithImpl<Targeting>(this as Targeting, _$identity);

  /// Serializes this Targeting to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Targeting &&
            (identical(other.os, os) || other.os == os) &&
            (identical(other.targetingType, targetingType) ||
                other.targetingType == targetingType) &&
            (identical(other.reward, reward) || other.reward == reward));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, os, targetingType, reward);

  @override
  String toString() {
    return 'Targeting(os: $os, targetingType: $targetingType, reward: $reward)';
  }
}

/// @nodoc
abstract mixin class $TargetingCopyWith<$Res> {
  factory $TargetingCopyWith(Targeting value, $Res Function(Targeting) _then) =
      _$TargetingCopyWithImpl;
  @useResult
  $Res call({String? os, String targetingType, Reward? reward});

  $RewardCopyWith<$Res>? get reward;
}

/// @nodoc
class _$TargetingCopyWithImpl<$Res> implements $TargetingCopyWith<$Res> {
  _$TargetingCopyWithImpl(this._self, this._then);

  final Targeting _self;
  final $Res Function(Targeting) _then;

  /// Create a copy of Targeting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? os = freezed,
    Object? targetingType = null,
    Object? reward = freezed,
  }) {
    return _then(_self.copyWith(
      os: freezed == os
          ? _self.os
          : os // ignore: cast_nullable_to_non_nullable
              as String?,
      targetingType: null == targetingType
          ? _self.targetingType
          : targetingType // ignore: cast_nullable_to_non_nullable
              as String,
      reward: freezed == reward
          ? _self.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as Reward?,
    ));
  }

  /// Create a copy of Targeting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardCopyWith<$Res>? get reward {
    if (_self.reward == null) {
      return null;
    }

    return $RewardCopyWith<$Res>(_self.reward!, (value) {
      return _then(_self.copyWith(reward: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Targeting].
extension TargetingPatterns on Targeting {
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
    TResult Function(_Targeting value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Targeting() when $default != null:
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
    TResult Function(_Targeting value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Targeting():
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
    TResult? Function(_Targeting value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Targeting() when $default != null:
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
    TResult Function(String? os, String targetingType, Reward? reward)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Targeting() when $default != null:
        return $default(_that.os, _that.targetingType, _that.reward);
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
    TResult Function(String? os, String targetingType, Reward? reward) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Targeting():
        return $default(_that.os, _that.targetingType, _that.reward);
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
    TResult? Function(String? os, String targetingType, Reward? reward)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Targeting() when $default != null:
        return $default(_that.os, _that.targetingType, _that.reward);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Targeting implements Targeting {
  _Targeting({this.os, this.targetingType = '', this.reward});
  factory _Targeting.fromJson(Map<String, dynamic> json) =>
      _$TargetingFromJson(json);

  @override
  final String? os;
  @override
  @JsonKey()
  final String targetingType;
  @override
  final Reward? reward;

  /// Create a copy of Targeting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TargetingCopyWith<_Targeting> get copyWith =>
      __$TargetingCopyWithImpl<_Targeting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TargetingToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Targeting &&
            (identical(other.os, os) || other.os == os) &&
            (identical(other.targetingType, targetingType) ||
                other.targetingType == targetingType) &&
            (identical(other.reward, reward) || other.reward == reward));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, os, targetingType, reward);

  @override
  String toString() {
    return 'Targeting(os: $os, targetingType: $targetingType, reward: $reward)';
  }
}

/// @nodoc
abstract mixin class _$TargetingCopyWith<$Res>
    implements $TargetingCopyWith<$Res> {
  factory _$TargetingCopyWith(
          _Targeting value, $Res Function(_Targeting) _then) =
      __$TargetingCopyWithImpl;
  @override
  @useResult
  $Res call({String? os, String targetingType, Reward? reward});

  @override
  $RewardCopyWith<$Res>? get reward;
}

/// @nodoc
class __$TargetingCopyWithImpl<$Res> implements _$TargetingCopyWith<$Res> {
  __$TargetingCopyWithImpl(this._self, this._then);

  final _Targeting _self;
  final $Res Function(_Targeting) _then;

  /// Create a copy of Targeting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? os = freezed,
    Object? targetingType = null,
    Object? reward = freezed,
  }) {
    return _then(_Targeting(
      os: freezed == os
          ? _self.os
          : os // ignore: cast_nullable_to_non_nullable
              as String?,
      targetingType: null == targetingType
          ? _self.targetingType
          : targetingType // ignore: cast_nullable_to_non_nullable
              as String,
      reward: freezed == reward
          ? _self.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as Reward?,
    ));
  }

  /// Create a copy of Targeting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardCopyWith<$Res>? get reward {
    if (_self.reward == null) {
      return null;
    }

    return $RewardCopyWith<$Res>(_self.reward!, (value) {
      return _then(_self.copyWith(reward: value));
    });
  }
}

/// @nodoc
mixin _$Tracking {
  String? get attributionTool;
  String? get clickUrl;
  String? get impressionUrl;
  String? get s2sClickUrl;

  /// Create a copy of Tracking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TrackingCopyWith<Tracking> get copyWith =>
      _$TrackingCopyWithImpl<Tracking>(this as Tracking, _$identity);

  /// Serializes this Tracking to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Tracking &&
            (identical(other.attributionTool, attributionTool) ||
                other.attributionTool == attributionTool) &&
            (identical(other.clickUrl, clickUrl) ||
                other.clickUrl == clickUrl) &&
            (identical(other.impressionUrl, impressionUrl) ||
                other.impressionUrl == impressionUrl) &&
            (identical(other.s2sClickUrl, s2sClickUrl) ||
                other.s2sClickUrl == s2sClickUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, attributionTool, clickUrl, impressionUrl, s2sClickUrl);

  @override
  String toString() {
    return 'Tracking(attributionTool: $attributionTool, clickUrl: $clickUrl, impressionUrl: $impressionUrl, s2sClickUrl: $s2sClickUrl)';
  }
}

/// @nodoc
abstract mixin class $TrackingCopyWith<$Res> {
  factory $TrackingCopyWith(Tracking value, $Res Function(Tracking) _then) =
      _$TrackingCopyWithImpl;
  @useResult
  $Res call(
      {String? attributionTool,
      String? clickUrl,
      String? impressionUrl,
      String? s2sClickUrl});
}

/// @nodoc
class _$TrackingCopyWithImpl<$Res> implements $TrackingCopyWith<$Res> {
  _$TrackingCopyWithImpl(this._self, this._then);

  final Tracking _self;
  final $Res Function(Tracking) _then;

  /// Create a copy of Tracking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributionTool = freezed,
    Object? clickUrl = freezed,
    Object? impressionUrl = freezed,
    Object? s2sClickUrl = freezed,
  }) {
    return _then(_self.copyWith(
      attributionTool: freezed == attributionTool
          ? _self.attributionTool
          : attributionTool // ignore: cast_nullable_to_non_nullable
              as String?,
      clickUrl: freezed == clickUrl
          ? _self.clickUrl
          : clickUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      impressionUrl: freezed == impressionUrl
          ? _self.impressionUrl
          : impressionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      s2sClickUrl: freezed == s2sClickUrl
          ? _self.s2sClickUrl
          : s2sClickUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Tracking].
extension TrackingPatterns on Tracking {
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
    TResult Function(_Tracking value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Tracking() when $default != null:
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
    TResult Function(_Tracking value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Tracking():
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
    TResult? Function(_Tracking value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Tracking() when $default != null:
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
    TResult Function(String? attributionTool, String? clickUrl,
            String? impressionUrl, String? s2sClickUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Tracking() when $default != null:
        return $default(_that.attributionTool, _that.clickUrl,
            _that.impressionUrl, _that.s2sClickUrl);
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
    TResult Function(String? attributionTool, String? clickUrl,
            String? impressionUrl, String? s2sClickUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Tracking():
        return $default(_that.attributionTool, _that.clickUrl,
            _that.impressionUrl, _that.s2sClickUrl);
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
    TResult? Function(String? attributionTool, String? clickUrl,
            String? impressionUrl, String? s2sClickUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Tracking() when $default != null:
        return $default(_that.attributionTool, _that.clickUrl,
            _that.impressionUrl, _that.s2sClickUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Tracking implements Tracking {
  _Tracking(
      {this.attributionTool,
      this.clickUrl,
      this.impressionUrl,
      this.s2sClickUrl});
  factory _Tracking.fromJson(Map<String, dynamic> json) =>
      _$TrackingFromJson(json);

  @override
  final String? attributionTool;
  @override
  final String? clickUrl;
  @override
  final String? impressionUrl;
  @override
  final String? s2sClickUrl;

  /// Create a copy of Tracking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TrackingCopyWith<_Tracking> get copyWith =>
      __$TrackingCopyWithImpl<_Tracking>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TrackingToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Tracking &&
            (identical(other.attributionTool, attributionTool) ||
                other.attributionTool == attributionTool) &&
            (identical(other.clickUrl, clickUrl) ||
                other.clickUrl == clickUrl) &&
            (identical(other.impressionUrl, impressionUrl) ||
                other.impressionUrl == impressionUrl) &&
            (identical(other.s2sClickUrl, s2sClickUrl) ||
                other.s2sClickUrl == s2sClickUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, attributionTool, clickUrl, impressionUrl, s2sClickUrl);

  @override
  String toString() {
    return 'Tracking(attributionTool: $attributionTool, clickUrl: $clickUrl, impressionUrl: $impressionUrl, s2sClickUrl: $s2sClickUrl)';
  }
}

/// @nodoc
abstract mixin class _$TrackingCopyWith<$Res>
    implements $TrackingCopyWith<$Res> {
  factory _$TrackingCopyWith(_Tracking value, $Res Function(_Tracking) _then) =
      __$TrackingCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? attributionTool,
      String? clickUrl,
      String? impressionUrl,
      String? s2sClickUrl});
}

/// @nodoc
class __$TrackingCopyWithImpl<$Res> implements _$TrackingCopyWith<$Res> {
  __$TrackingCopyWithImpl(this._self, this._then);

  final _Tracking _self;
  final $Res Function(_Tracking) _then;

  /// Create a copy of Tracking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? attributionTool = freezed,
    Object? clickUrl = freezed,
    Object? impressionUrl = freezed,
    Object? s2sClickUrl = freezed,
  }) {
    return _then(_Tracking(
      attributionTool: freezed == attributionTool
          ? _self.attributionTool
          : attributionTool // ignore: cast_nullable_to_non_nullable
              as String?,
      clickUrl: freezed == clickUrl
          ? _self.clickUrl
          : clickUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      impressionUrl: freezed == impressionUrl
          ? _self.impressionUrl
          : impressionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      s2sClickUrl: freezed == s2sClickUrl
          ? _self.s2sClickUrl
          : s2sClickUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$App {
  int get id;
  String get title;
  String get packageName;
  num get rating;
  String get previewUrl;
  String get shortDescription;
  String get store;
  String get storeCategory;
  String get thumbnail;

  /// Create a copy of App
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppCopyWith<App> get copyWith =>
      _$AppCopyWithImpl<App>(this as App, _$identity);

  /// Serializes this App to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is App &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.store, store) || other.store == store) &&
            (identical(other.storeCategory, storeCategory) ||
                other.storeCategory == storeCategory) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, packageName, rating,
      previewUrl, shortDescription, store, storeCategory, thumbnail);

  @override
  String toString() {
    return 'App(id: $id, title: $title, packageName: $packageName, rating: $rating, previewUrl: $previewUrl, shortDescription: $shortDescription, store: $store, storeCategory: $storeCategory, thumbnail: $thumbnail)';
  }
}

/// @nodoc
abstract mixin class $AppCopyWith<$Res> {
  factory $AppCopyWith(App value, $Res Function(App) _then) = _$AppCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String title,
      String packageName,
      num rating,
      String previewUrl,
      String shortDescription,
      String store,
      String storeCategory,
      String thumbnail});
}

/// @nodoc
class _$AppCopyWithImpl<$Res> implements $AppCopyWith<$Res> {
  _$AppCopyWithImpl(this._self, this._then);

  final App _self;
  final $Res Function(App) _then;

  /// Create a copy of App
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? packageName = null,
    Object? rating = null,
    Object? previewUrl = null,
    Object? shortDescription = null,
    Object? store = null,
    Object? storeCategory = null,
    Object? thumbnail = null,
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
              as num,
      previewUrl: null == previewUrl
          ? _self.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
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
      thumbnail: null == thumbnail
          ? _self.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [App].
extension AppPatterns on App {
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
    TResult Function(_App value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _App() when $default != null:
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
    TResult Function(_App value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _App():
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
    TResult? Function(_App value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _App() when $default != null:
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
            num rating,
            String previewUrl,
            String shortDescription,
            String store,
            String storeCategory,
            String thumbnail)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _App() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.packageName,
            _that.rating,
            _that.previewUrl,
            _that.shortDescription,
            _that.store,
            _that.storeCategory,
            _that.thumbnail);
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
            num rating,
            String previewUrl,
            String shortDescription,
            String store,
            String storeCategory,
            String thumbnail)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _App():
        return $default(
            _that.id,
            _that.title,
            _that.packageName,
            _that.rating,
            _that.previewUrl,
            _that.shortDescription,
            _that.store,
            _that.storeCategory,
            _that.thumbnail);
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
            num rating,
            String previewUrl,
            String shortDescription,
            String store,
            String storeCategory,
            String thumbnail)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _App() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.packageName,
            _that.rating,
            _that.previewUrl,
            _that.shortDescription,
            _that.store,
            _that.storeCategory,
            _that.thumbnail);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _App implements App {
  _App(
      {this.id = 0,
      this.title = '',
      this.packageName = '',
      this.rating = 0,
      this.previewUrl = '',
      this.shortDescription = '',
      this.store = '',
      this.storeCategory = '',
      this.thumbnail = ''});
  factory _App.fromJson(Map<String, dynamic> json) => _$AppFromJson(json);

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
  final num rating;
  @override
  @JsonKey()
  final String previewUrl;
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
  final String thumbnail;

  /// Create a copy of App
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppCopyWith<_App> get copyWith =>
      __$AppCopyWithImpl<_App>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _App &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.store, store) || other.store == store) &&
            (identical(other.storeCategory, storeCategory) ||
                other.storeCategory == storeCategory) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, packageName, rating,
      previewUrl, shortDescription, store, storeCategory, thumbnail);

  @override
  String toString() {
    return 'App(id: $id, title: $title, packageName: $packageName, rating: $rating, previewUrl: $previewUrl, shortDescription: $shortDescription, store: $store, storeCategory: $storeCategory, thumbnail: $thumbnail)';
  }
}

/// @nodoc
abstract mixin class _$AppCopyWith<$Res> implements $AppCopyWith<$Res> {
  factory _$AppCopyWith(_App value, $Res Function(_App) _then) =
      __$AppCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String packageName,
      num rating,
      String previewUrl,
      String shortDescription,
      String store,
      String storeCategory,
      String thumbnail});
}

/// @nodoc
class __$AppCopyWithImpl<$Res> implements _$AppCopyWith<$Res> {
  __$AppCopyWithImpl(this._self, this._then);

  final _App _self;
  final $Res Function(_App) _then;

  /// Create a copy of App
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? packageName = null,
    Object? rating = null,
    Object? previewUrl = null,
    Object? shortDescription = null,
    Object? store = null,
    Object? storeCategory = null,
    Object? thumbnail = null,
  }) {
    return _then(_App(
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
              as num,
      previewUrl: null == previewUrl
          ? _self.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
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
      thumbnail: null == thumbnail
          ? _self.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$Reward {
  String get rewardDifficulty;
  String get incentRewardDescription;

  /// Create a copy of Reward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RewardCopyWith<Reward> get copyWith =>
      _$RewardCopyWithImpl<Reward>(this as Reward, _$identity);

  /// Serializes this Reward to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Reward &&
            (identical(other.rewardDifficulty, rewardDifficulty) ||
                other.rewardDifficulty == rewardDifficulty) &&
            (identical(
                    other.incentRewardDescription, incentRewardDescription) ||
                other.incentRewardDescription == incentRewardDescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, rewardDifficulty, incentRewardDescription);

  @override
  String toString() {
    return 'Reward(rewardDifficulty: $rewardDifficulty, incentRewardDescription: $incentRewardDescription)';
  }
}

/// @nodoc
abstract mixin class $RewardCopyWith<$Res> {
  factory $RewardCopyWith(Reward value, $Res Function(Reward) _then) =
      _$RewardCopyWithImpl;
  @useResult
  $Res call({String rewardDifficulty, String incentRewardDescription});
}

/// @nodoc
class _$RewardCopyWithImpl<$Res> implements $RewardCopyWith<$Res> {
  _$RewardCopyWithImpl(this._self, this._then);

  final Reward _self;
  final $Res Function(Reward) _then;

  /// Create a copy of Reward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rewardDifficulty = null,
    Object? incentRewardDescription = null,
  }) {
    return _then(_self.copyWith(
      rewardDifficulty: null == rewardDifficulty
          ? _self.rewardDifficulty
          : rewardDifficulty // ignore: cast_nullable_to_non_nullable
              as String,
      incentRewardDescription: null == incentRewardDescription
          ? _self.incentRewardDescription
          : incentRewardDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Reward].
extension RewardPatterns on Reward {
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
    TResult Function(_Reward value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Reward() when $default != null:
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
    TResult Function(_Reward value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Reward():
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
    TResult? Function(_Reward value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Reward() when $default != null:
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
    TResult Function(String rewardDifficulty, String incentRewardDescription)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Reward() when $default != null:
        return $default(_that.rewardDifficulty, _that.incentRewardDescription);
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
    TResult Function(String rewardDifficulty, String incentRewardDescription)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Reward():
        return $default(_that.rewardDifficulty, _that.incentRewardDescription);
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
    TResult? Function(String rewardDifficulty, String incentRewardDescription)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Reward() when $default != null:
        return $default(_that.rewardDifficulty, _that.incentRewardDescription);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Reward implements Reward {
  _Reward({this.rewardDifficulty = '', this.incentRewardDescription = ''});
  factory _Reward.fromJson(Map<String, dynamic> json) => _$RewardFromJson(json);

  @override
  @JsonKey()
  final String rewardDifficulty;
  @override
  @JsonKey()
  final String incentRewardDescription;

  /// Create a copy of Reward
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RewardCopyWith<_Reward> get copyWith =>
      __$RewardCopyWithImpl<_Reward>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RewardToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Reward &&
            (identical(other.rewardDifficulty, rewardDifficulty) ||
                other.rewardDifficulty == rewardDifficulty) &&
            (identical(
                    other.incentRewardDescription, incentRewardDescription) ||
                other.incentRewardDescription == incentRewardDescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, rewardDifficulty, incentRewardDescription);

  @override
  String toString() {
    return 'Reward(rewardDifficulty: $rewardDifficulty, incentRewardDescription: $incentRewardDescription)';
  }
}

/// @nodoc
abstract mixin class _$RewardCopyWith<$Res> implements $RewardCopyWith<$Res> {
  factory _$RewardCopyWith(_Reward value, $Res Function(_Reward) _then) =
      __$RewardCopyWithImpl;
  @override
  @useResult
  $Res call({String rewardDifficulty, String incentRewardDescription});
}

/// @nodoc
class __$RewardCopyWithImpl<$Res> implements _$RewardCopyWith<$Res> {
  __$RewardCopyWithImpl(this._self, this._then);

  final _Reward _self;
  final $Res Function(_Reward) _then;

  /// Create a copy of Reward
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? rewardDifficulty = null,
    Object? incentRewardDescription = null,
  }) {
    return _then(_Reward(
      rewardDifficulty: null == rewardDifficulty
          ? _self.rewardDifficulty
          : rewardDifficulty // ignore: cast_nullable_to_non_nullable
              as String,
      incentRewardDescription: null == incentRewardDescription
          ? _self.incentRewardDescription
          : incentRewardDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
