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
            const DeepCollectionEquality().equals(other.campaigns, campaigns));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, groupName, const DeepCollectionEquality().hash(campaigns));

  @override
  String toString() {
    return 'AcmoActiveOffers(groupName: $groupName, campaigns: $campaigns)';
  }
}

/// @nodoc
abstract mixin class $AcmoActiveOffersCopyWith<$Res> {
  factory $AcmoActiveOffersCopyWith(
          AcmoActiveOffers value, $Res Function(AcmoActiveOffers) _then) =
      _$AcmoActiveOffersCopyWithImpl;
  @useResult
  $Res call({String groupName, List<ActiveCampaign> campaigns});
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
    Object? campaigns = null,
  }) {
    return _then(_self.copyWith(
      groupName: null == groupName
          ? _self.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
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
    TResult Function(String groupName, List<ActiveCampaign> campaigns)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AcmoActiveOffers() when $default != null:
        return $default(_that.groupName, _that.campaigns);
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
    TResult Function(String groupName, List<ActiveCampaign> campaigns) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoActiveOffers():
        return $default(_that.groupName, _that.campaigns);
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
    TResult? Function(String groupName, List<ActiveCampaign> campaigns)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcmoActiveOffers() when $default != null:
        return $default(_that.groupName, _that.campaigns);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AcmoActiveOffers implements AcmoActiveOffers {
  const _AcmoActiveOffers(
      {this.groupName = '', final List<ActiveCampaign> campaigns = const []})
      : _campaigns = campaigns;
  factory _AcmoActiveOffers.fromJson(Map<String, dynamic> json) =>
      _$AcmoActiveOffersFromJson(json);

  @override
  @JsonKey()
  final String groupName;
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
                .equals(other._campaigns, _campaigns));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, groupName, const DeepCollectionEquality().hash(_campaigns));

  @override
  String toString() {
    return 'AcmoActiveOffers(groupName: $groupName, campaigns: $campaigns)';
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
  $Res call({String groupName, List<ActiveCampaign> campaigns});
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
    Object? campaigns = null,
  }) {
    return _then(_AcmoActiveOffers(
      groupName: null == groupName
          ? _self.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      campaigns: null == campaigns
          ? _self._campaigns
          : campaigns // ignore: cast_nullable_to_non_nullable
              as List<ActiveCampaign>,
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
                other.playableEventCountTotal == playableEventCountTotal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, playableEventCountAvailable,
      playableEventCountCompleted, playableEventCountTotal);

  @override
  String toString() {
    return 'CampaignEventSummary(playableEventCountAvailable: $playableEventCountAvailable, playableEventCountCompleted: $playableEventCountCompleted, playableEventCountTotal: $playableEventCountTotal)';
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
      int playableEventCountTotal});
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
    TResult Function(int playableEventCountAvailable,
            int playableEventCountCompleted, int playableEventCountTotal)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CampaignEventSummary() when $default != null:
        return $default(_that.playableEventCountAvailable,
            _that.playableEventCountCompleted, _that.playableEventCountTotal);
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
    TResult Function(int playableEventCountAvailable,
            int playableEventCountCompleted, int playableEventCountTotal)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CampaignEventSummary():
        return $default(_that.playableEventCountAvailable,
            _that.playableEventCountCompleted, _that.playableEventCountTotal);
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
    TResult? Function(int playableEventCountAvailable,
            int playableEventCountCompleted, int playableEventCountTotal)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CampaignEventSummary() when $default != null:
        return $default(_that.playableEventCountAvailable,
            _that.playableEventCountCompleted, _that.playableEventCountTotal);
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
      this.playableEventCountTotal = 0});
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
                other.playableEventCountTotal == playableEventCountTotal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, playableEventCountAvailable,
      playableEventCountCompleted, playableEventCountTotal);

  @override
  String toString() {
    return 'CampaignEventSummary(playableEventCountAvailable: $playableEventCountAvailable, playableEventCountCompleted: $playableEventCountCompleted, playableEventCountTotal: $playableEventCountTotal)';
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
      int playableEventCountTotal});
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
    ));
  }
}

/// @nodoc
mixin _$ActiveCampaign {
  int get campaignId;
  String get campaignName;
  String get campaignDescription;
  String get status;
  DateTime? get createdOn;
  double get sortingScore;
  DateTime? get expiredOn;
  ActiveApp get app;
  bool get isRetryDownload;
  bool get capReached;
  String? get group;
  bool get premium;
  bool get isOldUser;
  bool get isInstalled;
  List<PayoutEvents> get limitedTimeEvents;
  CampaignEventSummary get campaignEventSummary;
  Currency? get currency;

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
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.sortingScore, sortingScore) ||
                other.sortingScore == sortingScore) &&
            (identical(other.expiredOn, expiredOn) ||
                other.expiredOn == expiredOn) &&
            (identical(other.app, app) || other.app == app) &&
            (identical(other.isRetryDownload, isRetryDownload) ||
                other.isRetryDownload == isRetryDownload) &&
            (identical(other.capReached, capReached) ||
                other.capReached == capReached) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.premium, premium) || other.premium == premium) &&
            (identical(other.isOldUser, isOldUser) ||
                other.isOldUser == isOldUser) &&
            (identical(other.isInstalled, isInstalled) ||
                other.isInstalled == isInstalled) &&
            const DeepCollectionEquality()
                .equals(other.limitedTimeEvents, limitedTimeEvents) &&
            (identical(other.campaignEventSummary, campaignEventSummary) ||
                other.campaignEventSummary == campaignEventSummary) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      campaignId,
      campaignName,
      campaignDescription,
      status,
      createdOn,
      sortingScore,
      expiredOn,
      app,
      isRetryDownload,
      capReached,
      group,
      premium,
      isOldUser,
      isInstalled,
      const DeepCollectionEquality().hash(limitedTimeEvents),
      campaignEventSummary,
      currency);

  @override
  String toString() {
    return 'ActiveCampaign(campaignId: $campaignId, campaignName: $campaignName, campaignDescription: $campaignDescription, status: $status, createdOn: $createdOn, sortingScore: $sortingScore, expiredOn: $expiredOn, app: $app, isRetryDownload: $isRetryDownload, capReached: $capReached, group: $group, premium: $premium, isOldUser: $isOldUser, isInstalled: $isInstalled, limitedTimeEvents: $limitedTimeEvents, campaignEventSummary: $campaignEventSummary, currency: $currency)';
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
      String status,
      DateTime? createdOn,
      double sortingScore,
      DateTime? expiredOn,
      ActiveApp app,
      bool isRetryDownload,
      bool capReached,
      String? group,
      bool premium,
      bool isOldUser,
      bool isInstalled,
      List<PayoutEvents> limitedTimeEvents,
      CampaignEventSummary campaignEventSummary,
      Currency? currency});

  $ActiveAppCopyWith<$Res> get app;
  $CampaignEventSummaryCopyWith<$Res> get campaignEventSummary;
  $CurrencyCopyWith<$Res>? get currency;
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
    Object? status = null,
    Object? createdOn = freezed,
    Object? sortingScore = null,
    Object? expiredOn = freezed,
    Object? app = null,
    Object? isRetryDownload = null,
    Object? capReached = null,
    Object? group = freezed,
    Object? premium = null,
    Object? isOldUser = null,
    Object? isInstalled = null,
    Object? limitedTimeEvents = null,
    Object? campaignEventSummary = null,
    Object? currency = freezed,
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
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdOn: freezed == createdOn
          ? _self.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sortingScore: null == sortingScore
          ? _self.sortingScore
          : sortingScore // ignore: cast_nullable_to_non_nullable
              as double,
      expiredOn: freezed == expiredOn
          ? _self.expiredOn
          : expiredOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      app: null == app
          ? _self.app
          : app // ignore: cast_nullable_to_non_nullable
              as ActiveApp,
      isRetryDownload: null == isRetryDownload
          ? _self.isRetryDownload
          : isRetryDownload // ignore: cast_nullable_to_non_nullable
              as bool,
      capReached: null == capReached
          ? _self.capReached
          : capReached // ignore: cast_nullable_to_non_nullable
              as bool,
      group: freezed == group
          ? _self.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      premium: null == premium
          ? _self.premium
          : premium // ignore: cast_nullable_to_non_nullable
              as bool,
      isOldUser: null == isOldUser
          ? _self.isOldUser
          : isOldUser // ignore: cast_nullable_to_non_nullable
              as bool,
      isInstalled: null == isInstalled
          ? _self.isInstalled
          : isInstalled // ignore: cast_nullable_to_non_nullable
              as bool,
      limitedTimeEvents: null == limitedTimeEvents
          ? _self.limitedTimeEvents
          : limitedTimeEvents // ignore: cast_nullable_to_non_nullable
              as List<PayoutEvents>,
      campaignEventSummary: null == campaignEventSummary
          ? _self.campaignEventSummary
          : campaignEventSummary // ignore: cast_nullable_to_non_nullable
              as CampaignEventSummary,
      currency: freezed == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency?,
    ));
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
  $CampaignEventSummaryCopyWith<$Res> get campaignEventSummary {
    return $CampaignEventSummaryCopyWith<$Res>(_self.campaignEventSummary,
        (value) {
      return _then(_self.copyWith(campaignEventSummary: value));
    });
  }

  /// Create a copy of ActiveCampaign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrencyCopyWith<$Res>? get currency {
    if (_self.currency == null) {
      return null;
    }

    return $CurrencyCopyWith<$Res>(_self.currency!, (value) {
      return _then(_self.copyWith(currency: value));
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
            String status,
            DateTime? createdOn,
            double sortingScore,
            DateTime? expiredOn,
            ActiveApp app,
            bool isRetryDownload,
            bool capReached,
            String? group,
            bool premium,
            bool isOldUser,
            bool isInstalled,
            List<PayoutEvents> limitedTimeEvents,
            CampaignEventSummary campaignEventSummary,
            Currency? currency)?
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
            _that.status,
            _that.createdOn,
            _that.sortingScore,
            _that.expiredOn,
            _that.app,
            _that.isRetryDownload,
            _that.capReached,
            _that.group,
            _that.premium,
            _that.isOldUser,
            _that.isInstalled,
            _that.limitedTimeEvents,
            _that.campaignEventSummary,
            _that.currency);
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
            String status,
            DateTime? createdOn,
            double sortingScore,
            DateTime? expiredOn,
            ActiveApp app,
            bool isRetryDownload,
            bool capReached,
            String? group,
            bool premium,
            bool isOldUser,
            bool isInstalled,
            List<PayoutEvents> limitedTimeEvents,
            CampaignEventSummary campaignEventSummary,
            Currency? currency)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ActiveCampaign():
        return $default(
            _that.campaignId,
            _that.campaignName,
            _that.campaignDescription,
            _that.status,
            _that.createdOn,
            _that.sortingScore,
            _that.expiredOn,
            _that.app,
            _that.isRetryDownload,
            _that.capReached,
            _that.group,
            _that.premium,
            _that.isOldUser,
            _that.isInstalled,
            _that.limitedTimeEvents,
            _that.campaignEventSummary,
            _that.currency);
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
            String status,
            DateTime? createdOn,
            double sortingScore,
            DateTime? expiredOn,
            ActiveApp app,
            bool isRetryDownload,
            bool capReached,
            String? group,
            bool premium,
            bool isOldUser,
            bool isInstalled,
            List<PayoutEvents> limitedTimeEvents,
            CampaignEventSummary campaignEventSummary,
            Currency? currency)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ActiveCampaign() when $default != null:
        return $default(
            _that.campaignId,
            _that.campaignName,
            _that.campaignDescription,
            _that.status,
            _that.createdOn,
            _that.sortingScore,
            _that.expiredOn,
            _that.app,
            _that.isRetryDownload,
            _that.capReached,
            _that.group,
            _that.premium,
            _that.isOldUser,
            _that.isInstalled,
            _that.limitedTimeEvents,
            _that.campaignEventSummary,
            _that.currency);
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
      this.status = '',
      this.createdOn,
      this.sortingScore = 0,
      this.expiredOn,
      this.app = ActiveApp.empty,
      this.isRetryDownload = false,
      this.capReached = false,
      this.group = null,
      this.premium = false,
      this.isOldUser = false,
      this.isInstalled = false,
      final List<PayoutEvents> limitedTimeEvents = const [],
      this.campaignEventSummary = CampaignEventSummary.empty,
      this.currency})
      : _limitedTimeEvents = limitedTimeEvents;
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
  final String status;
  @override
  final DateTime? createdOn;
  @override
  @JsonKey()
  final double sortingScore;
  @override
  final DateTime? expiredOn;
  @override
  @JsonKey()
  final ActiveApp app;
  @override
  @JsonKey()
  final bool isRetryDownload;
  @override
  @JsonKey()
  final bool capReached;
  @override
  @JsonKey()
  final String? group;
  @override
  @JsonKey()
  final bool premium;
  @override
  @JsonKey()
  final bool isOldUser;
  @override
  @JsonKey()
  final bool isInstalled;
  final List<PayoutEvents> _limitedTimeEvents;
  @override
  @JsonKey()
  List<PayoutEvents> get limitedTimeEvents {
    if (_limitedTimeEvents is EqualUnmodifiableListView)
      return _limitedTimeEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_limitedTimeEvents);
  }

  @override
  @JsonKey()
  final CampaignEventSummary campaignEventSummary;
  @override
  final Currency? currency;

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
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.sortingScore, sortingScore) ||
                other.sortingScore == sortingScore) &&
            (identical(other.expiredOn, expiredOn) ||
                other.expiredOn == expiredOn) &&
            (identical(other.app, app) || other.app == app) &&
            (identical(other.isRetryDownload, isRetryDownload) ||
                other.isRetryDownload == isRetryDownload) &&
            (identical(other.capReached, capReached) ||
                other.capReached == capReached) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.premium, premium) || other.premium == premium) &&
            (identical(other.isOldUser, isOldUser) ||
                other.isOldUser == isOldUser) &&
            (identical(other.isInstalled, isInstalled) ||
                other.isInstalled == isInstalled) &&
            const DeepCollectionEquality()
                .equals(other._limitedTimeEvents, _limitedTimeEvents) &&
            (identical(other.campaignEventSummary, campaignEventSummary) ||
                other.campaignEventSummary == campaignEventSummary) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      campaignId,
      campaignName,
      campaignDescription,
      status,
      createdOn,
      sortingScore,
      expiredOn,
      app,
      isRetryDownload,
      capReached,
      group,
      premium,
      isOldUser,
      isInstalled,
      const DeepCollectionEquality().hash(_limitedTimeEvents),
      campaignEventSummary,
      currency);

  @override
  String toString() {
    return 'ActiveCampaign(campaignId: $campaignId, campaignName: $campaignName, campaignDescription: $campaignDescription, status: $status, createdOn: $createdOn, sortingScore: $sortingScore, expiredOn: $expiredOn, app: $app, isRetryDownload: $isRetryDownload, capReached: $capReached, group: $group, premium: $premium, isOldUser: $isOldUser, isInstalled: $isInstalled, limitedTimeEvents: $limitedTimeEvents, campaignEventSummary: $campaignEventSummary, currency: $currency)';
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
      String status,
      DateTime? createdOn,
      double sortingScore,
      DateTime? expiredOn,
      ActiveApp app,
      bool isRetryDownload,
      bool capReached,
      String? group,
      bool premium,
      bool isOldUser,
      bool isInstalled,
      List<PayoutEvents> limitedTimeEvents,
      CampaignEventSummary campaignEventSummary,
      Currency? currency});

  @override
  $ActiveAppCopyWith<$Res> get app;
  @override
  $CampaignEventSummaryCopyWith<$Res> get campaignEventSummary;
  @override
  $CurrencyCopyWith<$Res>? get currency;
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
    Object? status = null,
    Object? createdOn = freezed,
    Object? sortingScore = null,
    Object? expiredOn = freezed,
    Object? app = null,
    Object? isRetryDownload = null,
    Object? capReached = null,
    Object? group = freezed,
    Object? premium = null,
    Object? isOldUser = null,
    Object? isInstalled = null,
    Object? limitedTimeEvents = null,
    Object? campaignEventSummary = null,
    Object? currency = freezed,
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
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdOn: freezed == createdOn
          ? _self.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sortingScore: null == sortingScore
          ? _self.sortingScore
          : sortingScore // ignore: cast_nullable_to_non_nullable
              as double,
      expiredOn: freezed == expiredOn
          ? _self.expiredOn
          : expiredOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      app: null == app
          ? _self.app
          : app // ignore: cast_nullable_to_non_nullable
              as ActiveApp,
      isRetryDownload: null == isRetryDownload
          ? _self.isRetryDownload
          : isRetryDownload // ignore: cast_nullable_to_non_nullable
              as bool,
      capReached: null == capReached
          ? _self.capReached
          : capReached // ignore: cast_nullable_to_non_nullable
              as bool,
      group: freezed == group
          ? _self.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      premium: null == premium
          ? _self.premium
          : premium // ignore: cast_nullable_to_non_nullable
              as bool,
      isOldUser: null == isOldUser
          ? _self.isOldUser
          : isOldUser // ignore: cast_nullable_to_non_nullable
              as bool,
      isInstalled: null == isInstalled
          ? _self.isInstalled
          : isInstalled // ignore: cast_nullable_to_non_nullable
              as bool,
      limitedTimeEvents: null == limitedTimeEvents
          ? _self._limitedTimeEvents
          : limitedTimeEvents // ignore: cast_nullable_to_non_nullable
              as List<PayoutEvents>,
      campaignEventSummary: null == campaignEventSummary
          ? _self.campaignEventSummary
          : campaignEventSummary // ignore: cast_nullable_to_non_nullable
              as CampaignEventSummary,
      currency: freezed == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency?,
    ));
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
  $CampaignEventSummaryCopyWith<$Res> get campaignEventSummary {
    return $CampaignEventSummaryCopyWith<$Res>(_self.campaignEventSummary,
        (value) {
      return _then(_self.copyWith(campaignEventSummary: value));
    });
  }

  /// Create a copy of ActiveCampaign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrencyCopyWith<$Res>? get currency {
    if (_self.currency == null) {
      return null;
    }

    return $CurrencyCopyWith<$Res>(_self.currency!, (value) {
      return _then(_self.copyWith(currency: value));
    });
  }
}

/// @nodoc
mixin _$PayoutEvents {
  int get id;
  String? get conversionStatus;
  String get identifier;
  String get eventName;
  String get eventDescription;
  String get eventCategory;
  double get payoutAmount;
  double get payoutAmountConverted;
  String get payoutType;
  bool get allowDuplicateEvents;
  int get maxTime;
  String get maxTimeMetric;
  double? get maxTimeRemainSeconds;
  bool get enforceMaxTimeCompletion;
  bool get isLimitedTimeEvent;
  double get limitedTimeEventRemainingSeconds;
  bool get isTicketSubmitted;
  bool get isPlaytime;
  int get totalPlaytime;
  int get dailyCount;
  int get dailyLimit;
  int get count;
  int get limit;

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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.conversionStatus, conversionStatus) ||
                other.conversionStatus == conversionStatus) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName) &&
            (identical(other.eventDescription, eventDescription) ||
                other.eventDescription == eventDescription) &&
            (identical(other.eventCategory, eventCategory) ||
                other.eventCategory == eventCategory) &&
            (identical(other.payoutAmount, payoutAmount) ||
                other.payoutAmount == payoutAmount) &&
            (identical(other.payoutAmountConverted, payoutAmountConverted) ||
                other.payoutAmountConverted == payoutAmountConverted) &&
            (identical(other.payoutType, payoutType) ||
                other.payoutType == payoutType) &&
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
            (identical(other.isPlaytime, isPlaytime) ||
                other.isPlaytime == isPlaytime) &&
            (identical(other.totalPlaytime, totalPlaytime) ||
                other.totalPlaytime == totalPlaytime) &&
            (identical(other.dailyCount, dailyCount) ||
                other.dailyCount == dailyCount) &&
            (identical(other.dailyLimit, dailyLimit) ||
                other.dailyLimit == dailyLimit) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        conversionStatus,
        identifier,
        eventName,
        eventDescription,
        eventCategory,
        payoutAmount,
        payoutAmountConverted,
        payoutType,
        allowDuplicateEvents,
        maxTime,
        maxTimeMetric,
        maxTimeRemainSeconds,
        enforceMaxTimeCompletion,
        isLimitedTimeEvent,
        limitedTimeEventRemainingSeconds,
        isTicketSubmitted,
        isPlaytime,
        totalPlaytime,
        dailyCount,
        dailyLimit,
        count,
        limit
      ]);

  @override
  String toString() {
    return 'PayoutEvents(id: $id, conversionStatus: $conversionStatus, identifier: $identifier, eventName: $eventName, eventDescription: $eventDescription, eventCategory: $eventCategory, payoutAmount: $payoutAmount, payoutAmountConverted: $payoutAmountConverted, payoutType: $payoutType, allowDuplicateEvents: $allowDuplicateEvents, maxTime: $maxTime, maxTimeMetric: $maxTimeMetric, maxTimeRemainSeconds: $maxTimeRemainSeconds, enforceMaxTimeCompletion: $enforceMaxTimeCompletion, isLimitedTimeEvent: $isLimitedTimeEvent, limitedTimeEventRemainingSeconds: $limitedTimeEventRemainingSeconds, isTicketSubmitted: $isTicketSubmitted, isPlaytime: $isPlaytime, totalPlaytime: $totalPlaytime, dailyCount: $dailyCount, dailyLimit: $dailyLimit, count: $count, limit: $limit)';
  }
}

/// @nodoc
abstract mixin class $PayoutEventsCopyWith<$Res> {
  factory $PayoutEventsCopyWith(
          PayoutEvents value, $Res Function(PayoutEvents) _then) =
      _$PayoutEventsCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String? conversionStatus,
      String identifier,
      String eventName,
      String eventDescription,
      String eventCategory,
      double payoutAmount,
      double payoutAmountConverted,
      String payoutType,
      bool allowDuplicateEvents,
      int maxTime,
      String maxTimeMetric,
      double? maxTimeRemainSeconds,
      bool enforceMaxTimeCompletion,
      bool isLimitedTimeEvent,
      double limitedTimeEventRemainingSeconds,
      bool isTicketSubmitted,
      bool isPlaytime,
      int totalPlaytime,
      int dailyCount,
      int dailyLimit,
      int count,
      int limit});
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
    Object? id = null,
    Object? conversionStatus = freezed,
    Object? identifier = null,
    Object? eventName = null,
    Object? eventDescription = null,
    Object? eventCategory = null,
    Object? payoutAmount = null,
    Object? payoutAmountConverted = null,
    Object? payoutType = null,
    Object? allowDuplicateEvents = null,
    Object? maxTime = null,
    Object? maxTimeMetric = null,
    Object? maxTimeRemainSeconds = freezed,
    Object? enforceMaxTimeCompletion = null,
    Object? isLimitedTimeEvent = null,
    Object? limitedTimeEventRemainingSeconds = null,
    Object? isTicketSubmitted = null,
    Object? isPlaytime = null,
    Object? totalPlaytime = null,
    Object? dailyCount = null,
    Object? dailyLimit = null,
    Object? count = null,
    Object? limit = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      conversionStatus: freezed == conversionStatus
          ? _self.conversionStatus
          : conversionStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      identifier: null == identifier
          ? _self.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _self.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      eventDescription: null == eventDescription
          ? _self.eventDescription
          : eventDescription // ignore: cast_nullable_to_non_nullable
              as String,
      eventCategory: null == eventCategory
          ? _self.eventCategory
          : eventCategory // ignore: cast_nullable_to_non_nullable
              as String,
      payoutAmount: null == payoutAmount
          ? _self.payoutAmount
          : payoutAmount // ignore: cast_nullable_to_non_nullable
              as double,
      payoutAmountConverted: null == payoutAmountConverted
          ? _self.payoutAmountConverted
          : payoutAmountConverted // ignore: cast_nullable_to_non_nullable
              as double,
      payoutType: null == payoutType
          ? _self.payoutType
          : payoutType // ignore: cast_nullable_to_non_nullable
              as String,
      allowDuplicateEvents: null == allowDuplicateEvents
          ? _self.allowDuplicateEvents
          : allowDuplicateEvents // ignore: cast_nullable_to_non_nullable
              as bool,
      maxTime: null == maxTime
          ? _self.maxTime
          : maxTime // ignore: cast_nullable_to_non_nullable
              as int,
      maxTimeMetric: null == maxTimeMetric
          ? _self.maxTimeMetric
          : maxTimeMetric // ignore: cast_nullable_to_non_nullable
              as String,
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
      isPlaytime: null == isPlaytime
          ? _self.isPlaytime
          : isPlaytime // ignore: cast_nullable_to_non_nullable
              as bool,
      totalPlaytime: null == totalPlaytime
          ? _self.totalPlaytime
          : totalPlaytime // ignore: cast_nullable_to_non_nullable
              as int,
      dailyCount: null == dailyCount
          ? _self.dailyCount
          : dailyCount // ignore: cast_nullable_to_non_nullable
              as int,
      dailyLimit: null == dailyLimit
          ? _self.dailyLimit
          : dailyLimit // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
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
            int id,
            String? conversionStatus,
            String identifier,
            String eventName,
            String eventDescription,
            String eventCategory,
            double payoutAmount,
            double payoutAmountConverted,
            String payoutType,
            bool allowDuplicateEvents,
            int maxTime,
            String maxTimeMetric,
            double? maxTimeRemainSeconds,
            bool enforceMaxTimeCompletion,
            bool isLimitedTimeEvent,
            double limitedTimeEventRemainingSeconds,
            bool isTicketSubmitted,
            bool isPlaytime,
            int totalPlaytime,
            int dailyCount,
            int dailyLimit,
            int count,
            int limit)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PayoutEvents() when $default != null:
        return $default(
            _that.id,
            _that.conversionStatus,
            _that.identifier,
            _that.eventName,
            _that.eventDescription,
            _that.eventCategory,
            _that.payoutAmount,
            _that.payoutAmountConverted,
            _that.payoutType,
            _that.allowDuplicateEvents,
            _that.maxTime,
            _that.maxTimeMetric,
            _that.maxTimeRemainSeconds,
            _that.enforceMaxTimeCompletion,
            _that.isLimitedTimeEvent,
            _that.limitedTimeEventRemainingSeconds,
            _that.isTicketSubmitted,
            _that.isPlaytime,
            _that.totalPlaytime,
            _that.dailyCount,
            _that.dailyLimit,
            _that.count,
            _that.limit);
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
            String? conversionStatus,
            String identifier,
            String eventName,
            String eventDescription,
            String eventCategory,
            double payoutAmount,
            double payoutAmountConverted,
            String payoutType,
            bool allowDuplicateEvents,
            int maxTime,
            String maxTimeMetric,
            double? maxTimeRemainSeconds,
            bool enforceMaxTimeCompletion,
            bool isLimitedTimeEvent,
            double limitedTimeEventRemainingSeconds,
            bool isTicketSubmitted,
            bool isPlaytime,
            int totalPlaytime,
            int dailyCount,
            int dailyLimit,
            int count,
            int limit)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PayoutEvents():
        return $default(
            _that.id,
            _that.conversionStatus,
            _that.identifier,
            _that.eventName,
            _that.eventDescription,
            _that.eventCategory,
            _that.payoutAmount,
            _that.payoutAmountConverted,
            _that.payoutType,
            _that.allowDuplicateEvents,
            _that.maxTime,
            _that.maxTimeMetric,
            _that.maxTimeRemainSeconds,
            _that.enforceMaxTimeCompletion,
            _that.isLimitedTimeEvent,
            _that.limitedTimeEventRemainingSeconds,
            _that.isTicketSubmitted,
            _that.isPlaytime,
            _that.totalPlaytime,
            _that.dailyCount,
            _that.dailyLimit,
            _that.count,
            _that.limit);
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
            String? conversionStatus,
            String identifier,
            String eventName,
            String eventDescription,
            String eventCategory,
            double payoutAmount,
            double payoutAmountConverted,
            String payoutType,
            bool allowDuplicateEvents,
            int maxTime,
            String maxTimeMetric,
            double? maxTimeRemainSeconds,
            bool enforceMaxTimeCompletion,
            bool isLimitedTimeEvent,
            double limitedTimeEventRemainingSeconds,
            bool isTicketSubmitted,
            bool isPlaytime,
            int totalPlaytime,
            int dailyCount,
            int dailyLimit,
            int count,
            int limit)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PayoutEvents() when $default != null:
        return $default(
            _that.id,
            _that.conversionStatus,
            _that.identifier,
            _that.eventName,
            _that.eventDescription,
            _that.eventCategory,
            _that.payoutAmount,
            _that.payoutAmountConverted,
            _that.payoutType,
            _that.allowDuplicateEvents,
            _that.maxTime,
            _that.maxTimeMetric,
            _that.maxTimeRemainSeconds,
            _that.enforceMaxTimeCompletion,
            _that.isLimitedTimeEvent,
            _that.limitedTimeEventRemainingSeconds,
            _that.isTicketSubmitted,
            _that.isPlaytime,
            _that.totalPlaytime,
            _that.dailyCount,
            _that.dailyLimit,
            _that.count,
            _that.limit);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PayoutEvents implements PayoutEvents {
  _PayoutEvents(
      {this.id = 0,
      this.conversionStatus,
      this.identifier = '',
      this.eventName = '',
      this.eventDescription = '',
      this.eventCategory = '',
      this.payoutAmount = 0,
      this.payoutAmountConverted = 0,
      this.payoutType = '',
      this.allowDuplicateEvents = false,
      this.maxTime = 0,
      this.maxTimeMetric = '',
      this.maxTimeRemainSeconds,
      this.enforceMaxTimeCompletion = false,
      this.isLimitedTimeEvent = false,
      this.limitedTimeEventRemainingSeconds = 0,
      this.isTicketSubmitted = false,
      this.isPlaytime = false,
      this.totalPlaytime = 0,
      this.dailyCount = 0,
      this.dailyLimit = 0,
      this.count = 0,
      this.limit = 0});
  factory _PayoutEvents.fromJson(Map<String, dynamic> json) =>
      _$PayoutEventsFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  final String? conversionStatus;
  @override
  @JsonKey()
  final String identifier;
  @override
  @JsonKey()
  final String eventName;
  @override
  @JsonKey()
  final String eventDescription;
  @override
  @JsonKey()
  final String eventCategory;
  @override
  @JsonKey()
  final double payoutAmount;
  @override
  @JsonKey()
  final double payoutAmountConverted;
  @override
  @JsonKey()
  final String payoutType;
  @override
  @JsonKey()
  final bool allowDuplicateEvents;
  @override
  @JsonKey()
  final int maxTime;
  @override
  @JsonKey()
  final String maxTimeMetric;
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
  @JsonKey()
  final bool isPlaytime;
  @override
  @JsonKey()
  final int totalPlaytime;
  @override
  @JsonKey()
  final int dailyCount;
  @override
  @JsonKey()
  final int dailyLimit;
  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final int limit;

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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.conversionStatus, conversionStatus) ||
                other.conversionStatus == conversionStatus) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName) &&
            (identical(other.eventDescription, eventDescription) ||
                other.eventDescription == eventDescription) &&
            (identical(other.eventCategory, eventCategory) ||
                other.eventCategory == eventCategory) &&
            (identical(other.payoutAmount, payoutAmount) ||
                other.payoutAmount == payoutAmount) &&
            (identical(other.payoutAmountConverted, payoutAmountConverted) ||
                other.payoutAmountConverted == payoutAmountConverted) &&
            (identical(other.payoutType, payoutType) ||
                other.payoutType == payoutType) &&
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
            (identical(other.isPlaytime, isPlaytime) ||
                other.isPlaytime == isPlaytime) &&
            (identical(other.totalPlaytime, totalPlaytime) ||
                other.totalPlaytime == totalPlaytime) &&
            (identical(other.dailyCount, dailyCount) ||
                other.dailyCount == dailyCount) &&
            (identical(other.dailyLimit, dailyLimit) ||
                other.dailyLimit == dailyLimit) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        conversionStatus,
        identifier,
        eventName,
        eventDescription,
        eventCategory,
        payoutAmount,
        payoutAmountConverted,
        payoutType,
        allowDuplicateEvents,
        maxTime,
        maxTimeMetric,
        maxTimeRemainSeconds,
        enforceMaxTimeCompletion,
        isLimitedTimeEvent,
        limitedTimeEventRemainingSeconds,
        isTicketSubmitted,
        isPlaytime,
        totalPlaytime,
        dailyCount,
        dailyLimit,
        count,
        limit
      ]);

  @override
  String toString() {
    return 'PayoutEvents(id: $id, conversionStatus: $conversionStatus, identifier: $identifier, eventName: $eventName, eventDescription: $eventDescription, eventCategory: $eventCategory, payoutAmount: $payoutAmount, payoutAmountConverted: $payoutAmountConverted, payoutType: $payoutType, allowDuplicateEvents: $allowDuplicateEvents, maxTime: $maxTime, maxTimeMetric: $maxTimeMetric, maxTimeRemainSeconds: $maxTimeRemainSeconds, enforceMaxTimeCompletion: $enforceMaxTimeCompletion, isLimitedTimeEvent: $isLimitedTimeEvent, limitedTimeEventRemainingSeconds: $limitedTimeEventRemainingSeconds, isTicketSubmitted: $isTicketSubmitted, isPlaytime: $isPlaytime, totalPlaytime: $totalPlaytime, dailyCount: $dailyCount, dailyLimit: $dailyLimit, count: $count, limit: $limit)';
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
      {int id,
      String? conversionStatus,
      String identifier,
      String eventName,
      String eventDescription,
      String eventCategory,
      double payoutAmount,
      double payoutAmountConverted,
      String payoutType,
      bool allowDuplicateEvents,
      int maxTime,
      String maxTimeMetric,
      double? maxTimeRemainSeconds,
      bool enforceMaxTimeCompletion,
      bool isLimitedTimeEvent,
      double limitedTimeEventRemainingSeconds,
      bool isTicketSubmitted,
      bool isPlaytime,
      int totalPlaytime,
      int dailyCount,
      int dailyLimit,
      int count,
      int limit});
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
    Object? id = null,
    Object? conversionStatus = freezed,
    Object? identifier = null,
    Object? eventName = null,
    Object? eventDescription = null,
    Object? eventCategory = null,
    Object? payoutAmount = null,
    Object? payoutAmountConverted = null,
    Object? payoutType = null,
    Object? allowDuplicateEvents = null,
    Object? maxTime = null,
    Object? maxTimeMetric = null,
    Object? maxTimeRemainSeconds = freezed,
    Object? enforceMaxTimeCompletion = null,
    Object? isLimitedTimeEvent = null,
    Object? limitedTimeEventRemainingSeconds = null,
    Object? isTicketSubmitted = null,
    Object? isPlaytime = null,
    Object? totalPlaytime = null,
    Object? dailyCount = null,
    Object? dailyLimit = null,
    Object? count = null,
    Object? limit = null,
  }) {
    return _then(_PayoutEvents(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      conversionStatus: freezed == conversionStatus
          ? _self.conversionStatus
          : conversionStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      identifier: null == identifier
          ? _self.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _self.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      eventDescription: null == eventDescription
          ? _self.eventDescription
          : eventDescription // ignore: cast_nullable_to_non_nullable
              as String,
      eventCategory: null == eventCategory
          ? _self.eventCategory
          : eventCategory // ignore: cast_nullable_to_non_nullable
              as String,
      payoutAmount: null == payoutAmount
          ? _self.payoutAmount
          : payoutAmount // ignore: cast_nullable_to_non_nullable
              as double,
      payoutAmountConverted: null == payoutAmountConverted
          ? _self.payoutAmountConverted
          : payoutAmountConverted // ignore: cast_nullable_to_non_nullable
              as double,
      payoutType: null == payoutType
          ? _self.payoutType
          : payoutType // ignore: cast_nullable_to_non_nullable
              as String,
      allowDuplicateEvents: null == allowDuplicateEvents
          ? _self.allowDuplicateEvents
          : allowDuplicateEvents // ignore: cast_nullable_to_non_nullable
              as bool,
      maxTime: null == maxTime
          ? _self.maxTime
          : maxTime // ignore: cast_nullable_to_non_nullable
              as int,
      maxTimeMetric: null == maxTimeMetric
          ? _self.maxTimeMetric
          : maxTimeMetric // ignore: cast_nullable_to_non_nullable
              as String,
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
      isPlaytime: null == isPlaytime
          ? _self.isPlaytime
          : isPlaytime // ignore: cast_nullable_to_non_nullable
              as bool,
      totalPlaytime: null == totalPlaytime
          ? _self.totalPlaytime
          : totalPlaytime // ignore: cast_nullable_to_non_nullable
              as int,
      dailyCount: null == dailyCount
          ? _self.dailyCount
          : dailyCount // ignore: cast_nullable_to_non_nullable
              as int,
      dailyLimit: null == dailyLimit
          ? _self.dailyLimit
          : dailyLimit // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
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
