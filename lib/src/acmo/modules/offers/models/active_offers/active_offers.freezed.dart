// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'active_offers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AcmoActiveOffersModel _$AcmoActiveOffersModelFromJson(
    Map<String, dynamic> json) {
  return _AcmoActiveOffersModel.fromJson(json);
}

/// @nodoc
mixin _$AcmoActiveOffersModel {
  List<AcmoActiveOffers> get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this AcmoActiveOffersModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AcmoActiveOffersModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AcmoActiveOffersModelCopyWith<AcmoActiveOffersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcmoActiveOffersModelCopyWith<$Res> {
  factory $AcmoActiveOffersModelCopyWith(AcmoActiveOffersModel value,
          $Res Function(AcmoActiveOffersModel) then) =
      _$AcmoActiveOffersModelCopyWithImpl<$Res, AcmoActiveOffersModel>;
  @useResult
  $Res call({List<AcmoActiveOffers> data, String message});
}

/// @nodoc
class _$AcmoActiveOffersModelCopyWithImpl<$Res,
        $Val extends AcmoActiveOffersModel>
    implements $AcmoActiveOffersModelCopyWith<$Res> {
  _$AcmoActiveOffersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AcmoActiveOffersModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AcmoActiveOffers>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AcmoActiveOffersModelImplCopyWith<$Res>
    implements $AcmoActiveOffersModelCopyWith<$Res> {
  factory _$$AcmoActiveOffersModelImplCopyWith(
          _$AcmoActiveOffersModelImpl value,
          $Res Function(_$AcmoActiveOffersModelImpl) then) =
      __$$AcmoActiveOffersModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AcmoActiveOffers> data, String message});
}

/// @nodoc
class __$$AcmoActiveOffersModelImplCopyWithImpl<$Res>
    extends _$AcmoActiveOffersModelCopyWithImpl<$Res,
        _$AcmoActiveOffersModelImpl>
    implements _$$AcmoActiveOffersModelImplCopyWith<$Res> {
  __$$AcmoActiveOffersModelImplCopyWithImpl(_$AcmoActiveOffersModelImpl _value,
      $Res Function(_$AcmoActiveOffersModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AcmoActiveOffersModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$AcmoActiveOffersModelImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AcmoActiveOffers>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AcmoActiveOffersModelImpl implements _AcmoActiveOffersModel {
  const _$AcmoActiveOffersModelImpl(
      {final List<AcmoActiveOffers> data = const [], this.message = ''})
      : _data = data;

  factory _$AcmoActiveOffersModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AcmoActiveOffersModelImplFromJson(json);

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

  @override
  String toString() {
    return 'AcmoActiveOffersModel(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcmoActiveOffersModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), message);

  /// Create a copy of AcmoActiveOffersModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcmoActiveOffersModelImplCopyWith<_$AcmoActiveOffersModelImpl>
      get copyWith => __$$AcmoActiveOffersModelImplCopyWithImpl<
          _$AcmoActiveOffersModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcmoActiveOffersModelImplToJson(
      this,
    );
  }
}

abstract class _AcmoActiveOffersModel implements AcmoActiveOffersModel {
  const factory _AcmoActiveOffersModel(
      {final List<AcmoActiveOffers> data,
      final String message}) = _$AcmoActiveOffersModelImpl;

  factory _AcmoActiveOffersModel.fromJson(Map<String, dynamic> json) =
      _$AcmoActiveOffersModelImpl.fromJson;

  @override
  List<AcmoActiveOffers> get data;
  @override
  String get message;

  /// Create a copy of AcmoActiveOffersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcmoActiveOffersModelImplCopyWith<_$AcmoActiveOffersModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AcmoActiveOffers _$AcmoActiveOffersFromJson(Map<String, dynamic> json) {
  return _AcmoActiveOffers.fromJson(json);
}

/// @nodoc
mixin _$AcmoActiveOffers {
  String get groupName => throw _privateConstructorUsedError;
  List<ActiveCampaign> get campaigns => throw _privateConstructorUsedError;

  /// Serializes this AcmoActiveOffers to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AcmoActiveOffers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AcmoActiveOffersCopyWith<AcmoActiveOffers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcmoActiveOffersCopyWith<$Res> {
  factory $AcmoActiveOffersCopyWith(
          AcmoActiveOffers value, $Res Function(AcmoActiveOffers) then) =
      _$AcmoActiveOffersCopyWithImpl<$Res, AcmoActiveOffers>;
  @useResult
  $Res call({String groupName, List<ActiveCampaign> campaigns});
}

/// @nodoc
class _$AcmoActiveOffersCopyWithImpl<$Res, $Val extends AcmoActiveOffers>
    implements $AcmoActiveOffersCopyWith<$Res> {
  _$AcmoActiveOffersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AcmoActiveOffers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupName = null,
    Object? campaigns = null,
  }) {
    return _then(_value.copyWith(
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      campaigns: null == campaigns
          ? _value.campaigns
          : campaigns // ignore: cast_nullable_to_non_nullable
              as List<ActiveCampaign>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AcmoActiveOffersImplCopyWith<$Res>
    implements $AcmoActiveOffersCopyWith<$Res> {
  factory _$$AcmoActiveOffersImplCopyWith(_$AcmoActiveOffersImpl value,
          $Res Function(_$AcmoActiveOffersImpl) then) =
      __$$AcmoActiveOffersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String groupName, List<ActiveCampaign> campaigns});
}

/// @nodoc
class __$$AcmoActiveOffersImplCopyWithImpl<$Res>
    extends _$AcmoActiveOffersCopyWithImpl<$Res, _$AcmoActiveOffersImpl>
    implements _$$AcmoActiveOffersImplCopyWith<$Res> {
  __$$AcmoActiveOffersImplCopyWithImpl(_$AcmoActiveOffersImpl _value,
      $Res Function(_$AcmoActiveOffersImpl) _then)
      : super(_value, _then);

  /// Create a copy of AcmoActiveOffers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupName = null,
    Object? campaigns = null,
  }) {
    return _then(_$AcmoActiveOffersImpl(
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      campaigns: null == campaigns
          ? _value._campaigns
          : campaigns // ignore: cast_nullable_to_non_nullable
              as List<ActiveCampaign>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AcmoActiveOffersImpl implements _AcmoActiveOffers {
  const _$AcmoActiveOffersImpl(
      {this.groupName = '', final List<ActiveCampaign> campaigns = const []})
      : _campaigns = campaigns;

  factory _$AcmoActiveOffersImpl.fromJson(Map<String, dynamic> json) =>
      _$$AcmoActiveOffersImplFromJson(json);

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

  @override
  String toString() {
    return 'AcmoActiveOffers(groupName: $groupName, campaigns: $campaigns)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcmoActiveOffersImpl &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            const DeepCollectionEquality()
                .equals(other._campaigns, _campaigns));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, groupName, const DeepCollectionEquality().hash(_campaigns));

  /// Create a copy of AcmoActiveOffers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcmoActiveOffersImplCopyWith<_$AcmoActiveOffersImpl> get copyWith =>
      __$$AcmoActiveOffersImplCopyWithImpl<_$AcmoActiveOffersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcmoActiveOffersImplToJson(
      this,
    );
  }
}

abstract class _AcmoActiveOffers implements AcmoActiveOffers {
  const factory _AcmoActiveOffers(
      {final String groupName,
      final List<ActiveCampaign> campaigns}) = _$AcmoActiveOffersImpl;

  factory _AcmoActiveOffers.fromJson(Map<String, dynamic> json) =
      _$AcmoActiveOffersImpl.fromJson;

  @override
  String get groupName;
  @override
  List<ActiveCampaign> get campaigns;

  /// Create a copy of AcmoActiveOffers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcmoActiveOffersImplCopyWith<_$AcmoActiveOffersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ActiveApp _$ActiveAppFromJson(Map<String, dynamic> json) {
  return _ActiveApp.fromJson(json);
}

/// @nodoc
mixin _$ActiveApp {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get packageName => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String get shortDescription => throw _privateConstructorUsedError;
  String get store => throw _privateConstructorUsedError;
  String get storeCategory => throw _privateConstructorUsedError;
  String get previewUrl => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  double get confidenceScore => throw _privateConstructorUsedError;
  String get securityLabel => throw _privateConstructorUsedError;

  /// Serializes this ActiveApp to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActiveApp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActiveAppCopyWith<ActiveApp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveAppCopyWith<$Res> {
  factory $ActiveAppCopyWith(ActiveApp value, $Res Function(ActiveApp) then) =
      _$ActiveAppCopyWithImpl<$Res, ActiveApp>;
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
class _$ActiveAppCopyWithImpl<$Res, $Val extends ActiveApp>
    implements $ActiveAppCopyWith<$Res> {
  _$ActiveAppCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      store: null == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as String,
      storeCategory: null == storeCategory
          ? _value.storeCategory
          : storeCategory // ignore: cast_nullable_to_non_nullable
              as String,
      previewUrl: null == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      confidenceScore: null == confidenceScore
          ? _value.confidenceScore
          : confidenceScore // ignore: cast_nullable_to_non_nullable
              as double,
      securityLabel: null == securityLabel
          ? _value.securityLabel
          : securityLabel // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActiveAppImplCopyWith<$Res>
    implements $ActiveAppCopyWith<$Res> {
  factory _$$ActiveAppImplCopyWith(
          _$ActiveAppImpl value, $Res Function(_$ActiveAppImpl) then) =
      __$$ActiveAppImplCopyWithImpl<$Res>;
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
class __$$ActiveAppImplCopyWithImpl<$Res>
    extends _$ActiveAppCopyWithImpl<$Res, _$ActiveAppImpl>
    implements _$$ActiveAppImplCopyWith<$Res> {
  __$$ActiveAppImplCopyWithImpl(
      _$ActiveAppImpl _value, $Res Function(_$ActiveAppImpl) _then)
      : super(_value, _then);

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
    return _then(_$ActiveAppImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      store: null == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as String,
      storeCategory: null == storeCategory
          ? _value.storeCategory
          : storeCategory // ignore: cast_nullable_to_non_nullable
              as String,
      previewUrl: null == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      confidenceScore: null == confidenceScore
          ? _value.confidenceScore
          : confidenceScore // ignore: cast_nullable_to_non_nullable
              as double,
      securityLabel: null == securityLabel
          ? _value.securityLabel
          : securityLabel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActiveAppImpl implements _ActiveApp {
  const _$ActiveAppImpl(
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

  factory _$ActiveAppImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActiveAppImplFromJson(json);

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

  @override
  String toString() {
    return 'ActiveApp(id: $id, title: $title, packageName: $packageName, rating: $rating, shortDescription: $shortDescription, store: $store, storeCategory: $storeCategory, previewUrl: $previewUrl, thumbnail: $thumbnail, confidenceScore: $confidenceScore, securityLabel: $securityLabel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveAppImpl &&
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

  /// Create a copy of ActiveApp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveAppImplCopyWith<_$ActiveAppImpl> get copyWith =>
      __$$ActiveAppImplCopyWithImpl<_$ActiveAppImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActiveAppImplToJson(
      this,
    );
  }
}

abstract class _ActiveApp implements ActiveApp {
  const factory _ActiveApp(
      {final int id,
      final String title,
      final String packageName,
      final double rating,
      final String shortDescription,
      final String store,
      final String storeCategory,
      final String previewUrl,
      final String thumbnail,
      final double confidenceScore,
      final String securityLabel}) = _$ActiveAppImpl;

  factory _ActiveApp.fromJson(Map<String, dynamic> json) =
      _$ActiveAppImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get packageName;
  @override
  double get rating;
  @override
  String get shortDescription;
  @override
  String get store;
  @override
  String get storeCategory;
  @override
  String get previewUrl;
  @override
  String get thumbnail;
  @override
  double get confidenceScore;
  @override
  String get securityLabel;

  /// Create a copy of ActiveApp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActiveAppImplCopyWith<_$ActiveAppImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CampaignEventSummary _$CampaignEventSummaryFromJson(Map<String, dynamic> json) {
  return _CampaignEventSummary.fromJson(json);
}

/// @nodoc
mixin _$CampaignEventSummary {
  int get playableEventCountAvailable => throw _privateConstructorUsedError;
  int get playableEventCountCompleted => throw _privateConstructorUsedError;
  int get playableEventCountTotal => throw _privateConstructorUsedError;

  /// Serializes this CampaignEventSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CampaignEventSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CampaignEventSummaryCopyWith<CampaignEventSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignEventSummaryCopyWith<$Res> {
  factory $CampaignEventSummaryCopyWith(CampaignEventSummary value,
          $Res Function(CampaignEventSummary) then) =
      _$CampaignEventSummaryCopyWithImpl<$Res, CampaignEventSummary>;
  @useResult
  $Res call(
      {int playableEventCountAvailable,
      int playableEventCountCompleted,
      int playableEventCountTotal});
}

/// @nodoc
class _$CampaignEventSummaryCopyWithImpl<$Res,
        $Val extends CampaignEventSummary>
    implements $CampaignEventSummaryCopyWith<$Res> {
  _$CampaignEventSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CampaignEventSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playableEventCountAvailable = null,
    Object? playableEventCountCompleted = null,
    Object? playableEventCountTotal = null,
  }) {
    return _then(_value.copyWith(
      playableEventCountAvailable: null == playableEventCountAvailable
          ? _value.playableEventCountAvailable
          : playableEventCountAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      playableEventCountCompleted: null == playableEventCountCompleted
          ? _value.playableEventCountCompleted
          : playableEventCountCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      playableEventCountTotal: null == playableEventCountTotal
          ? _value.playableEventCountTotal
          : playableEventCountTotal // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CampaignEventSummaryImplCopyWith<$Res>
    implements $CampaignEventSummaryCopyWith<$Res> {
  factory _$$CampaignEventSummaryImplCopyWith(_$CampaignEventSummaryImpl value,
          $Res Function(_$CampaignEventSummaryImpl) then) =
      __$$CampaignEventSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int playableEventCountAvailable,
      int playableEventCountCompleted,
      int playableEventCountTotal});
}

/// @nodoc
class __$$CampaignEventSummaryImplCopyWithImpl<$Res>
    extends _$CampaignEventSummaryCopyWithImpl<$Res, _$CampaignEventSummaryImpl>
    implements _$$CampaignEventSummaryImplCopyWith<$Res> {
  __$$CampaignEventSummaryImplCopyWithImpl(_$CampaignEventSummaryImpl _value,
      $Res Function(_$CampaignEventSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignEventSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playableEventCountAvailable = null,
    Object? playableEventCountCompleted = null,
    Object? playableEventCountTotal = null,
  }) {
    return _then(_$CampaignEventSummaryImpl(
      playableEventCountAvailable: null == playableEventCountAvailable
          ? _value.playableEventCountAvailable
          : playableEventCountAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      playableEventCountCompleted: null == playableEventCountCompleted
          ? _value.playableEventCountCompleted
          : playableEventCountCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      playableEventCountTotal: null == playableEventCountTotal
          ? _value.playableEventCountTotal
          : playableEventCountTotal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CampaignEventSummaryImpl implements _CampaignEventSummary {
  const _$CampaignEventSummaryImpl(
      {this.playableEventCountAvailable = 0,
      this.playableEventCountCompleted = 0,
      this.playableEventCountTotal = 0});

  factory _$CampaignEventSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CampaignEventSummaryImplFromJson(json);

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
  String toString() {
    return 'CampaignEventSummary(playableEventCountAvailable: $playableEventCountAvailable, playableEventCountCompleted: $playableEventCountCompleted, playableEventCountTotal: $playableEventCountTotal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignEventSummaryImpl &&
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

  /// Create a copy of CampaignEventSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignEventSummaryImplCopyWith<_$CampaignEventSummaryImpl>
      get copyWith =>
          __$$CampaignEventSummaryImplCopyWithImpl<_$CampaignEventSummaryImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampaignEventSummaryImplToJson(
      this,
    );
  }
}

abstract class _CampaignEventSummary implements CampaignEventSummary {
  const factory _CampaignEventSummary(
      {final int playableEventCountAvailable,
      final int playableEventCountCompleted,
      final int playableEventCountTotal}) = _$CampaignEventSummaryImpl;

  factory _CampaignEventSummary.fromJson(Map<String, dynamic> json) =
      _$CampaignEventSummaryImpl.fromJson;

  @override
  int get playableEventCountAvailable;
  @override
  int get playableEventCountCompleted;
  @override
  int get playableEventCountTotal;

  /// Create a copy of CampaignEventSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CampaignEventSummaryImplCopyWith<_$CampaignEventSummaryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ActiveCampaign _$ActiveCampaignFromJson(Map<String, dynamic> json) {
  return _ActiveCampaign.fromJson(json);
}

/// @nodoc
mixin _$ActiveCampaign {
  int get campaignId => throw _privateConstructorUsedError;
  String get campaignName => throw _privateConstructorUsedError;
  String get campaignDescription => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime? get createdOn => throw _privateConstructorUsedError;
  double get sortingScore => throw _privateConstructorUsedError;
  DateTime? get expiredOn => throw _privateConstructorUsedError;
  ActiveApp get app => throw _privateConstructorUsedError;
  bool get isRetryDownload => throw _privateConstructorUsedError;
  bool get capReached => throw _privateConstructorUsedError;
  String? get group => throw _privateConstructorUsedError;
  bool get premium => throw _privateConstructorUsedError;
  bool get isOldUser => throw _privateConstructorUsedError;
  bool get isInstalled => throw _privateConstructorUsedError;
  List<PayoutEvents> get limitedTimeEvents =>
      throw _privateConstructorUsedError;
  CampaignEventSummary get campaignEventSummary =>
      throw _privateConstructorUsedError;

  /// Serializes this ActiveCampaign to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActiveCampaign
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActiveCampaignCopyWith<ActiveCampaign> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveCampaignCopyWith<$Res> {
  factory $ActiveCampaignCopyWith(
          ActiveCampaign value, $Res Function(ActiveCampaign) then) =
      _$ActiveCampaignCopyWithImpl<$Res, ActiveCampaign>;
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
      CampaignEventSummary campaignEventSummary});

  $ActiveAppCopyWith<$Res> get app;
  $CampaignEventSummaryCopyWith<$Res> get campaignEventSummary;
}

/// @nodoc
class _$ActiveCampaignCopyWithImpl<$Res, $Val extends ActiveCampaign>
    implements $ActiveCampaignCopyWith<$Res> {
  _$ActiveCampaignCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
  }) {
    return _then(_value.copyWith(
      campaignId: null == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as int,
      campaignName: null == campaignName
          ? _value.campaignName
          : campaignName // ignore: cast_nullable_to_non_nullable
              as String,
      campaignDescription: null == campaignDescription
          ? _value.campaignDescription
          : campaignDescription // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sortingScore: null == sortingScore
          ? _value.sortingScore
          : sortingScore // ignore: cast_nullable_to_non_nullable
              as double,
      expiredOn: freezed == expiredOn
          ? _value.expiredOn
          : expiredOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      app: null == app
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as ActiveApp,
      isRetryDownload: null == isRetryDownload
          ? _value.isRetryDownload
          : isRetryDownload // ignore: cast_nullable_to_non_nullable
              as bool,
      capReached: null == capReached
          ? _value.capReached
          : capReached // ignore: cast_nullable_to_non_nullable
              as bool,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      premium: null == premium
          ? _value.premium
          : premium // ignore: cast_nullable_to_non_nullable
              as bool,
      isOldUser: null == isOldUser
          ? _value.isOldUser
          : isOldUser // ignore: cast_nullable_to_non_nullable
              as bool,
      isInstalled: null == isInstalled
          ? _value.isInstalled
          : isInstalled // ignore: cast_nullable_to_non_nullable
              as bool,
      limitedTimeEvents: null == limitedTimeEvents
          ? _value.limitedTimeEvents
          : limitedTimeEvents // ignore: cast_nullable_to_non_nullable
              as List<PayoutEvents>,
      campaignEventSummary: null == campaignEventSummary
          ? _value.campaignEventSummary
          : campaignEventSummary // ignore: cast_nullable_to_non_nullable
              as CampaignEventSummary,
    ) as $Val);
  }

  /// Create a copy of ActiveCampaign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActiveAppCopyWith<$Res> get app {
    return $ActiveAppCopyWith<$Res>(_value.app, (value) {
      return _then(_value.copyWith(app: value) as $Val);
    });
  }

  /// Create a copy of ActiveCampaign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CampaignEventSummaryCopyWith<$Res> get campaignEventSummary {
    return $CampaignEventSummaryCopyWith<$Res>(_value.campaignEventSummary,
        (value) {
      return _then(_value.copyWith(campaignEventSummary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActiveCampaignImplCopyWith<$Res>
    implements $ActiveCampaignCopyWith<$Res> {
  factory _$$ActiveCampaignImplCopyWith(_$ActiveCampaignImpl value,
          $Res Function(_$ActiveCampaignImpl) then) =
      __$$ActiveCampaignImplCopyWithImpl<$Res>;
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
      CampaignEventSummary campaignEventSummary});

  @override
  $ActiveAppCopyWith<$Res> get app;
  @override
  $CampaignEventSummaryCopyWith<$Res> get campaignEventSummary;
}

/// @nodoc
class __$$ActiveCampaignImplCopyWithImpl<$Res>
    extends _$ActiveCampaignCopyWithImpl<$Res, _$ActiveCampaignImpl>
    implements _$$ActiveCampaignImplCopyWith<$Res> {
  __$$ActiveCampaignImplCopyWithImpl(
      _$ActiveCampaignImpl _value, $Res Function(_$ActiveCampaignImpl) _then)
      : super(_value, _then);

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
  }) {
    return _then(_$ActiveCampaignImpl(
      campaignId: null == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as int,
      campaignName: null == campaignName
          ? _value.campaignName
          : campaignName // ignore: cast_nullable_to_non_nullable
              as String,
      campaignDescription: null == campaignDescription
          ? _value.campaignDescription
          : campaignDescription // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sortingScore: null == sortingScore
          ? _value.sortingScore
          : sortingScore // ignore: cast_nullable_to_non_nullable
              as double,
      expiredOn: freezed == expiredOn
          ? _value.expiredOn
          : expiredOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      app: null == app
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as ActiveApp,
      isRetryDownload: null == isRetryDownload
          ? _value.isRetryDownload
          : isRetryDownload // ignore: cast_nullable_to_non_nullable
              as bool,
      capReached: null == capReached
          ? _value.capReached
          : capReached // ignore: cast_nullable_to_non_nullable
              as bool,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      premium: null == premium
          ? _value.premium
          : premium // ignore: cast_nullable_to_non_nullable
              as bool,
      isOldUser: null == isOldUser
          ? _value.isOldUser
          : isOldUser // ignore: cast_nullable_to_non_nullable
              as bool,
      isInstalled: null == isInstalled
          ? _value.isInstalled
          : isInstalled // ignore: cast_nullable_to_non_nullable
              as bool,
      limitedTimeEvents: null == limitedTimeEvents
          ? _value._limitedTimeEvents
          : limitedTimeEvents // ignore: cast_nullable_to_non_nullable
              as List<PayoutEvents>,
      campaignEventSummary: null == campaignEventSummary
          ? _value.campaignEventSummary
          : campaignEventSummary // ignore: cast_nullable_to_non_nullable
              as CampaignEventSummary,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActiveCampaignImpl implements _ActiveCampaign {
  const _$ActiveCampaignImpl(
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
      this.campaignEventSummary = CampaignEventSummary.empty})
      : _limitedTimeEvents = limitedTimeEvents;

  factory _$ActiveCampaignImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActiveCampaignImplFromJson(json);

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
  String toString() {
    return 'ActiveCampaign(campaignId: $campaignId, campaignName: $campaignName, campaignDescription: $campaignDescription, status: $status, createdOn: $createdOn, sortingScore: $sortingScore, expiredOn: $expiredOn, app: $app, isRetryDownload: $isRetryDownload, capReached: $capReached, group: $group, premium: $premium, isOldUser: $isOldUser, isInstalled: $isInstalled, limitedTimeEvents: $limitedTimeEvents, campaignEventSummary: $campaignEventSummary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveCampaignImpl &&
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
                other.campaignEventSummary == campaignEventSummary));
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
      campaignEventSummary);

  /// Create a copy of ActiveCampaign
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveCampaignImplCopyWith<_$ActiveCampaignImpl> get copyWith =>
      __$$ActiveCampaignImplCopyWithImpl<_$ActiveCampaignImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActiveCampaignImplToJson(
      this,
    );
  }
}

abstract class _ActiveCampaign implements ActiveCampaign {
  const factory _ActiveCampaign(
      {final int campaignId,
      final String campaignName,
      final String campaignDescription,
      final String status,
      final DateTime? createdOn,
      final double sortingScore,
      final DateTime? expiredOn,
      final ActiveApp app,
      final bool isRetryDownload,
      final bool capReached,
      final String? group,
      final bool premium,
      final bool isOldUser,
      final bool isInstalled,
      final List<PayoutEvents> limitedTimeEvents,
      final CampaignEventSummary campaignEventSummary}) = _$ActiveCampaignImpl;

  factory _ActiveCampaign.fromJson(Map<String, dynamic> json) =
      _$ActiveCampaignImpl.fromJson;

  @override
  int get campaignId;
  @override
  String get campaignName;
  @override
  String get campaignDescription;
  @override
  String get status;
  @override
  DateTime? get createdOn;
  @override
  double get sortingScore;
  @override
  DateTime? get expiredOn;
  @override
  ActiveApp get app;
  @override
  bool get isRetryDownload;
  @override
  bool get capReached;
  @override
  String? get group;
  @override
  bool get premium;
  @override
  bool get isOldUser;
  @override
  bool get isInstalled;
  @override
  List<PayoutEvents> get limitedTimeEvents;
  @override
  CampaignEventSummary get campaignEventSummary;

  /// Create a copy of ActiveCampaign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActiveCampaignImplCopyWith<_$ActiveCampaignImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
