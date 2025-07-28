// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AcmoOfferDetailsResponseModel _$AcmoOfferDetailsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _AcmoOfferDetailsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AcmoOfferDetailsResponseModel {
  AcmoOfferDetailsModel get data => throw _privateConstructorUsedError;

  /// Serializes this AcmoOfferDetailsResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AcmoOfferDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AcmoOfferDetailsResponseModelCopyWith<AcmoOfferDetailsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcmoOfferDetailsResponseModelCopyWith<$Res> {
  factory $AcmoOfferDetailsResponseModelCopyWith(
          AcmoOfferDetailsResponseModel value,
          $Res Function(AcmoOfferDetailsResponseModel) then) =
      _$AcmoOfferDetailsResponseModelCopyWithImpl<$Res,
          AcmoOfferDetailsResponseModel>;
  @useResult
  $Res call({AcmoOfferDetailsModel data});

  $AcmoOfferDetailsModelCopyWith<$Res> get data;
}

/// @nodoc
class _$AcmoOfferDetailsResponseModelCopyWithImpl<$Res,
        $Val extends AcmoOfferDetailsResponseModel>
    implements $AcmoOfferDetailsResponseModelCopyWith<$Res> {
  _$AcmoOfferDetailsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AcmoOfferDetailsResponseModel
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
              as AcmoOfferDetailsModel,
    ) as $Val);
  }

  /// Create a copy of AcmoOfferDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AcmoOfferDetailsModelCopyWith<$Res> get data {
    return $AcmoOfferDetailsModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AcmoOfferDetailsResponseModelImplCopyWith<$Res>
    implements $AcmoOfferDetailsResponseModelCopyWith<$Res> {
  factory _$$AcmoOfferDetailsResponseModelImplCopyWith(
          _$AcmoOfferDetailsResponseModelImpl value,
          $Res Function(_$AcmoOfferDetailsResponseModelImpl) then) =
      __$$AcmoOfferDetailsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AcmoOfferDetailsModel data});

  @override
  $AcmoOfferDetailsModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$AcmoOfferDetailsResponseModelImplCopyWithImpl<$Res>
    extends _$AcmoOfferDetailsResponseModelCopyWithImpl<$Res,
        _$AcmoOfferDetailsResponseModelImpl>
    implements _$$AcmoOfferDetailsResponseModelImplCopyWith<$Res> {
  __$$AcmoOfferDetailsResponseModelImplCopyWithImpl(
      _$AcmoOfferDetailsResponseModelImpl _value,
      $Res Function(_$AcmoOfferDetailsResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AcmoOfferDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$AcmoOfferDetailsResponseModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AcmoOfferDetailsModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AcmoOfferDetailsResponseModelImpl
    implements _AcmoOfferDetailsResponseModel {
  _$AcmoOfferDetailsResponseModelImpl({required this.data});

  factory _$AcmoOfferDetailsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AcmoOfferDetailsResponseModelImplFromJson(json);

  @override
  final AcmoOfferDetailsModel data;

  @override
  String toString() {
    return 'AcmoOfferDetailsResponseModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcmoOfferDetailsResponseModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of AcmoOfferDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcmoOfferDetailsResponseModelImplCopyWith<
          _$AcmoOfferDetailsResponseModelImpl>
      get copyWith => __$$AcmoOfferDetailsResponseModelImplCopyWithImpl<
          _$AcmoOfferDetailsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcmoOfferDetailsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _AcmoOfferDetailsResponseModel
    implements AcmoOfferDetailsResponseModel {
  factory _AcmoOfferDetailsResponseModel(
          {required final AcmoOfferDetailsModel data}) =
      _$AcmoOfferDetailsResponseModelImpl;

  factory _AcmoOfferDetailsResponseModel.fromJson(Map<String, dynamic> json) =
      _$AcmoOfferDetailsResponseModelImpl.fromJson;

  @override
  AcmoOfferDetailsModel get data;

  /// Create a copy of AcmoOfferDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcmoOfferDetailsResponseModelImplCopyWith<
          _$AcmoOfferDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AcmoOfferDetailsModel _$AcmoOfferDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _AcmoOfferDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$AcmoOfferDetailsModel {
  int get campaignId => throw _privateConstructorUsedError;
  String get campaignName => throw _privateConstructorUsedError;
  String get campaignDescription => throw _privateConstructorUsedError;
  String get active => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  App get app => throw _privateConstructorUsedError;
  Currency get currency => throw _privateConstructorUsedError;
  CampaignPayout get campaignPayout => throw _privateConstructorUsedError;
  Tracking get tracking => throw _privateConstructorUsedError;
  Targeting get targeting => throw _privateConstructorUsedError;
  Creative get creative => throw _privateConstructorUsedError;
  MicroCharge get microCharge => throw _privateConstructorUsedError;
  List<MicroChargeEvents> get microChargeEvents =>
      throw _privateConstructorUsedError;
  bool get hasPlaytimeEvents => throw _privateConstructorUsedError;
  @JsonKey(fromJson: acmoConverterStringToDatetime)
  DateTime? get expiredOn => throw _privateConstructorUsedError;
  bool get isInstalled => throw _privateConstructorUsedError;
  List<PlaytimeEvents> get playtimeEvents => throw _privateConstructorUsedError;
  List<PayoutEvents> get payoutEvents => throw _privateConstructorUsedError;
  @JsonKey(name: 'engagementOverride')
  EngagementOverride get engagementOverride =>
      throw _privateConstructorUsedError;
  bool get isRetryDownload => throw _privateConstructorUsedError;
  bool get capReached => throw _privateConstructorUsedError;
  bool get premium => throw _privateConstructorUsedError;
  bool get isOldUser => throw _privateConstructorUsedError;
  String get group => throw _privateConstructorUsedError;
  List<PayoutEvents> get limitedTimeEvents =>
      throw _privateConstructorUsedError;
  @JsonKey(fromJson: acmoConverterStringToDatetime)
  DateTime? get createdOn => throw _privateConstructorUsedError;
  double get sortingScore => throw _privateConstructorUsedError;
  EarnedPayout get earnedPayout => throw _privateConstructorUsedError;

  /// Serializes this AcmoOfferDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AcmoOfferDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AcmoOfferDetailsModelCopyWith<AcmoOfferDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcmoOfferDetailsModelCopyWith<$Res> {
  factory $AcmoOfferDetailsModelCopyWith(AcmoOfferDetailsModel value,
          $Res Function(AcmoOfferDetailsModel) then) =
      _$AcmoOfferDetailsModelCopyWithImpl<$Res, AcmoOfferDetailsModel>;
  @useResult
  $Res call(
      {int campaignId,
      String campaignName,
      String campaignDescription,
      String active,
      String status,
      App app,
      Currency currency,
      CampaignPayout campaignPayout,
      Tracking tracking,
      Targeting targeting,
      Creative creative,
      MicroCharge microCharge,
      List<MicroChargeEvents> microChargeEvents,
      bool hasPlaytimeEvents,
      @JsonKey(fromJson: acmoConverterStringToDatetime) DateTime? expiredOn,
      bool isInstalled,
      List<PlaytimeEvents> playtimeEvents,
      List<PayoutEvents> payoutEvents,
      @JsonKey(name: 'engagementOverride')
      EngagementOverride engagementOverride,
      bool isRetryDownload,
      bool capReached,
      bool premium,
      bool isOldUser,
      String group,
      List<PayoutEvents> limitedTimeEvents,
      @JsonKey(fromJson: acmoConverterStringToDatetime) DateTime? createdOn,
      double sortingScore,
      EarnedPayout earnedPayout});

  $AppCopyWith<$Res> get app;
  $CurrencyCopyWith<$Res> get currency;
  $CampaignPayoutCopyWith<$Res> get campaignPayout;
  $TrackingCopyWith<$Res> get tracking;
  $TargetingCopyWith<$Res> get targeting;
  $CreativeCopyWith<$Res> get creative;
  $MicroChargeCopyWith<$Res> get microCharge;
  $EngagementOverrideCopyWith<$Res> get engagementOverride;
  $EarnedPayoutCopyWith<$Res> get earnedPayout;
}

/// @nodoc
class _$AcmoOfferDetailsModelCopyWithImpl<$Res,
        $Val extends AcmoOfferDetailsModel>
    implements $AcmoOfferDetailsModelCopyWith<$Res> {
  _$AcmoOfferDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AcmoOfferDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? campaignId = null,
    Object? campaignName = null,
    Object? campaignDescription = null,
    Object? active = null,
    Object? status = null,
    Object? app = null,
    Object? currency = null,
    Object? campaignPayout = null,
    Object? tracking = null,
    Object? targeting = null,
    Object? creative = null,
    Object? microCharge = null,
    Object? microChargeEvents = null,
    Object? hasPlaytimeEvents = null,
    Object? expiredOn = freezed,
    Object? isInstalled = null,
    Object? playtimeEvents = null,
    Object? payoutEvents = null,
    Object? engagementOverride = null,
    Object? isRetryDownload = null,
    Object? capReached = null,
    Object? premium = null,
    Object? isOldUser = null,
    Object? group = null,
    Object? limitedTimeEvents = null,
    Object? createdOn = freezed,
    Object? sortingScore = null,
    Object? earnedPayout = null,
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
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      app: null == app
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as App,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      campaignPayout: null == campaignPayout
          ? _value.campaignPayout
          : campaignPayout // ignore: cast_nullable_to_non_nullable
              as CampaignPayout,
      tracking: null == tracking
          ? _value.tracking
          : tracking // ignore: cast_nullable_to_non_nullable
              as Tracking,
      targeting: null == targeting
          ? _value.targeting
          : targeting // ignore: cast_nullable_to_non_nullable
              as Targeting,
      creative: null == creative
          ? _value.creative
          : creative // ignore: cast_nullable_to_non_nullable
              as Creative,
      microCharge: null == microCharge
          ? _value.microCharge
          : microCharge // ignore: cast_nullable_to_non_nullable
              as MicroCharge,
      microChargeEvents: null == microChargeEvents
          ? _value.microChargeEvents
          : microChargeEvents // ignore: cast_nullable_to_non_nullable
              as List<MicroChargeEvents>,
      hasPlaytimeEvents: null == hasPlaytimeEvents
          ? _value.hasPlaytimeEvents
          : hasPlaytimeEvents // ignore: cast_nullable_to_non_nullable
              as bool,
      expiredOn: freezed == expiredOn
          ? _value.expiredOn
          : expiredOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isInstalled: null == isInstalled
          ? _value.isInstalled
          : isInstalled // ignore: cast_nullable_to_non_nullable
              as bool,
      playtimeEvents: null == playtimeEvents
          ? _value.playtimeEvents
          : playtimeEvents // ignore: cast_nullable_to_non_nullable
              as List<PlaytimeEvents>,
      payoutEvents: null == payoutEvents
          ? _value.payoutEvents
          : payoutEvents // ignore: cast_nullable_to_non_nullable
              as List<PayoutEvents>,
      engagementOverride: null == engagementOverride
          ? _value.engagementOverride
          : engagementOverride // ignore: cast_nullable_to_non_nullable
              as EngagementOverride,
      isRetryDownload: null == isRetryDownload
          ? _value.isRetryDownload
          : isRetryDownload // ignore: cast_nullable_to_non_nullable
              as bool,
      capReached: null == capReached
          ? _value.capReached
          : capReached // ignore: cast_nullable_to_non_nullable
              as bool,
      premium: null == premium
          ? _value.premium
          : premium // ignore: cast_nullable_to_non_nullable
              as bool,
      isOldUser: null == isOldUser
          ? _value.isOldUser
          : isOldUser // ignore: cast_nullable_to_non_nullable
              as bool,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      limitedTimeEvents: null == limitedTimeEvents
          ? _value.limitedTimeEvents
          : limitedTimeEvents // ignore: cast_nullable_to_non_nullable
              as List<PayoutEvents>,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sortingScore: null == sortingScore
          ? _value.sortingScore
          : sortingScore // ignore: cast_nullable_to_non_nullable
              as double,
      earnedPayout: null == earnedPayout
          ? _value.earnedPayout
          : earnedPayout // ignore: cast_nullable_to_non_nullable
              as EarnedPayout,
    ) as $Val);
  }

  /// Create a copy of AcmoOfferDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppCopyWith<$Res> get app {
    return $AppCopyWith<$Res>(_value.app, (value) {
      return _then(_value.copyWith(app: value) as $Val);
    });
  }

  /// Create a copy of AcmoOfferDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrencyCopyWith<$Res> get currency {
    return $CurrencyCopyWith<$Res>(_value.currency, (value) {
      return _then(_value.copyWith(currency: value) as $Val);
    });
  }

  /// Create a copy of AcmoOfferDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CampaignPayoutCopyWith<$Res> get campaignPayout {
    return $CampaignPayoutCopyWith<$Res>(_value.campaignPayout, (value) {
      return _then(_value.copyWith(campaignPayout: value) as $Val);
    });
  }

  /// Create a copy of AcmoOfferDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrackingCopyWith<$Res> get tracking {
    return $TrackingCopyWith<$Res>(_value.tracking, (value) {
      return _then(_value.copyWith(tracking: value) as $Val);
    });
  }

  /// Create a copy of AcmoOfferDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TargetingCopyWith<$Res> get targeting {
    return $TargetingCopyWith<$Res>(_value.targeting, (value) {
      return _then(_value.copyWith(targeting: value) as $Val);
    });
  }

  /// Create a copy of AcmoOfferDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreativeCopyWith<$Res> get creative {
    return $CreativeCopyWith<$Res>(_value.creative, (value) {
      return _then(_value.copyWith(creative: value) as $Val);
    });
  }

  /// Create a copy of AcmoOfferDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MicroChargeCopyWith<$Res> get microCharge {
    return $MicroChargeCopyWith<$Res>(_value.microCharge, (value) {
      return _then(_value.copyWith(microCharge: value) as $Val);
    });
  }

  /// Create a copy of AcmoOfferDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EngagementOverrideCopyWith<$Res> get engagementOverride {
    return $EngagementOverrideCopyWith<$Res>(_value.engagementOverride,
        (value) {
      return _then(_value.copyWith(engagementOverride: value) as $Val);
    });
  }

  /// Create a copy of AcmoOfferDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EarnedPayoutCopyWith<$Res> get earnedPayout {
    return $EarnedPayoutCopyWith<$Res>(_value.earnedPayout, (value) {
      return _then(_value.copyWith(earnedPayout: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AcmoOfferDetailsModelImplCopyWith<$Res>
    implements $AcmoOfferDetailsModelCopyWith<$Res> {
  factory _$$AcmoOfferDetailsModelImplCopyWith(
          _$AcmoOfferDetailsModelImpl value,
          $Res Function(_$AcmoOfferDetailsModelImpl) then) =
      __$$AcmoOfferDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int campaignId,
      String campaignName,
      String campaignDescription,
      String active,
      String status,
      App app,
      Currency currency,
      CampaignPayout campaignPayout,
      Tracking tracking,
      Targeting targeting,
      Creative creative,
      MicroCharge microCharge,
      List<MicroChargeEvents> microChargeEvents,
      bool hasPlaytimeEvents,
      @JsonKey(fromJson: acmoConverterStringToDatetime) DateTime? expiredOn,
      bool isInstalled,
      List<PlaytimeEvents> playtimeEvents,
      List<PayoutEvents> payoutEvents,
      @JsonKey(name: 'engagementOverride')
      EngagementOverride engagementOverride,
      bool isRetryDownload,
      bool capReached,
      bool premium,
      bool isOldUser,
      String group,
      List<PayoutEvents> limitedTimeEvents,
      @JsonKey(fromJson: acmoConverterStringToDatetime) DateTime? createdOn,
      double sortingScore,
      EarnedPayout earnedPayout});

  @override
  $AppCopyWith<$Res> get app;
  @override
  $CurrencyCopyWith<$Res> get currency;
  @override
  $CampaignPayoutCopyWith<$Res> get campaignPayout;
  @override
  $TrackingCopyWith<$Res> get tracking;
  @override
  $TargetingCopyWith<$Res> get targeting;
  @override
  $CreativeCopyWith<$Res> get creative;
  @override
  $MicroChargeCopyWith<$Res> get microCharge;
  @override
  $EngagementOverrideCopyWith<$Res> get engagementOverride;
  @override
  $EarnedPayoutCopyWith<$Res> get earnedPayout;
}

/// @nodoc
class __$$AcmoOfferDetailsModelImplCopyWithImpl<$Res>
    extends _$AcmoOfferDetailsModelCopyWithImpl<$Res,
        _$AcmoOfferDetailsModelImpl>
    implements _$$AcmoOfferDetailsModelImplCopyWith<$Res> {
  __$$AcmoOfferDetailsModelImplCopyWithImpl(_$AcmoOfferDetailsModelImpl _value,
      $Res Function(_$AcmoOfferDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AcmoOfferDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? campaignId = null,
    Object? campaignName = null,
    Object? campaignDescription = null,
    Object? active = null,
    Object? status = null,
    Object? app = null,
    Object? currency = null,
    Object? campaignPayout = null,
    Object? tracking = null,
    Object? targeting = null,
    Object? creative = null,
    Object? microCharge = null,
    Object? microChargeEvents = null,
    Object? hasPlaytimeEvents = null,
    Object? expiredOn = freezed,
    Object? isInstalled = null,
    Object? playtimeEvents = null,
    Object? payoutEvents = null,
    Object? engagementOverride = null,
    Object? isRetryDownload = null,
    Object? capReached = null,
    Object? premium = null,
    Object? isOldUser = null,
    Object? group = null,
    Object? limitedTimeEvents = null,
    Object? createdOn = freezed,
    Object? sortingScore = null,
    Object? earnedPayout = null,
  }) {
    return _then(_$AcmoOfferDetailsModelImpl(
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
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      app: null == app
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as App,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      campaignPayout: null == campaignPayout
          ? _value.campaignPayout
          : campaignPayout // ignore: cast_nullable_to_non_nullable
              as CampaignPayout,
      tracking: null == tracking
          ? _value.tracking
          : tracking // ignore: cast_nullable_to_non_nullable
              as Tracking,
      targeting: null == targeting
          ? _value.targeting
          : targeting // ignore: cast_nullable_to_non_nullable
              as Targeting,
      creative: null == creative
          ? _value.creative
          : creative // ignore: cast_nullable_to_non_nullable
              as Creative,
      microCharge: null == microCharge
          ? _value.microCharge
          : microCharge // ignore: cast_nullable_to_non_nullable
              as MicroCharge,
      microChargeEvents: null == microChargeEvents
          ? _value._microChargeEvents
          : microChargeEvents // ignore: cast_nullable_to_non_nullable
              as List<MicroChargeEvents>,
      hasPlaytimeEvents: null == hasPlaytimeEvents
          ? _value.hasPlaytimeEvents
          : hasPlaytimeEvents // ignore: cast_nullable_to_non_nullable
              as bool,
      expiredOn: freezed == expiredOn
          ? _value.expiredOn
          : expiredOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isInstalled: null == isInstalled
          ? _value.isInstalled
          : isInstalled // ignore: cast_nullable_to_non_nullable
              as bool,
      playtimeEvents: null == playtimeEvents
          ? _value._playtimeEvents
          : playtimeEvents // ignore: cast_nullable_to_non_nullable
              as List<PlaytimeEvents>,
      payoutEvents: null == payoutEvents
          ? _value._payoutEvents
          : payoutEvents // ignore: cast_nullable_to_non_nullable
              as List<PayoutEvents>,
      engagementOverride: null == engagementOverride
          ? _value.engagementOverride
          : engagementOverride // ignore: cast_nullable_to_non_nullable
              as EngagementOverride,
      isRetryDownload: null == isRetryDownload
          ? _value.isRetryDownload
          : isRetryDownload // ignore: cast_nullable_to_non_nullable
              as bool,
      capReached: null == capReached
          ? _value.capReached
          : capReached // ignore: cast_nullable_to_non_nullable
              as bool,
      premium: null == premium
          ? _value.premium
          : premium // ignore: cast_nullable_to_non_nullable
              as bool,
      isOldUser: null == isOldUser
          ? _value.isOldUser
          : isOldUser // ignore: cast_nullable_to_non_nullable
              as bool,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      limitedTimeEvents: null == limitedTimeEvents
          ? _value._limitedTimeEvents
          : limitedTimeEvents // ignore: cast_nullable_to_non_nullable
              as List<PayoutEvents>,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sortingScore: null == sortingScore
          ? _value.sortingScore
          : sortingScore // ignore: cast_nullable_to_non_nullable
              as double,
      earnedPayout: null == earnedPayout
          ? _value.earnedPayout
          : earnedPayout // ignore: cast_nullable_to_non_nullable
              as EarnedPayout,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AcmoOfferDetailsModelImpl implements _AcmoOfferDetailsModel {
  _$AcmoOfferDetailsModelImpl(
      {required this.campaignId,
      this.campaignName = '',
      this.campaignDescription = '',
      this.active = '',
      this.status = '',
      required this.app,
      required this.currency,
      required this.campaignPayout,
      required this.tracking,
      required this.targeting,
      required this.creative,
      required this.microCharge,
      final List<MicroChargeEvents> microChargeEvents = const [],
      this.hasPlaytimeEvents = false,
      @JsonKey(fromJson: acmoConverterStringToDatetime) this.expiredOn,
      this.isInstalled = false,
      final List<PlaytimeEvents> playtimeEvents = const [],
      final List<PayoutEvents> payoutEvents = const [],
      @JsonKey(name: 'engagementOverride')
      this.engagementOverride = EngagementOverride.empty,
      this.isRetryDownload = false,
      this.capReached = false,
      this.premium = false,
      this.isOldUser = false,
      this.group = '',
      final List<PayoutEvents> limitedTimeEvents = const [],
      @JsonKey(fromJson: acmoConverterStringToDatetime) this.createdOn,
      this.sortingScore = 0.0,
      this.earnedPayout = EarnedPayout.empty})
      : _microChargeEvents = microChargeEvents,
        _playtimeEvents = playtimeEvents,
        _payoutEvents = payoutEvents,
        _limitedTimeEvents = limitedTimeEvents;

  factory _$AcmoOfferDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AcmoOfferDetailsModelImplFromJson(json);

  @override
  final int campaignId;
  @override
  @JsonKey()
  final String campaignName;
  @override
  @JsonKey()
  final String campaignDescription;
  @override
  @JsonKey()
  final String active;
  @override
  @JsonKey()
  final String status;
  @override
  final App app;
  @override
  final Currency currency;
  @override
  final CampaignPayout campaignPayout;
  @override
  final Tracking tracking;
  @override
  final Targeting targeting;
  @override
  final Creative creative;
  @override
  final MicroCharge microCharge;
  final List<MicroChargeEvents> _microChargeEvents;
  @override
  @JsonKey()
  List<MicroChargeEvents> get microChargeEvents {
    if (_microChargeEvents is EqualUnmodifiableListView)
      return _microChargeEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_microChargeEvents);
  }

  @override
  @JsonKey()
  final bool hasPlaytimeEvents;
  @override
  @JsonKey(fromJson: acmoConverterStringToDatetime)
  final DateTime? expiredOn;
  @override
  @JsonKey()
  final bool isInstalled;
  final List<PlaytimeEvents> _playtimeEvents;
  @override
  @JsonKey()
  List<PlaytimeEvents> get playtimeEvents {
    if (_playtimeEvents is EqualUnmodifiableListView) return _playtimeEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playtimeEvents);
  }

  final List<PayoutEvents> _payoutEvents;
  @override
  @JsonKey()
  List<PayoutEvents> get payoutEvents {
    if (_payoutEvents is EqualUnmodifiableListView) return _payoutEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payoutEvents);
  }

  @override
  @JsonKey(name: 'engagementOverride')
  final EngagementOverride engagementOverride;
  @override
  @JsonKey()
  final bool isRetryDownload;
  @override
  @JsonKey()
  final bool capReached;
  @override
  @JsonKey()
  final bool premium;
  @override
  @JsonKey()
  final bool isOldUser;
  @override
  @JsonKey()
  final String group;
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
  @JsonKey(fromJson: acmoConverterStringToDatetime)
  final DateTime? createdOn;
  @override
  @JsonKey()
  final double sortingScore;
  @override
  @JsonKey()
  final EarnedPayout earnedPayout;

  @override
  String toString() {
    return 'AcmoOfferDetailsModel(campaignId: $campaignId, campaignName: $campaignName, campaignDescription: $campaignDescription, active: $active, status: $status, app: $app, currency: $currency, campaignPayout: $campaignPayout, tracking: $tracking, targeting: $targeting, creative: $creative, microCharge: $microCharge, microChargeEvents: $microChargeEvents, hasPlaytimeEvents: $hasPlaytimeEvents, expiredOn: $expiredOn, isInstalled: $isInstalled, playtimeEvents: $playtimeEvents, payoutEvents: $payoutEvents, engagementOverride: $engagementOverride, isRetryDownload: $isRetryDownload, capReached: $capReached, premium: $premium, isOldUser: $isOldUser, group: $group, limitedTimeEvents: $limitedTimeEvents, createdOn: $createdOn, sortingScore: $sortingScore, earnedPayout: $earnedPayout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcmoOfferDetailsModelImpl &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId) &&
            (identical(other.campaignName, campaignName) ||
                other.campaignName == campaignName) &&
            (identical(other.campaignDescription, campaignDescription) ||
                other.campaignDescription == campaignDescription) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.app, app) || other.app == app) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.campaignPayout, campaignPayout) ||
                other.campaignPayout == campaignPayout) &&
            (identical(other.tracking, tracking) ||
                other.tracking == tracking) &&
            (identical(other.targeting, targeting) ||
                other.targeting == targeting) &&
            (identical(other.creative, creative) ||
                other.creative == creative) &&
            (identical(other.microCharge, microCharge) ||
                other.microCharge == microCharge) &&
            const DeepCollectionEquality()
                .equals(other._microChargeEvents, _microChargeEvents) &&
            (identical(other.hasPlaytimeEvents, hasPlaytimeEvents) ||
                other.hasPlaytimeEvents == hasPlaytimeEvents) &&
            (identical(other.expiredOn, expiredOn) ||
                other.expiredOn == expiredOn) &&
            (identical(other.isInstalled, isInstalled) ||
                other.isInstalled == isInstalled) &&
            const DeepCollectionEquality()
                .equals(other._playtimeEvents, _playtimeEvents) &&
            const DeepCollectionEquality()
                .equals(other._payoutEvents, _payoutEvents) &&
            (identical(other.engagementOverride, engagementOverride) ||
                other.engagementOverride == engagementOverride) &&
            (identical(other.isRetryDownload, isRetryDownload) ||
                other.isRetryDownload == isRetryDownload) &&
            (identical(other.capReached, capReached) ||
                other.capReached == capReached) &&
            (identical(other.premium, premium) || other.premium == premium) &&
            (identical(other.isOldUser, isOldUser) ||
                other.isOldUser == isOldUser) &&
            (identical(other.group, group) || other.group == group) &&
            const DeepCollectionEquality()
                .equals(other._limitedTimeEvents, _limitedTimeEvents) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.sortingScore, sortingScore) ||
                other.sortingScore == sortingScore) &&
            (identical(other.earnedPayout, earnedPayout) ||
                other.earnedPayout == earnedPayout));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        campaignId,
        campaignName,
        campaignDescription,
        active,
        status,
        app,
        currency,
        campaignPayout,
        tracking,
        targeting,
        creative,
        microCharge,
        const DeepCollectionEquality().hash(_microChargeEvents),
        hasPlaytimeEvents,
        expiredOn,
        isInstalled,
        const DeepCollectionEquality().hash(_playtimeEvents),
        const DeepCollectionEquality().hash(_payoutEvents),
        engagementOverride,
        isRetryDownload,
        capReached,
        premium,
        isOldUser,
        group,
        const DeepCollectionEquality().hash(_limitedTimeEvents),
        createdOn,
        sortingScore,
        earnedPayout
      ]);

  /// Create a copy of AcmoOfferDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcmoOfferDetailsModelImplCopyWith<_$AcmoOfferDetailsModelImpl>
      get copyWith => __$$AcmoOfferDetailsModelImplCopyWithImpl<
          _$AcmoOfferDetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcmoOfferDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _AcmoOfferDetailsModel implements AcmoOfferDetailsModel {
  factory _AcmoOfferDetailsModel(
      {required final int campaignId,
      final String campaignName,
      final String campaignDescription,
      final String active,
      final String status,
      required final App app,
      required final Currency currency,
      required final CampaignPayout campaignPayout,
      required final Tracking tracking,
      required final Targeting targeting,
      required final Creative creative,
      required final MicroCharge microCharge,
      final List<MicroChargeEvents> microChargeEvents,
      final bool hasPlaytimeEvents,
      @JsonKey(fromJson: acmoConverterStringToDatetime)
      final DateTime? expiredOn,
      final bool isInstalled,
      final List<PlaytimeEvents> playtimeEvents,
      final List<PayoutEvents> payoutEvents,
      @JsonKey(name: 'engagementOverride')
      final EngagementOverride engagementOverride,
      final bool isRetryDownload,
      final bool capReached,
      final bool premium,
      final bool isOldUser,
      final String group,
      final List<PayoutEvents> limitedTimeEvents,
      @JsonKey(fromJson: acmoConverterStringToDatetime)
      final DateTime? createdOn,
      final double sortingScore,
      final EarnedPayout earnedPayout}) = _$AcmoOfferDetailsModelImpl;

  factory _AcmoOfferDetailsModel.fromJson(Map<String, dynamic> json) =
      _$AcmoOfferDetailsModelImpl.fromJson;

  @override
  int get campaignId;
  @override
  String get campaignName;
  @override
  String get campaignDescription;
  @override
  String get active;
  @override
  String get status;
  @override
  App get app;
  @override
  Currency get currency;
  @override
  CampaignPayout get campaignPayout;
  @override
  Tracking get tracking;
  @override
  Targeting get targeting;
  @override
  Creative get creative;
  @override
  MicroCharge get microCharge;
  @override
  List<MicroChargeEvents> get microChargeEvents;
  @override
  bool get hasPlaytimeEvents;
  @override
  @JsonKey(fromJson: acmoConverterStringToDatetime)
  DateTime? get expiredOn;
  @override
  bool get isInstalled;
  @override
  List<PlaytimeEvents> get playtimeEvents;
  @override
  List<PayoutEvents> get payoutEvents;
  @override
  @JsonKey(name: 'engagementOverride')
  EngagementOverride get engagementOverride;
  @override
  bool get isRetryDownload;
  @override
  bool get capReached;
  @override
  bool get premium;
  @override
  bool get isOldUser;
  @override
  String get group;
  @override
  List<PayoutEvents> get limitedTimeEvents;
  @override
  @JsonKey(fromJson: acmoConverterStringToDatetime)
  DateTime? get createdOn;
  @override
  double get sortingScore;
  @override
  EarnedPayout get earnedPayout;

  /// Create a copy of AcmoOfferDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcmoOfferDetailsModelImplCopyWith<_$AcmoOfferDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Creative _$CreativeFromJson(Map<String, dynamic> json) {
  return _Creative.fromJson(json);
}

/// @nodoc
mixin _$Creative {
  String get creativeUrl => throw _privateConstructorUsedError;
  List<CreativePacks> get creativePacks => throw _privateConstructorUsedError;

  /// Serializes this Creative to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Creative
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreativeCopyWith<Creative> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreativeCopyWith<$Res> {
  factory $CreativeCopyWith(Creative value, $Res Function(Creative) then) =
      _$CreativeCopyWithImpl<$Res, Creative>;
  @useResult
  $Res call({String creativeUrl, List<CreativePacks> creativePacks});
}

/// @nodoc
class _$CreativeCopyWithImpl<$Res, $Val extends Creative>
    implements $CreativeCopyWith<$Res> {
  _$CreativeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Creative
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creativeUrl = null,
    Object? creativePacks = null,
  }) {
    return _then(_value.copyWith(
      creativeUrl: null == creativeUrl
          ? _value.creativeUrl
          : creativeUrl // ignore: cast_nullable_to_non_nullable
              as String,
      creativePacks: null == creativePacks
          ? _value.creativePacks
          : creativePacks // ignore: cast_nullable_to_non_nullable
              as List<CreativePacks>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreativeImplCopyWith<$Res>
    implements $CreativeCopyWith<$Res> {
  factory _$$CreativeImplCopyWith(
          _$CreativeImpl value, $Res Function(_$CreativeImpl) then) =
      __$$CreativeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String creativeUrl, List<CreativePacks> creativePacks});
}

/// @nodoc
class __$$CreativeImplCopyWithImpl<$Res>
    extends _$CreativeCopyWithImpl<$Res, _$CreativeImpl>
    implements _$$CreativeImplCopyWith<$Res> {
  __$$CreativeImplCopyWithImpl(
      _$CreativeImpl _value, $Res Function(_$CreativeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Creative
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creativeUrl = null,
    Object? creativePacks = null,
  }) {
    return _then(_$CreativeImpl(
      creativeUrl: null == creativeUrl
          ? _value.creativeUrl
          : creativeUrl // ignore: cast_nullable_to_non_nullable
              as String,
      creativePacks: null == creativePacks
          ? _value._creativePacks
          : creativePacks // ignore: cast_nullable_to_non_nullable
              as List<CreativePacks>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreativeImpl implements _Creative {
  _$CreativeImpl(
      {required this.creativeUrl,
      required final List<CreativePacks> creativePacks})
      : _creativePacks = creativePacks;

  factory _$CreativeImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreativeImplFromJson(json);

  @override
  final String creativeUrl;
  final List<CreativePacks> _creativePacks;
  @override
  List<CreativePacks> get creativePacks {
    if (_creativePacks is EqualUnmodifiableListView) return _creativePacks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_creativePacks);
  }

  @override
  String toString() {
    return 'Creative(creativeUrl: $creativeUrl, creativePacks: $creativePacks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreativeImpl &&
            (identical(other.creativeUrl, creativeUrl) ||
                other.creativeUrl == creativeUrl) &&
            const DeepCollectionEquality()
                .equals(other._creativePacks, _creativePacks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, creativeUrl,
      const DeepCollectionEquality().hash(_creativePacks));

  /// Create a copy of Creative
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreativeImplCopyWith<_$CreativeImpl> get copyWith =>
      __$$CreativeImplCopyWithImpl<_$CreativeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreativeImplToJson(
      this,
    );
  }
}

abstract class _Creative implements Creative {
  factory _Creative(
      {required final String creativeUrl,
      required final List<CreativePacks> creativePacks}) = _$CreativeImpl;

  factory _Creative.fromJson(Map<String, dynamic> json) =
      _$CreativeImpl.fromJson;

  @override
  String get creativeUrl;
  @override
  List<CreativePacks> get creativePacks;

  /// Create a copy of Creative
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreativeImplCopyWith<_$CreativeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreativePacks _$CreativePacksFromJson(Map<String, dynamic> json) {
  return _CreativePacks.fromJson(json);
}

/// @nodoc
mixin _$CreativePacks {
  List<Creatives?>? get creatives => throw _privateConstructorUsedError;

  /// Serializes this CreativePacks to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreativePacks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreativePacksCopyWith<CreativePacks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreativePacksCopyWith<$Res> {
  factory $CreativePacksCopyWith(
          CreativePacks value, $Res Function(CreativePacks) then) =
      _$CreativePacksCopyWithImpl<$Res, CreativePacks>;
  @useResult
  $Res call({List<Creatives?>? creatives});
}

/// @nodoc
class _$CreativePacksCopyWithImpl<$Res, $Val extends CreativePacks>
    implements $CreativePacksCopyWith<$Res> {
  _$CreativePacksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreativePacks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creatives = freezed,
  }) {
    return _then(_value.copyWith(
      creatives: freezed == creatives
          ? _value.creatives
          : creatives // ignore: cast_nullable_to_non_nullable
              as List<Creatives?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreativePacksImplCopyWith<$Res>
    implements $CreativePacksCopyWith<$Res> {
  factory _$$CreativePacksImplCopyWith(
          _$CreativePacksImpl value, $Res Function(_$CreativePacksImpl) then) =
      __$$CreativePacksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Creatives?>? creatives});
}

/// @nodoc
class __$$CreativePacksImplCopyWithImpl<$Res>
    extends _$CreativePacksCopyWithImpl<$Res, _$CreativePacksImpl>
    implements _$$CreativePacksImplCopyWith<$Res> {
  __$$CreativePacksImplCopyWithImpl(
      _$CreativePacksImpl _value, $Res Function(_$CreativePacksImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreativePacks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creatives = freezed,
  }) {
    return _then(_$CreativePacksImpl(
      creatives: freezed == creatives
          ? _value._creatives
          : creatives // ignore: cast_nullable_to_non_nullable
              as List<Creatives?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreativePacksImpl implements _CreativePacks {
  _$CreativePacksImpl({final List<Creatives?>? creatives})
      : _creatives = creatives;

  factory _$CreativePacksImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreativePacksImplFromJson(json);

  final List<Creatives?>? _creatives;
  @override
  List<Creatives?>? get creatives {
    final value = _creatives;
    if (value == null) return null;
    if (_creatives is EqualUnmodifiableListView) return _creatives;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreativePacks(creatives: $creatives)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreativePacksImpl &&
            const DeepCollectionEquality()
                .equals(other._creatives, _creatives));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_creatives));

  /// Create a copy of CreativePacks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreativePacksImplCopyWith<_$CreativePacksImpl> get copyWith =>
      __$$CreativePacksImplCopyWithImpl<_$CreativePacksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreativePacksImplToJson(
      this,
    );
  }
}

abstract class _CreativePacks implements CreativePacks {
  factory _CreativePacks({final List<Creatives?>? creatives}) =
      _$CreativePacksImpl;

  factory _CreativePacks.fromJson(Map<String, dynamic> json) =
      _$CreativePacksImpl.fromJson;

  @override
  List<Creatives?>? get creatives;

  /// Create a copy of CreativePacks
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreativePacksImplCopyWith<_$CreativePacksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Creatives _$CreativesFromJson(Map<String, dynamic> json) {
  return _Creatives.fromJson(json);
}

/// @nodoc
mixin _$Creatives {
  String get fileUrl => throw _privateConstructorUsedError;

  /// Serializes this Creatives to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Creatives
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreativesCopyWith<Creatives> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreativesCopyWith<$Res> {
  factory $CreativesCopyWith(Creatives value, $Res Function(Creatives) then) =
      _$CreativesCopyWithImpl<$Res, Creatives>;
  @useResult
  $Res call({String fileUrl});
}

/// @nodoc
class _$CreativesCopyWithImpl<$Res, $Val extends Creatives>
    implements $CreativesCopyWith<$Res> {
  _$CreativesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Creatives
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileUrl = null,
  }) {
    return _then(_value.copyWith(
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreativesImplCopyWith<$Res>
    implements $CreativesCopyWith<$Res> {
  factory _$$CreativesImplCopyWith(
          _$CreativesImpl value, $Res Function(_$CreativesImpl) then) =
      __$$CreativesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fileUrl});
}

/// @nodoc
class __$$CreativesImplCopyWithImpl<$Res>
    extends _$CreativesCopyWithImpl<$Res, _$CreativesImpl>
    implements _$$CreativesImplCopyWith<$Res> {
  __$$CreativesImplCopyWithImpl(
      _$CreativesImpl _value, $Res Function(_$CreativesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Creatives
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileUrl = null,
  }) {
    return _then(_$CreativesImpl(
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreativesImpl implements _Creatives {
  _$CreativesImpl({this.fileUrl = ''});

  factory _$CreativesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreativesImplFromJson(json);

  @override
  @JsonKey()
  final String fileUrl;

  @override
  String toString() {
    return 'Creatives(fileUrl: $fileUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreativesImpl &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fileUrl);

  /// Create a copy of Creatives
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreativesImplCopyWith<_$CreativesImpl> get copyWith =>
      __$$CreativesImplCopyWithImpl<_$CreativesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreativesImplToJson(
      this,
    );
  }
}

abstract class _Creatives implements Creatives {
  factory _Creatives({final String fileUrl}) = _$CreativesImpl;

  factory _Creatives.fromJson(Map<String, dynamic> json) =
      _$CreativesImpl.fromJson;

  @override
  String get fileUrl;

  /// Create a copy of Creatives
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreativesImplCopyWith<_$CreativesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Targeting _$TargetingFromJson(Map<String, dynamic> json) {
  return _Targeting.fromJson(json);
}

/// @nodoc
mixin _$Targeting {
  String? get os => throw _privateConstructorUsedError;
  String get targetingType => throw _privateConstructorUsedError;
  Reward? get reward => throw _privateConstructorUsedError;

  /// Serializes this Targeting to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Targeting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TargetingCopyWith<Targeting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargetingCopyWith<$Res> {
  factory $TargetingCopyWith(Targeting value, $Res Function(Targeting) then) =
      _$TargetingCopyWithImpl<$Res, Targeting>;
  @useResult
  $Res call({String? os, String targetingType, Reward? reward});

  $RewardCopyWith<$Res>? get reward;
}

/// @nodoc
class _$TargetingCopyWithImpl<$Res, $Val extends Targeting>
    implements $TargetingCopyWith<$Res> {
  _$TargetingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Targeting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? os = freezed,
    Object? targetingType = null,
    Object? reward = freezed,
  }) {
    return _then(_value.copyWith(
      os: freezed == os
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as String?,
      targetingType: null == targetingType
          ? _value.targetingType
          : targetingType // ignore: cast_nullable_to_non_nullable
              as String,
      reward: freezed == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as Reward?,
    ) as $Val);
  }

  /// Create a copy of Targeting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardCopyWith<$Res>? get reward {
    if (_value.reward == null) {
      return null;
    }

    return $RewardCopyWith<$Res>(_value.reward!, (value) {
      return _then(_value.copyWith(reward: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TargetingImplCopyWith<$Res>
    implements $TargetingCopyWith<$Res> {
  factory _$$TargetingImplCopyWith(
          _$TargetingImpl value, $Res Function(_$TargetingImpl) then) =
      __$$TargetingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? os, String targetingType, Reward? reward});

  @override
  $RewardCopyWith<$Res>? get reward;
}

/// @nodoc
class __$$TargetingImplCopyWithImpl<$Res>
    extends _$TargetingCopyWithImpl<$Res, _$TargetingImpl>
    implements _$$TargetingImplCopyWith<$Res> {
  __$$TargetingImplCopyWithImpl(
      _$TargetingImpl _value, $Res Function(_$TargetingImpl) _then)
      : super(_value, _then);

  /// Create a copy of Targeting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? os = freezed,
    Object? targetingType = null,
    Object? reward = freezed,
  }) {
    return _then(_$TargetingImpl(
      os: freezed == os
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as String?,
      targetingType: null == targetingType
          ? _value.targetingType
          : targetingType // ignore: cast_nullable_to_non_nullable
              as String,
      reward: freezed == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as Reward?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TargetingImpl implements _Targeting {
  _$TargetingImpl({this.os, this.targetingType = '', this.reward});

  factory _$TargetingImpl.fromJson(Map<String, dynamic> json) =>
      _$$TargetingImplFromJson(json);

  @override
  final String? os;
  @override
  @JsonKey()
  final String targetingType;
  @override
  final Reward? reward;

  @override
  String toString() {
    return 'Targeting(os: $os, targetingType: $targetingType, reward: $reward)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TargetingImpl &&
            (identical(other.os, os) || other.os == os) &&
            (identical(other.targetingType, targetingType) ||
                other.targetingType == targetingType) &&
            (identical(other.reward, reward) || other.reward == reward));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, os, targetingType, reward);

  /// Create a copy of Targeting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TargetingImplCopyWith<_$TargetingImpl> get copyWith =>
      __$$TargetingImplCopyWithImpl<_$TargetingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TargetingImplToJson(
      this,
    );
  }
}

abstract class _Targeting implements Targeting {
  factory _Targeting(
      {final String? os,
      final String targetingType,
      final Reward? reward}) = _$TargetingImpl;

  factory _Targeting.fromJson(Map<String, dynamic> json) =
      _$TargetingImpl.fromJson;

  @override
  String? get os;
  @override
  String get targetingType;
  @override
  Reward? get reward;

  /// Create a copy of Targeting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TargetingImplCopyWith<_$TargetingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PayoutEvents _$PayoutEventsFromJson(Map<String, dynamic> json) {
  return _PayoutEvents.fromJson(json);
}

/// @nodoc
mixin _$PayoutEvents {
  int get id => throw _privateConstructorUsedError;
  String? get conversionStatus => throw _privateConstructorUsedError;
  String get identifier => throw _privateConstructorUsedError;
  String get eventName => throw _privateConstructorUsedError;
  String get eventDescription => throw _privateConstructorUsedError;
  String get eventCategory => throw _privateConstructorUsedError;
  double get payoutAmount => throw _privateConstructorUsedError;
  double get payoutAmountConverted => throw _privateConstructorUsedError;
  String get payoutType => throw _privateConstructorUsedError;
  bool get allowDuplicateEvents => throw _privateConstructorUsedError;
  int get maxTime => throw _privateConstructorUsedError;
  String get maxTimeMetric => throw _privateConstructorUsedError;
  double? get maxTimeRemainSeconds => throw _privateConstructorUsedError;
  bool get enforceMaxTimeCompletion => throw _privateConstructorUsedError;
  bool get isLimitedTimeEvent => throw _privateConstructorUsedError;
  double get limitedTimeEventRemainingSeconds =>
      throw _privateConstructorUsedError;
  bool get isTicketSubmitted => throw _privateConstructorUsedError;
  bool get isPlaytime => throw _privateConstructorUsedError;
  int get totalPlaytime => throw _privateConstructorUsedError;

  /// Serializes this PayoutEvents to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayoutEvents
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayoutEventsCopyWith<PayoutEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutEventsCopyWith<$Res> {
  factory $PayoutEventsCopyWith(
          PayoutEvents value, $Res Function(PayoutEvents) then) =
      _$PayoutEventsCopyWithImpl<$Res, PayoutEvents>;
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
      int totalPlaytime});
}

/// @nodoc
class _$PayoutEventsCopyWithImpl<$Res, $Val extends PayoutEvents>
    implements $PayoutEventsCopyWith<$Res> {
  _$PayoutEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      conversionStatus: freezed == conversionStatus
          ? _value.conversionStatus
          : conversionStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      eventDescription: null == eventDescription
          ? _value.eventDescription
          : eventDescription // ignore: cast_nullable_to_non_nullable
              as String,
      eventCategory: null == eventCategory
          ? _value.eventCategory
          : eventCategory // ignore: cast_nullable_to_non_nullable
              as String,
      payoutAmount: null == payoutAmount
          ? _value.payoutAmount
          : payoutAmount // ignore: cast_nullable_to_non_nullable
              as double,
      payoutAmountConverted: null == payoutAmountConverted
          ? _value.payoutAmountConverted
          : payoutAmountConverted // ignore: cast_nullable_to_non_nullable
              as double,
      payoutType: null == payoutType
          ? _value.payoutType
          : payoutType // ignore: cast_nullable_to_non_nullable
              as String,
      allowDuplicateEvents: null == allowDuplicateEvents
          ? _value.allowDuplicateEvents
          : allowDuplicateEvents // ignore: cast_nullable_to_non_nullable
              as bool,
      maxTime: null == maxTime
          ? _value.maxTime
          : maxTime // ignore: cast_nullable_to_non_nullable
              as int,
      maxTimeMetric: null == maxTimeMetric
          ? _value.maxTimeMetric
          : maxTimeMetric // ignore: cast_nullable_to_non_nullable
              as String,
      maxTimeRemainSeconds: freezed == maxTimeRemainSeconds
          ? _value.maxTimeRemainSeconds
          : maxTimeRemainSeconds // ignore: cast_nullable_to_non_nullable
              as double?,
      enforceMaxTimeCompletion: null == enforceMaxTimeCompletion
          ? _value.enforceMaxTimeCompletion
          : enforceMaxTimeCompletion // ignore: cast_nullable_to_non_nullable
              as bool,
      isLimitedTimeEvent: null == isLimitedTimeEvent
          ? _value.isLimitedTimeEvent
          : isLimitedTimeEvent // ignore: cast_nullable_to_non_nullable
              as bool,
      limitedTimeEventRemainingSeconds: null == limitedTimeEventRemainingSeconds
          ? _value.limitedTimeEventRemainingSeconds
          : limitedTimeEventRemainingSeconds // ignore: cast_nullable_to_non_nullable
              as double,
      isTicketSubmitted: null == isTicketSubmitted
          ? _value.isTicketSubmitted
          : isTicketSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlaytime: null == isPlaytime
          ? _value.isPlaytime
          : isPlaytime // ignore: cast_nullable_to_non_nullable
              as bool,
      totalPlaytime: null == totalPlaytime
          ? _value.totalPlaytime
          : totalPlaytime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayoutEventsImplCopyWith<$Res>
    implements $PayoutEventsCopyWith<$Res> {
  factory _$$PayoutEventsImplCopyWith(
          _$PayoutEventsImpl value, $Res Function(_$PayoutEventsImpl) then) =
      __$$PayoutEventsImplCopyWithImpl<$Res>;
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
      int totalPlaytime});
}

/// @nodoc
class __$$PayoutEventsImplCopyWithImpl<$Res>
    extends _$PayoutEventsCopyWithImpl<$Res, _$PayoutEventsImpl>
    implements _$$PayoutEventsImplCopyWith<$Res> {
  __$$PayoutEventsImplCopyWithImpl(
      _$PayoutEventsImpl _value, $Res Function(_$PayoutEventsImpl) _then)
      : super(_value, _then);

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
  }) {
    return _then(_$PayoutEventsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      conversionStatus: freezed == conversionStatus
          ? _value.conversionStatus
          : conversionStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      eventDescription: null == eventDescription
          ? _value.eventDescription
          : eventDescription // ignore: cast_nullable_to_non_nullable
              as String,
      eventCategory: null == eventCategory
          ? _value.eventCategory
          : eventCategory // ignore: cast_nullable_to_non_nullable
              as String,
      payoutAmount: null == payoutAmount
          ? _value.payoutAmount
          : payoutAmount // ignore: cast_nullable_to_non_nullable
              as double,
      payoutAmountConverted: null == payoutAmountConverted
          ? _value.payoutAmountConverted
          : payoutAmountConverted // ignore: cast_nullable_to_non_nullable
              as double,
      payoutType: null == payoutType
          ? _value.payoutType
          : payoutType // ignore: cast_nullable_to_non_nullable
              as String,
      allowDuplicateEvents: null == allowDuplicateEvents
          ? _value.allowDuplicateEvents
          : allowDuplicateEvents // ignore: cast_nullable_to_non_nullable
              as bool,
      maxTime: null == maxTime
          ? _value.maxTime
          : maxTime // ignore: cast_nullable_to_non_nullable
              as int,
      maxTimeMetric: null == maxTimeMetric
          ? _value.maxTimeMetric
          : maxTimeMetric // ignore: cast_nullable_to_non_nullable
              as String,
      maxTimeRemainSeconds: freezed == maxTimeRemainSeconds
          ? _value.maxTimeRemainSeconds
          : maxTimeRemainSeconds // ignore: cast_nullable_to_non_nullable
              as double?,
      enforceMaxTimeCompletion: null == enforceMaxTimeCompletion
          ? _value.enforceMaxTimeCompletion
          : enforceMaxTimeCompletion // ignore: cast_nullable_to_non_nullable
              as bool,
      isLimitedTimeEvent: null == isLimitedTimeEvent
          ? _value.isLimitedTimeEvent
          : isLimitedTimeEvent // ignore: cast_nullable_to_non_nullable
              as bool,
      limitedTimeEventRemainingSeconds: null == limitedTimeEventRemainingSeconds
          ? _value.limitedTimeEventRemainingSeconds
          : limitedTimeEventRemainingSeconds // ignore: cast_nullable_to_non_nullable
              as double,
      isTicketSubmitted: null == isTicketSubmitted
          ? _value.isTicketSubmitted
          : isTicketSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlaytime: null == isPlaytime
          ? _value.isPlaytime
          : isPlaytime // ignore: cast_nullable_to_non_nullable
              as bool,
      totalPlaytime: null == totalPlaytime
          ? _value.totalPlaytime
          : totalPlaytime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayoutEventsImpl implements _PayoutEvents {
  _$PayoutEventsImpl(
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
      this.totalPlaytime = 0});

  factory _$PayoutEventsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayoutEventsImplFromJson(json);

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
  String toString() {
    return 'PayoutEvents(id: $id, conversionStatus: $conversionStatus, identifier: $identifier, eventName: $eventName, eventDescription: $eventDescription, eventCategory: $eventCategory, payoutAmount: $payoutAmount, payoutAmountConverted: $payoutAmountConverted, payoutType: $payoutType, allowDuplicateEvents: $allowDuplicateEvents, maxTime: $maxTime, maxTimeMetric: $maxTimeMetric, maxTimeRemainSeconds: $maxTimeRemainSeconds, enforceMaxTimeCompletion: $enforceMaxTimeCompletion, isLimitedTimeEvent: $isLimitedTimeEvent, limitedTimeEventRemainingSeconds: $limitedTimeEventRemainingSeconds, isTicketSubmitted: $isTicketSubmitted, isPlaytime: $isPlaytime, totalPlaytime: $totalPlaytime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayoutEventsImpl &&
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
                other.totalPlaytime == totalPlaytime));
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
        totalPlaytime
      ]);

  /// Create a copy of PayoutEvents
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayoutEventsImplCopyWith<_$PayoutEventsImpl> get copyWith =>
      __$$PayoutEventsImplCopyWithImpl<_$PayoutEventsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayoutEventsImplToJson(
      this,
    );
  }
}

abstract class _PayoutEvents implements PayoutEvents {
  factory _PayoutEvents(
      {final int id,
      final String? conversionStatus,
      final String identifier,
      final String eventName,
      final String eventDescription,
      final String eventCategory,
      final double payoutAmount,
      final double payoutAmountConverted,
      final String payoutType,
      final bool allowDuplicateEvents,
      final int maxTime,
      final String maxTimeMetric,
      final double? maxTimeRemainSeconds,
      final bool enforceMaxTimeCompletion,
      final bool isLimitedTimeEvent,
      final double limitedTimeEventRemainingSeconds,
      final bool isTicketSubmitted,
      final bool isPlaytime,
      final int totalPlaytime}) = _$PayoutEventsImpl;

  factory _PayoutEvents.fromJson(Map<String, dynamic> json) =
      _$PayoutEventsImpl.fromJson;

  @override
  int get id;
  @override
  String? get conversionStatus;
  @override
  String get identifier;
  @override
  String get eventName;
  @override
  String get eventDescription;
  @override
  String get eventCategory;
  @override
  double get payoutAmount;
  @override
  double get payoutAmountConverted;
  @override
  String get payoutType;
  @override
  bool get allowDuplicateEvents;
  @override
  int get maxTime;
  @override
  String get maxTimeMetric;
  @override
  double? get maxTimeRemainSeconds;
  @override
  bool get enforceMaxTimeCompletion;
  @override
  bool get isLimitedTimeEvent;
  @override
  double get limitedTimeEventRemainingSeconds;
  @override
  bool get isTicketSubmitted;
  @override
  bool get isPlaytime;
  @override
  int get totalPlaytime;

  /// Create a copy of PayoutEvents
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayoutEventsImplCopyWith<_$PayoutEventsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Tracking _$TrackingFromJson(Map<String, dynamic> json) {
  return _Tracking.fromJson(json);
}

/// @nodoc
mixin _$Tracking {
  String? get attributionTool => throw _privateConstructorUsedError;
  String? get clickUrl => throw _privateConstructorUsedError;
  String? get impressionUrl => throw _privateConstructorUsedError;
  String? get s2sClickUrl => throw _privateConstructorUsedError;

  /// Serializes this Tracking to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Tracking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrackingCopyWith<Tracking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingCopyWith<$Res> {
  factory $TrackingCopyWith(Tracking value, $Res Function(Tracking) then) =
      _$TrackingCopyWithImpl<$Res, Tracking>;
  @useResult
  $Res call(
      {String? attributionTool,
      String? clickUrl,
      String? impressionUrl,
      String? s2sClickUrl});
}

/// @nodoc
class _$TrackingCopyWithImpl<$Res, $Val extends Tracking>
    implements $TrackingCopyWith<$Res> {
  _$TrackingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      attributionTool: freezed == attributionTool
          ? _value.attributionTool
          : attributionTool // ignore: cast_nullable_to_non_nullable
              as String?,
      clickUrl: freezed == clickUrl
          ? _value.clickUrl
          : clickUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      impressionUrl: freezed == impressionUrl
          ? _value.impressionUrl
          : impressionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      s2sClickUrl: freezed == s2sClickUrl
          ? _value.s2sClickUrl
          : s2sClickUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackingImplCopyWith<$Res>
    implements $TrackingCopyWith<$Res> {
  factory _$$TrackingImplCopyWith(
          _$TrackingImpl value, $Res Function(_$TrackingImpl) then) =
      __$$TrackingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? attributionTool,
      String? clickUrl,
      String? impressionUrl,
      String? s2sClickUrl});
}

/// @nodoc
class __$$TrackingImplCopyWithImpl<$Res>
    extends _$TrackingCopyWithImpl<$Res, _$TrackingImpl>
    implements _$$TrackingImplCopyWith<$Res> {
  __$$TrackingImplCopyWithImpl(
      _$TrackingImpl _value, $Res Function(_$TrackingImpl) _then)
      : super(_value, _then);

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
    return _then(_$TrackingImpl(
      attributionTool: freezed == attributionTool
          ? _value.attributionTool
          : attributionTool // ignore: cast_nullable_to_non_nullable
              as String?,
      clickUrl: freezed == clickUrl
          ? _value.clickUrl
          : clickUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      impressionUrl: freezed == impressionUrl
          ? _value.impressionUrl
          : impressionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      s2sClickUrl: freezed == s2sClickUrl
          ? _value.s2sClickUrl
          : s2sClickUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackingImpl implements _Tracking {
  _$TrackingImpl(
      {this.attributionTool,
      this.clickUrl,
      this.impressionUrl,
      this.s2sClickUrl});

  factory _$TrackingImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackingImplFromJson(json);

  @override
  final String? attributionTool;
  @override
  final String? clickUrl;
  @override
  final String? impressionUrl;
  @override
  final String? s2sClickUrl;

  @override
  String toString() {
    return 'Tracking(attributionTool: $attributionTool, clickUrl: $clickUrl, impressionUrl: $impressionUrl, s2sClickUrl: $s2sClickUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingImpl &&
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

  /// Create a copy of Tracking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingImplCopyWith<_$TrackingImpl> get copyWith =>
      __$$TrackingImplCopyWithImpl<_$TrackingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackingImplToJson(
      this,
    );
  }
}

abstract class _Tracking implements Tracking {
  factory _Tracking(
      {final String? attributionTool,
      final String? clickUrl,
      final String? impressionUrl,
      final String? s2sClickUrl}) = _$TrackingImpl;

  factory _Tracking.fromJson(Map<String, dynamic> json) =
      _$TrackingImpl.fromJson;

  @override
  String? get attributionTool;
  @override
  String? get clickUrl;
  @override
  String? get impressionUrl;
  @override
  String? get s2sClickUrl;

  /// Create a copy of Tracking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackingImplCopyWith<_$TrackingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CampaignPayout _$CampaignPayoutFromJson(Map<String, dynamic> json) {
  return _CampaignPayout.fromJson(json);
}

/// @nodoc
mixin _$CampaignPayout {
  int get totalEvents => throw _privateConstructorUsedError;
  double get totalPayout => throw _privateConstructorUsedError;
  double get totalPayoutConverted => throw _privateConstructorUsedError;
  double get totalMicrochargePayout => throw _privateConstructorUsedError;
  double get totalPlayablePayout => throw _privateConstructorUsedError;
  double get totalPlayablePayoutConverted => throw _privateConstructorUsedError;
  double get totalMicrochargePayoutConverted =>
      throw _privateConstructorUsedError;

  /// Serializes this CampaignPayout to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CampaignPayout
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CampaignPayoutCopyWith<CampaignPayout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignPayoutCopyWith<$Res> {
  factory $CampaignPayoutCopyWith(
          CampaignPayout value, $Res Function(CampaignPayout) then) =
      _$CampaignPayoutCopyWithImpl<$Res, CampaignPayout>;
  @useResult
  $Res call(
      {int totalEvents,
      double totalPayout,
      double totalPayoutConverted,
      double totalMicrochargePayout,
      double totalPlayablePayout,
      double totalPlayablePayoutConverted,
      double totalMicrochargePayoutConverted});
}

/// @nodoc
class _$CampaignPayoutCopyWithImpl<$Res, $Val extends CampaignPayout>
    implements $CampaignPayoutCopyWith<$Res> {
  _$CampaignPayoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CampaignPayout
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalEvents = null,
    Object? totalPayout = null,
    Object? totalPayoutConverted = null,
    Object? totalMicrochargePayout = null,
    Object? totalPlayablePayout = null,
    Object? totalPlayablePayoutConverted = null,
    Object? totalMicrochargePayoutConverted = null,
  }) {
    return _then(_value.copyWith(
      totalEvents: null == totalEvents
          ? _value.totalEvents
          : totalEvents // ignore: cast_nullable_to_non_nullable
              as int,
      totalPayout: null == totalPayout
          ? _value.totalPayout
          : totalPayout // ignore: cast_nullable_to_non_nullable
              as double,
      totalPayoutConverted: null == totalPayoutConverted
          ? _value.totalPayoutConverted
          : totalPayoutConverted // ignore: cast_nullable_to_non_nullable
              as double,
      totalMicrochargePayout: null == totalMicrochargePayout
          ? _value.totalMicrochargePayout
          : totalMicrochargePayout // ignore: cast_nullable_to_non_nullable
              as double,
      totalPlayablePayout: null == totalPlayablePayout
          ? _value.totalPlayablePayout
          : totalPlayablePayout // ignore: cast_nullable_to_non_nullable
              as double,
      totalPlayablePayoutConverted: null == totalPlayablePayoutConverted
          ? _value.totalPlayablePayoutConverted
          : totalPlayablePayoutConverted // ignore: cast_nullable_to_non_nullable
              as double,
      totalMicrochargePayoutConverted: null == totalMicrochargePayoutConverted
          ? _value.totalMicrochargePayoutConverted
          : totalMicrochargePayoutConverted // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CampaignPayoutImplCopyWith<$Res>
    implements $CampaignPayoutCopyWith<$Res> {
  factory _$$CampaignPayoutImplCopyWith(_$CampaignPayoutImpl value,
          $Res Function(_$CampaignPayoutImpl) then) =
      __$$CampaignPayoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalEvents,
      double totalPayout,
      double totalPayoutConverted,
      double totalMicrochargePayout,
      double totalPlayablePayout,
      double totalPlayablePayoutConverted,
      double totalMicrochargePayoutConverted});
}

/// @nodoc
class __$$CampaignPayoutImplCopyWithImpl<$Res>
    extends _$CampaignPayoutCopyWithImpl<$Res, _$CampaignPayoutImpl>
    implements _$$CampaignPayoutImplCopyWith<$Res> {
  __$$CampaignPayoutImplCopyWithImpl(
      _$CampaignPayoutImpl _value, $Res Function(_$CampaignPayoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignPayout
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalEvents = null,
    Object? totalPayout = null,
    Object? totalPayoutConverted = null,
    Object? totalMicrochargePayout = null,
    Object? totalPlayablePayout = null,
    Object? totalPlayablePayoutConverted = null,
    Object? totalMicrochargePayoutConverted = null,
  }) {
    return _then(_$CampaignPayoutImpl(
      totalEvents: null == totalEvents
          ? _value.totalEvents
          : totalEvents // ignore: cast_nullable_to_non_nullable
              as int,
      totalPayout: null == totalPayout
          ? _value.totalPayout
          : totalPayout // ignore: cast_nullable_to_non_nullable
              as double,
      totalPayoutConverted: null == totalPayoutConverted
          ? _value.totalPayoutConverted
          : totalPayoutConverted // ignore: cast_nullable_to_non_nullable
              as double,
      totalMicrochargePayout: null == totalMicrochargePayout
          ? _value.totalMicrochargePayout
          : totalMicrochargePayout // ignore: cast_nullable_to_non_nullable
              as double,
      totalPlayablePayout: null == totalPlayablePayout
          ? _value.totalPlayablePayout
          : totalPlayablePayout // ignore: cast_nullable_to_non_nullable
              as double,
      totalPlayablePayoutConverted: null == totalPlayablePayoutConverted
          ? _value.totalPlayablePayoutConverted
          : totalPlayablePayoutConverted // ignore: cast_nullable_to_non_nullable
              as double,
      totalMicrochargePayoutConverted: null == totalMicrochargePayoutConverted
          ? _value.totalMicrochargePayoutConverted
          : totalMicrochargePayoutConverted // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CampaignPayoutImpl implements _CampaignPayout {
  _$CampaignPayoutImpl(
      {this.totalEvents = 0,
      this.totalPayout = 0,
      this.totalPayoutConverted = 0,
      this.totalMicrochargePayout = 0,
      this.totalPlayablePayout = 0,
      this.totalPlayablePayoutConverted = 0,
      this.totalMicrochargePayoutConverted = 0});

  factory _$CampaignPayoutImpl.fromJson(Map<String, dynamic> json) =>
      _$$CampaignPayoutImplFromJson(json);

  @override
  @JsonKey()
  final int totalEvents;
  @override
  @JsonKey()
  final double totalPayout;
  @override
  @JsonKey()
  final double totalPayoutConverted;
  @override
  @JsonKey()
  final double totalMicrochargePayout;
  @override
  @JsonKey()
  final double totalPlayablePayout;
  @override
  @JsonKey()
  final double totalPlayablePayoutConverted;
  @override
  @JsonKey()
  final double totalMicrochargePayoutConverted;

  @override
  String toString() {
    return 'CampaignPayout(totalEvents: $totalEvents, totalPayout: $totalPayout, totalPayoutConverted: $totalPayoutConverted, totalMicrochargePayout: $totalMicrochargePayout, totalPlayablePayout: $totalPlayablePayout, totalPlayablePayoutConverted: $totalPlayablePayoutConverted, totalMicrochargePayoutConverted: $totalMicrochargePayoutConverted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignPayoutImpl &&
            (identical(other.totalEvents, totalEvents) ||
                other.totalEvents == totalEvents) &&
            (identical(other.totalPayout, totalPayout) ||
                other.totalPayout == totalPayout) &&
            (identical(other.totalPayoutConverted, totalPayoutConverted) ||
                other.totalPayoutConverted == totalPayoutConverted) &&
            (identical(other.totalMicrochargePayout, totalMicrochargePayout) ||
                other.totalMicrochargePayout == totalMicrochargePayout) &&
            (identical(other.totalPlayablePayout, totalPlayablePayout) ||
                other.totalPlayablePayout == totalPlayablePayout) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      totalEvents,
      totalPayout,
      totalPayoutConverted,
      totalMicrochargePayout,
      totalPlayablePayout,
      totalPlayablePayoutConverted,
      totalMicrochargePayoutConverted);

  /// Create a copy of CampaignPayout
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignPayoutImplCopyWith<_$CampaignPayoutImpl> get copyWith =>
      __$$CampaignPayoutImplCopyWithImpl<_$CampaignPayoutImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampaignPayoutImplToJson(
      this,
    );
  }
}

abstract class _CampaignPayout implements CampaignPayout {
  factory _CampaignPayout(
      {final int totalEvents,
      final double totalPayout,
      final double totalPayoutConverted,
      final double totalMicrochargePayout,
      final double totalPlayablePayout,
      final double totalPlayablePayoutConverted,
      final double totalMicrochargePayoutConverted}) = _$CampaignPayoutImpl;

  factory _CampaignPayout.fromJson(Map<String, dynamic> json) =
      _$CampaignPayoutImpl.fromJson;

  @override
  int get totalEvents;
  @override
  double get totalPayout;
  @override
  double get totalPayoutConverted;
  @override
  double get totalMicrochargePayout;
  @override
  double get totalPlayablePayout;
  @override
  double get totalPlayablePayoutConverted;
  @override
  double get totalMicrochargePayoutConverted;

  /// Create a copy of CampaignPayout
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CampaignPayoutImplCopyWith<_$CampaignPayoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Currency _$CurrencyFromJson(Map<String, dynamic> json) {
  return _Currency.fromJson(json);
}

/// @nodoc
mixin _$Currency {
  String get name => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get adUnitName => throw _privateConstructorUsedError;
  String get adUnitCurrencyName => throw _privateConstructorUsedError;
  String get adUnitCurrencyIcon => throw _privateConstructorUsedError;
  double get adUnitCurrencyConversion => throw _privateConstructorUsedError;

  /// Serializes this Currency to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrencyCopyWith<Currency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyCopyWith<$Res> {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) then) =
      _$CurrencyCopyWithImpl<$Res, Currency>;
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
class _$CurrencyCopyWithImpl<$Res, $Val extends Currency>
    implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      adUnitName: null == adUnitName
          ? _value.adUnitName
          : adUnitName // ignore: cast_nullable_to_non_nullable
              as String,
      adUnitCurrencyName: null == adUnitCurrencyName
          ? _value.adUnitCurrencyName
          : adUnitCurrencyName // ignore: cast_nullable_to_non_nullable
              as String,
      adUnitCurrencyIcon: null == adUnitCurrencyIcon
          ? _value.adUnitCurrencyIcon
          : adUnitCurrencyIcon // ignore: cast_nullable_to_non_nullable
              as String,
      adUnitCurrencyConversion: null == adUnitCurrencyConversion
          ? _value.adUnitCurrencyConversion
          : adUnitCurrencyConversion // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencyImplCopyWith<$Res>
    implements $CurrencyCopyWith<$Res> {
  factory _$$CurrencyImplCopyWith(
          _$CurrencyImpl value, $Res Function(_$CurrencyImpl) then) =
      __$$CurrencyImplCopyWithImpl<$Res>;
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
class __$$CurrencyImplCopyWithImpl<$Res>
    extends _$CurrencyCopyWithImpl<$Res, _$CurrencyImpl>
    implements _$$CurrencyImplCopyWith<$Res> {
  __$$CurrencyImplCopyWithImpl(
      _$CurrencyImpl _value, $Res Function(_$CurrencyImpl) _then)
      : super(_value, _then);

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
    return _then(_$CurrencyImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      adUnitName: null == adUnitName
          ? _value.adUnitName
          : adUnitName // ignore: cast_nullable_to_non_nullable
              as String,
      adUnitCurrencyName: null == adUnitCurrencyName
          ? _value.adUnitCurrencyName
          : adUnitCurrencyName // ignore: cast_nullable_to_non_nullable
              as String,
      adUnitCurrencyIcon: null == adUnitCurrencyIcon
          ? _value.adUnitCurrencyIcon
          : adUnitCurrencyIcon // ignore: cast_nullable_to_non_nullable
              as String,
      adUnitCurrencyConversion: null == adUnitCurrencyConversion
          ? _value.adUnitCurrencyConversion
          : adUnitCurrencyConversion // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrencyImpl implements _Currency {
  _$CurrencyImpl(
      {this.name = '',
      this.symbol = '',
      this.adUnitName = '',
      this.adUnitCurrencyName = '',
      this.adUnitCurrencyIcon = '',
      this.adUnitCurrencyConversion = 0});

  factory _$CurrencyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrencyImplFromJson(json);

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

  @override
  String toString() {
    return 'Currency(name: $name, symbol: $symbol, adUnitName: $adUnitName, adUnitCurrencyName: $adUnitCurrencyName, adUnitCurrencyIcon: $adUnitCurrencyIcon, adUnitCurrencyConversion: $adUnitCurrencyConversion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyImpl &&
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

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyImplCopyWith<_$CurrencyImpl> get copyWith =>
      __$$CurrencyImplCopyWithImpl<_$CurrencyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrencyImplToJson(
      this,
    );
  }
}

abstract class _Currency implements Currency {
  factory _Currency(
      {final String name,
      final String symbol,
      final String adUnitName,
      final String adUnitCurrencyName,
      final String adUnitCurrencyIcon,
      final double adUnitCurrencyConversion}) = _$CurrencyImpl;

  factory _Currency.fromJson(Map<String, dynamic> json) =
      _$CurrencyImpl.fromJson;

  @override
  String get name;
  @override
  String get symbol;
  @override
  String get adUnitName;
  @override
  String get adUnitCurrencyName;
  @override
  String get adUnitCurrencyIcon;
  @override
  double get adUnitCurrencyConversion;

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrencyImplCopyWith<_$CurrencyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

App _$AppFromJson(Map<String, dynamic> json) {
  return _App.fromJson(json);
}

/// @nodoc
mixin _$App {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get packageName => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  double? get rating => throw _privateConstructorUsedError;
  String get shortDescription => throw _privateConstructorUsedError;
  String get store => throw _privateConstructorUsedError;
  String get storeCategory => throw _privateConstructorUsedError;
  String get previewUrl => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;

  /// Serializes this App to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of App
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppCopyWith<App> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppCopyWith<$Res> {
  factory $AppCopyWith(App value, $Res Function(App) then) =
      _$AppCopyWithImpl<$Res, App>;
  @useResult
  $Res call(
      {int id,
      String title,
      String packageName,
      @JsonKey(name: 'rating') double? rating,
      String shortDescription,
      String store,
      String storeCategory,
      String previewUrl,
      String thumbnail});
}

/// @nodoc
class _$AppCopyWithImpl<$Res, $Val extends App> implements $AppCopyWith<$Res> {
  _$AppCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of App
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? packageName = null,
    Object? rating = freezed,
    Object? shortDescription = null,
    Object? store = null,
    Object? storeCategory = null,
    Object? previewUrl = null,
    Object? thumbnail = null,
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
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppImplCopyWith<$Res> implements $AppCopyWith<$Res> {
  factory _$$AppImplCopyWith(_$AppImpl value, $Res Function(_$AppImpl) then) =
      __$$AppImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String packageName,
      @JsonKey(name: 'rating') double? rating,
      String shortDescription,
      String store,
      String storeCategory,
      String previewUrl,
      String thumbnail});
}

/// @nodoc
class __$$AppImplCopyWithImpl<$Res> extends _$AppCopyWithImpl<$Res, _$AppImpl>
    implements _$$AppImplCopyWith<$Res> {
  __$$AppImplCopyWithImpl(_$AppImpl _value, $Res Function(_$AppImpl) _then)
      : super(_value, _then);

  /// Create a copy of App
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? packageName = null,
    Object? rating = freezed,
    Object? shortDescription = null,
    Object? store = null,
    Object? storeCategory = null,
    Object? previewUrl = null,
    Object? thumbnail = null,
  }) {
    return _then(_$AppImpl(
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
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppImpl implements _App {
  _$AppImpl(
      {this.id = 0,
      this.title = '',
      this.packageName = '',
      @JsonKey(name: 'rating') this.rating,
      this.shortDescription = '',
      this.store = '',
      this.storeCategory = '',
      this.previewUrl = '',
      this.thumbnail = ''});

  factory _$AppImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppImplFromJson(json);

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
  @JsonKey(name: 'rating')
  final double? rating;
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
  String toString() {
    return 'App(id: $id, title: $title, packageName: $packageName, rating: $rating, shortDescription: $shortDescription, store: $store, storeCategory: $storeCategory, previewUrl: $previewUrl, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppImpl &&
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
                other.thumbnail == thumbnail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, packageName, rating,
      shortDescription, store, storeCategory, previewUrl, thumbnail);

  /// Create a copy of App
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppImplCopyWith<_$AppImpl> get copyWith =>
      __$$AppImplCopyWithImpl<_$AppImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppImplToJson(
      this,
    );
  }
}

abstract class _App implements App {
  factory _App(
      {final int id,
      final String title,
      final String packageName,
      @JsonKey(name: 'rating') final double? rating,
      final String shortDescription,
      final String store,
      final String storeCategory,
      final String previewUrl,
      final String thumbnail}) = _$AppImpl;

  factory _App.fromJson(Map<String, dynamic> json) = _$AppImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get packageName;
  @override
  @JsonKey(name: 'rating')
  double? get rating;
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

  /// Create a copy of App
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppImplCopyWith<_$AppImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Reward _$RewardFromJson(Map<String, dynamic> json) {
  return _Reward.fromJson(json);
}

/// @nodoc
mixin _$Reward {
  String get rewardDifficulty => throw _privateConstructorUsedError;

  /// Serializes this Reward to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Reward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RewardCopyWith<Reward> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardCopyWith<$Res> {
  factory $RewardCopyWith(Reward value, $Res Function(Reward) then) =
      _$RewardCopyWithImpl<$Res, Reward>;
  @useResult
  $Res call({String rewardDifficulty});
}

/// @nodoc
class _$RewardCopyWithImpl<$Res, $Val extends Reward>
    implements $RewardCopyWith<$Res> {
  _$RewardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Reward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rewardDifficulty = null,
  }) {
    return _then(_value.copyWith(
      rewardDifficulty: null == rewardDifficulty
          ? _value.rewardDifficulty
          : rewardDifficulty // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RewardImplCopyWith<$Res> implements $RewardCopyWith<$Res> {
  factory _$$RewardImplCopyWith(
          _$RewardImpl value, $Res Function(_$RewardImpl) then) =
      __$$RewardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String rewardDifficulty});
}

/// @nodoc
class __$$RewardImplCopyWithImpl<$Res>
    extends _$RewardCopyWithImpl<$Res, _$RewardImpl>
    implements _$$RewardImplCopyWith<$Res> {
  __$$RewardImplCopyWithImpl(
      _$RewardImpl _value, $Res Function(_$RewardImpl) _then)
      : super(_value, _then);

  /// Create a copy of Reward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rewardDifficulty = null,
  }) {
    return _then(_$RewardImpl(
      rewardDifficulty: null == rewardDifficulty
          ? _value.rewardDifficulty
          : rewardDifficulty // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RewardImpl implements _Reward {
  _$RewardImpl({this.rewardDifficulty = ''});

  factory _$RewardImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardImplFromJson(json);

  @override
  @JsonKey()
  final String rewardDifficulty;

  @override
  String toString() {
    return 'Reward(rewardDifficulty: $rewardDifficulty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardImpl &&
            (identical(other.rewardDifficulty, rewardDifficulty) ||
                other.rewardDifficulty == rewardDifficulty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rewardDifficulty);

  /// Create a copy of Reward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardImplCopyWith<_$RewardImpl> get copyWith =>
      __$$RewardImplCopyWithImpl<_$RewardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardImplToJson(
      this,
    );
  }
}

abstract class _Reward implements Reward {
  factory _Reward({final String rewardDifficulty}) = _$RewardImpl;

  factory _Reward.fromJson(Map<String, dynamic> json) = _$RewardImpl.fromJson;

  @override
  String get rewardDifficulty;

  /// Create a copy of Reward
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RewardImplCopyWith<_$RewardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MicroCharge _$MicroChargeFromJson(Map<String, dynamic> json) {
  return _MicroCharge.fromJson(json);
}

/// @nodoc
mixin _$MicroCharge {
  double get earned => throw _privateConstructorUsedError;
  double get earnedConversion => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;
  double get totalConversion => throw _privateConstructorUsedError;

  /// Serializes this MicroCharge to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MicroCharge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MicroChargeCopyWith<MicroCharge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MicroChargeCopyWith<$Res> {
  factory $MicroChargeCopyWith(
          MicroCharge value, $Res Function(MicroCharge) then) =
      _$MicroChargeCopyWithImpl<$Res, MicroCharge>;
  @useResult
  $Res call(
      {double earned,
      double earnedConversion,
      double total,
      double totalConversion});
}

/// @nodoc
class _$MicroChargeCopyWithImpl<$Res, $Val extends MicroCharge>
    implements $MicroChargeCopyWith<$Res> {
  _$MicroChargeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MicroCharge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? earned = null,
    Object? earnedConversion = null,
    Object? total = null,
    Object? totalConversion = null,
  }) {
    return _then(_value.copyWith(
      earned: null == earned
          ? _value.earned
          : earned // ignore: cast_nullable_to_non_nullable
              as double,
      earnedConversion: null == earnedConversion
          ? _value.earnedConversion
          : earnedConversion // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      totalConversion: null == totalConversion
          ? _value.totalConversion
          : totalConversion // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MicroChargeImplCopyWith<$Res>
    implements $MicroChargeCopyWith<$Res> {
  factory _$$MicroChargeImplCopyWith(
          _$MicroChargeImpl value, $Res Function(_$MicroChargeImpl) then) =
      __$$MicroChargeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double earned,
      double earnedConversion,
      double total,
      double totalConversion});
}

/// @nodoc
class __$$MicroChargeImplCopyWithImpl<$Res>
    extends _$MicroChargeCopyWithImpl<$Res, _$MicroChargeImpl>
    implements _$$MicroChargeImplCopyWith<$Res> {
  __$$MicroChargeImplCopyWithImpl(
      _$MicroChargeImpl _value, $Res Function(_$MicroChargeImpl) _then)
      : super(_value, _then);

  /// Create a copy of MicroCharge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? earned = null,
    Object? earnedConversion = null,
    Object? total = null,
    Object? totalConversion = null,
  }) {
    return _then(_$MicroChargeImpl(
      earned: null == earned
          ? _value.earned
          : earned // ignore: cast_nullable_to_non_nullable
              as double,
      earnedConversion: null == earnedConversion
          ? _value.earnedConversion
          : earnedConversion // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      totalConversion: null == totalConversion
          ? _value.totalConversion
          : totalConversion // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MicroChargeImpl implements _MicroCharge {
  const _$MicroChargeImpl(
      {this.earned = 0,
      this.earnedConversion = 0,
      this.total = 0,
      this.totalConversion = 0});

  factory _$MicroChargeImpl.fromJson(Map<String, dynamic> json) =>
      _$$MicroChargeImplFromJson(json);

  @override
  @JsonKey()
  final double earned;
  @override
  @JsonKey()
  final double earnedConversion;
  @override
  @JsonKey()
  final double total;
  @override
  @JsonKey()
  final double totalConversion;

  @override
  String toString() {
    return 'MicroCharge(earned: $earned, earnedConversion: $earnedConversion, total: $total, totalConversion: $totalConversion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MicroChargeImpl &&
            (identical(other.earned, earned) || other.earned == earned) &&
            (identical(other.earnedConversion, earnedConversion) ||
                other.earnedConversion == earnedConversion) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalConversion, totalConversion) ||
                other.totalConversion == totalConversion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, earned, earnedConversion, total, totalConversion);

  /// Create a copy of MicroCharge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MicroChargeImplCopyWith<_$MicroChargeImpl> get copyWith =>
      __$$MicroChargeImplCopyWithImpl<_$MicroChargeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MicroChargeImplToJson(
      this,
    );
  }
}

abstract class _MicroCharge implements MicroCharge {
  const factory _MicroCharge(
      {final double earned,
      final double earnedConversion,
      final double total,
      final double totalConversion}) = _$MicroChargeImpl;

  factory _MicroCharge.fromJson(Map<String, dynamic> json) =
      _$MicroChargeImpl.fromJson;

  @override
  double get earned;
  @override
  double get earnedConversion;
  @override
  double get total;
  @override
  double get totalConversion;

  /// Create a copy of MicroCharge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MicroChargeImplCopyWith<_$MicroChargeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MicroChargeEvents _$MicroChargeEventsFromJson(Map<String, dynamic> json) {
  return _MicroChargeEvents.fromJson(json);
}

/// @nodoc
mixin _$MicroChargeEvents {
  int get id => throw _privateConstructorUsedError;
  String get conversionStatus => throw _privateConstructorUsedError;
  String get identifier => throw _privateConstructorUsedError;
  String get eventName => throw _privateConstructorUsedError;
  String get eventDescription => throw _privateConstructorUsedError;
  String get eventCategory => throw _privateConstructorUsedError;
  double get payoutAmount => throw _privateConstructorUsedError;
  double get payoutAmountConverted => throw _privateConstructorUsedError;
  int get payoutTypeId => throw _privateConstructorUsedError;
  String get payoutType => throw _privateConstructorUsedError;
  bool get allowDuplicateEvents => throw _privateConstructorUsedError;
  int get maxTime => throw _privateConstructorUsedError;
  String get maxTimeMetric => throw _privateConstructorUsedError;
  double? get maxTimeRemainSeconds => throw _privateConstructorUsedError;
  bool get enforceMaxTimeCompletion => throw _privateConstructorUsedError;
  int get dailyCount => throw _privateConstructorUsedError;
  int get dailyLimit => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  bool get isTicketSubmitted => throw _privateConstructorUsedError;
  bool get isLimitedTimeEvent => throw _privateConstructorUsedError;
  double get limitedTimeEventRemainingSeconds =>
      throw _privateConstructorUsedError;

  /// Serializes this MicroChargeEvents to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MicroChargeEvents
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MicroChargeEventsCopyWith<MicroChargeEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MicroChargeEventsCopyWith<$Res> {
  factory $MicroChargeEventsCopyWith(
          MicroChargeEvents value, $Res Function(MicroChargeEvents) then) =
      _$MicroChargeEventsCopyWithImpl<$Res, MicroChargeEvents>;
  @useResult
  $Res call(
      {int id,
      String conversionStatus,
      String identifier,
      String eventName,
      String eventDescription,
      String eventCategory,
      double payoutAmount,
      double payoutAmountConverted,
      int payoutTypeId,
      String payoutType,
      bool allowDuplicateEvents,
      int maxTime,
      String maxTimeMetric,
      double? maxTimeRemainSeconds,
      bool enforceMaxTimeCompletion,
      int dailyCount,
      int dailyLimit,
      int count,
      int limit,
      bool isTicketSubmitted,
      bool isLimitedTimeEvent,
      double limitedTimeEventRemainingSeconds});
}

/// @nodoc
class _$MicroChargeEventsCopyWithImpl<$Res, $Val extends MicroChargeEvents>
    implements $MicroChargeEventsCopyWith<$Res> {
  _$MicroChargeEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MicroChargeEvents
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? conversionStatus = null,
    Object? identifier = null,
    Object? eventName = null,
    Object? eventDescription = null,
    Object? eventCategory = null,
    Object? payoutAmount = null,
    Object? payoutAmountConverted = null,
    Object? payoutTypeId = null,
    Object? payoutType = null,
    Object? allowDuplicateEvents = null,
    Object? maxTime = null,
    Object? maxTimeMetric = null,
    Object? maxTimeRemainSeconds = freezed,
    Object? enforceMaxTimeCompletion = null,
    Object? dailyCount = null,
    Object? dailyLimit = null,
    Object? count = null,
    Object? limit = null,
    Object? isTicketSubmitted = null,
    Object? isLimitedTimeEvent = null,
    Object? limitedTimeEventRemainingSeconds = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      conversionStatus: null == conversionStatus
          ? _value.conversionStatus
          : conversionStatus // ignore: cast_nullable_to_non_nullable
              as String,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      eventDescription: null == eventDescription
          ? _value.eventDescription
          : eventDescription // ignore: cast_nullable_to_non_nullable
              as String,
      eventCategory: null == eventCategory
          ? _value.eventCategory
          : eventCategory // ignore: cast_nullable_to_non_nullable
              as String,
      payoutAmount: null == payoutAmount
          ? _value.payoutAmount
          : payoutAmount // ignore: cast_nullable_to_non_nullable
              as double,
      payoutAmountConverted: null == payoutAmountConverted
          ? _value.payoutAmountConverted
          : payoutAmountConverted // ignore: cast_nullable_to_non_nullable
              as double,
      payoutTypeId: null == payoutTypeId
          ? _value.payoutTypeId
          : payoutTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      payoutType: null == payoutType
          ? _value.payoutType
          : payoutType // ignore: cast_nullable_to_non_nullable
              as String,
      allowDuplicateEvents: null == allowDuplicateEvents
          ? _value.allowDuplicateEvents
          : allowDuplicateEvents // ignore: cast_nullable_to_non_nullable
              as bool,
      maxTime: null == maxTime
          ? _value.maxTime
          : maxTime // ignore: cast_nullable_to_non_nullable
              as int,
      maxTimeMetric: null == maxTimeMetric
          ? _value.maxTimeMetric
          : maxTimeMetric // ignore: cast_nullable_to_non_nullable
              as String,
      maxTimeRemainSeconds: freezed == maxTimeRemainSeconds
          ? _value.maxTimeRemainSeconds
          : maxTimeRemainSeconds // ignore: cast_nullable_to_non_nullable
              as double?,
      enforceMaxTimeCompletion: null == enforceMaxTimeCompletion
          ? _value.enforceMaxTimeCompletion
          : enforceMaxTimeCompletion // ignore: cast_nullable_to_non_nullable
              as bool,
      dailyCount: null == dailyCount
          ? _value.dailyCount
          : dailyCount // ignore: cast_nullable_to_non_nullable
              as int,
      dailyLimit: null == dailyLimit
          ? _value.dailyLimit
          : dailyLimit // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      isTicketSubmitted: null == isTicketSubmitted
          ? _value.isTicketSubmitted
          : isTicketSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      isLimitedTimeEvent: null == isLimitedTimeEvent
          ? _value.isLimitedTimeEvent
          : isLimitedTimeEvent // ignore: cast_nullable_to_non_nullable
              as bool,
      limitedTimeEventRemainingSeconds: null == limitedTimeEventRemainingSeconds
          ? _value.limitedTimeEventRemainingSeconds
          : limitedTimeEventRemainingSeconds // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MicroChargeEventsImplCopyWith<$Res>
    implements $MicroChargeEventsCopyWith<$Res> {
  factory _$$MicroChargeEventsImplCopyWith(_$MicroChargeEventsImpl value,
          $Res Function(_$MicroChargeEventsImpl) then) =
      __$$MicroChargeEventsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String conversionStatus,
      String identifier,
      String eventName,
      String eventDescription,
      String eventCategory,
      double payoutAmount,
      double payoutAmountConverted,
      int payoutTypeId,
      String payoutType,
      bool allowDuplicateEvents,
      int maxTime,
      String maxTimeMetric,
      double? maxTimeRemainSeconds,
      bool enforceMaxTimeCompletion,
      int dailyCount,
      int dailyLimit,
      int count,
      int limit,
      bool isTicketSubmitted,
      bool isLimitedTimeEvent,
      double limitedTimeEventRemainingSeconds});
}

/// @nodoc
class __$$MicroChargeEventsImplCopyWithImpl<$Res>
    extends _$MicroChargeEventsCopyWithImpl<$Res, _$MicroChargeEventsImpl>
    implements _$$MicroChargeEventsImplCopyWith<$Res> {
  __$$MicroChargeEventsImplCopyWithImpl(_$MicroChargeEventsImpl _value,
      $Res Function(_$MicroChargeEventsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MicroChargeEvents
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? conversionStatus = null,
    Object? identifier = null,
    Object? eventName = null,
    Object? eventDescription = null,
    Object? eventCategory = null,
    Object? payoutAmount = null,
    Object? payoutAmountConverted = null,
    Object? payoutTypeId = null,
    Object? payoutType = null,
    Object? allowDuplicateEvents = null,
    Object? maxTime = null,
    Object? maxTimeMetric = null,
    Object? maxTimeRemainSeconds = freezed,
    Object? enforceMaxTimeCompletion = null,
    Object? dailyCount = null,
    Object? dailyLimit = null,
    Object? count = null,
    Object? limit = null,
    Object? isTicketSubmitted = null,
    Object? isLimitedTimeEvent = null,
    Object? limitedTimeEventRemainingSeconds = null,
  }) {
    return _then(_$MicroChargeEventsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      conversionStatus: null == conversionStatus
          ? _value.conversionStatus
          : conversionStatus // ignore: cast_nullable_to_non_nullable
              as String,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      eventDescription: null == eventDescription
          ? _value.eventDescription
          : eventDescription // ignore: cast_nullable_to_non_nullable
              as String,
      eventCategory: null == eventCategory
          ? _value.eventCategory
          : eventCategory // ignore: cast_nullable_to_non_nullable
              as String,
      payoutAmount: null == payoutAmount
          ? _value.payoutAmount
          : payoutAmount // ignore: cast_nullable_to_non_nullable
              as double,
      payoutAmountConverted: null == payoutAmountConverted
          ? _value.payoutAmountConverted
          : payoutAmountConverted // ignore: cast_nullable_to_non_nullable
              as double,
      payoutTypeId: null == payoutTypeId
          ? _value.payoutTypeId
          : payoutTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      payoutType: null == payoutType
          ? _value.payoutType
          : payoutType // ignore: cast_nullable_to_non_nullable
              as String,
      allowDuplicateEvents: null == allowDuplicateEvents
          ? _value.allowDuplicateEvents
          : allowDuplicateEvents // ignore: cast_nullable_to_non_nullable
              as bool,
      maxTime: null == maxTime
          ? _value.maxTime
          : maxTime // ignore: cast_nullable_to_non_nullable
              as int,
      maxTimeMetric: null == maxTimeMetric
          ? _value.maxTimeMetric
          : maxTimeMetric // ignore: cast_nullable_to_non_nullable
              as String,
      maxTimeRemainSeconds: freezed == maxTimeRemainSeconds
          ? _value.maxTimeRemainSeconds
          : maxTimeRemainSeconds // ignore: cast_nullable_to_non_nullable
              as double?,
      enforceMaxTimeCompletion: null == enforceMaxTimeCompletion
          ? _value.enforceMaxTimeCompletion
          : enforceMaxTimeCompletion // ignore: cast_nullable_to_non_nullable
              as bool,
      dailyCount: null == dailyCount
          ? _value.dailyCount
          : dailyCount // ignore: cast_nullable_to_non_nullable
              as int,
      dailyLimit: null == dailyLimit
          ? _value.dailyLimit
          : dailyLimit // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      isTicketSubmitted: null == isTicketSubmitted
          ? _value.isTicketSubmitted
          : isTicketSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      isLimitedTimeEvent: null == isLimitedTimeEvent
          ? _value.isLimitedTimeEvent
          : isLimitedTimeEvent // ignore: cast_nullable_to_non_nullable
              as bool,
      limitedTimeEventRemainingSeconds: null == limitedTimeEventRemainingSeconds
          ? _value.limitedTimeEventRemainingSeconds
          : limitedTimeEventRemainingSeconds // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MicroChargeEventsImpl implements _MicroChargeEvents {
  const _$MicroChargeEventsImpl(
      {this.id = 0,
      this.conversionStatus = '',
      this.identifier = '',
      this.eventName = '',
      this.eventDescription = '',
      this.eventCategory = '',
      this.payoutAmount = 0,
      this.payoutAmountConverted = 0,
      this.payoutTypeId = 0,
      this.payoutType = '',
      this.allowDuplicateEvents = false,
      this.maxTime = 0,
      this.maxTimeMetric = '',
      this.maxTimeRemainSeconds,
      this.enforceMaxTimeCompletion = false,
      this.dailyCount = 0,
      this.dailyLimit = 0,
      this.count = 0,
      this.limit = 0,
      this.isTicketSubmitted = false,
      this.isLimitedTimeEvent = false,
      this.limitedTimeEventRemainingSeconds = 0});

  factory _$MicroChargeEventsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MicroChargeEventsImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String conversionStatus;
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
  final int payoutTypeId;
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
  @override
  @JsonKey()
  final bool isTicketSubmitted;
  @override
  @JsonKey()
  final bool isLimitedTimeEvent;
  @override
  @JsonKey()
  final double limitedTimeEventRemainingSeconds;

  @override
  String toString() {
    return 'MicroChargeEvents(id: $id, conversionStatus: $conversionStatus, identifier: $identifier, eventName: $eventName, eventDescription: $eventDescription, eventCategory: $eventCategory, payoutAmount: $payoutAmount, payoutAmountConverted: $payoutAmountConverted, payoutTypeId: $payoutTypeId, payoutType: $payoutType, allowDuplicateEvents: $allowDuplicateEvents, maxTime: $maxTime, maxTimeMetric: $maxTimeMetric, maxTimeRemainSeconds: $maxTimeRemainSeconds, enforceMaxTimeCompletion: $enforceMaxTimeCompletion, dailyCount: $dailyCount, dailyLimit: $dailyLimit, count: $count, limit: $limit, isTicketSubmitted: $isTicketSubmitted, isLimitedTimeEvent: $isLimitedTimeEvent, limitedTimeEventRemainingSeconds: $limitedTimeEventRemainingSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MicroChargeEventsImpl &&
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
            (identical(other.payoutTypeId, payoutTypeId) ||
                other.payoutTypeId == payoutTypeId) &&
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
            (identical(other.dailyCount, dailyCount) ||
                other.dailyCount == dailyCount) &&
            (identical(other.dailyLimit, dailyLimit) ||
                other.dailyLimit == dailyLimit) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.isTicketSubmitted, isTicketSubmitted) ||
                other.isTicketSubmitted == isTicketSubmitted) &&
            (identical(other.isLimitedTimeEvent, isLimitedTimeEvent) ||
                other.isLimitedTimeEvent == isLimitedTimeEvent) &&
            (identical(other.limitedTimeEventRemainingSeconds,
                    limitedTimeEventRemainingSeconds) ||
                other.limitedTimeEventRemainingSeconds ==
                    limitedTimeEventRemainingSeconds));
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
        payoutTypeId,
        payoutType,
        allowDuplicateEvents,
        maxTime,
        maxTimeMetric,
        maxTimeRemainSeconds,
        enforceMaxTimeCompletion,
        dailyCount,
        dailyLimit,
        count,
        limit,
        isTicketSubmitted,
        isLimitedTimeEvent,
        limitedTimeEventRemainingSeconds
      ]);

  /// Create a copy of MicroChargeEvents
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MicroChargeEventsImplCopyWith<_$MicroChargeEventsImpl> get copyWith =>
      __$$MicroChargeEventsImplCopyWithImpl<_$MicroChargeEventsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MicroChargeEventsImplToJson(
      this,
    );
  }
}

abstract class _MicroChargeEvents implements MicroChargeEvents {
  const factory _MicroChargeEvents(
      {final int id,
      final String conversionStatus,
      final String identifier,
      final String eventName,
      final String eventDescription,
      final String eventCategory,
      final double payoutAmount,
      final double payoutAmountConverted,
      final int payoutTypeId,
      final String payoutType,
      final bool allowDuplicateEvents,
      final int maxTime,
      final String maxTimeMetric,
      final double? maxTimeRemainSeconds,
      final bool enforceMaxTimeCompletion,
      final int dailyCount,
      final int dailyLimit,
      final int count,
      final int limit,
      final bool isTicketSubmitted,
      final bool isLimitedTimeEvent,
      final double limitedTimeEventRemainingSeconds}) = _$MicroChargeEventsImpl;

  factory _MicroChargeEvents.fromJson(Map<String, dynamic> json) =
      _$MicroChargeEventsImpl.fromJson;

  @override
  int get id;
  @override
  String get conversionStatus;
  @override
  String get identifier;
  @override
  String get eventName;
  @override
  String get eventDescription;
  @override
  String get eventCategory;
  @override
  double get payoutAmount;
  @override
  double get payoutAmountConverted;
  @override
  int get payoutTypeId;
  @override
  String get payoutType;
  @override
  bool get allowDuplicateEvents;
  @override
  int get maxTime;
  @override
  String get maxTimeMetric;
  @override
  double? get maxTimeRemainSeconds;
  @override
  bool get enforceMaxTimeCompletion;
  @override
  int get dailyCount;
  @override
  int get dailyLimit;
  @override
  int get count;
  @override
  int get limit;
  @override
  bool get isTicketSubmitted;
  @override
  bool get isLimitedTimeEvent;
  @override
  double get limitedTimeEventRemainingSeconds;

  /// Create a copy of MicroChargeEvents
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MicroChargeEventsImplCopyWith<_$MicroChargeEventsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlaytimeEvents _$PlaytimeEventsFromJson(Map<String, dynamic> json) {
  return _PlaytimeEvents.fromJson(json);
}

/// @nodoc
mixin _$PlaytimeEvents {
  int get id => throw _privateConstructorUsedError;
  String get conversionStatus => throw _privateConstructorUsedError;
  double get payoutAmount => throw _privateConstructorUsedError;
  double get payoutAmountConverted => throw _privateConstructorUsedError;
  int get timePlayedSeconds => throw _privateConstructorUsedError;

  /// Serializes this PlaytimeEvents to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaytimeEvents
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaytimeEventsCopyWith<PlaytimeEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaytimeEventsCopyWith<$Res> {
  factory $PlaytimeEventsCopyWith(
          PlaytimeEvents value, $Res Function(PlaytimeEvents) then) =
      _$PlaytimeEventsCopyWithImpl<$Res, PlaytimeEvents>;
  @useResult
  $Res call(
      {int id,
      String conversionStatus,
      double payoutAmount,
      double payoutAmountConverted,
      int timePlayedSeconds});
}

/// @nodoc
class _$PlaytimeEventsCopyWithImpl<$Res, $Val extends PlaytimeEvents>
    implements $PlaytimeEventsCopyWith<$Res> {
  _$PlaytimeEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaytimeEvents
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? conversionStatus = null,
    Object? payoutAmount = null,
    Object? payoutAmountConverted = null,
    Object? timePlayedSeconds = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      conversionStatus: null == conversionStatus
          ? _value.conversionStatus
          : conversionStatus // ignore: cast_nullable_to_non_nullable
              as String,
      payoutAmount: null == payoutAmount
          ? _value.payoutAmount
          : payoutAmount // ignore: cast_nullable_to_non_nullable
              as double,
      payoutAmountConverted: null == payoutAmountConverted
          ? _value.payoutAmountConverted
          : payoutAmountConverted // ignore: cast_nullable_to_non_nullable
              as double,
      timePlayedSeconds: null == timePlayedSeconds
          ? _value.timePlayedSeconds
          : timePlayedSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaytimeEventsImplCopyWith<$Res>
    implements $PlaytimeEventsCopyWith<$Res> {
  factory _$$PlaytimeEventsImplCopyWith(_$PlaytimeEventsImpl value,
          $Res Function(_$PlaytimeEventsImpl) then) =
      __$$PlaytimeEventsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String conversionStatus,
      double payoutAmount,
      double payoutAmountConverted,
      int timePlayedSeconds});
}

/// @nodoc
class __$$PlaytimeEventsImplCopyWithImpl<$Res>
    extends _$PlaytimeEventsCopyWithImpl<$Res, _$PlaytimeEventsImpl>
    implements _$$PlaytimeEventsImplCopyWith<$Res> {
  __$$PlaytimeEventsImplCopyWithImpl(
      _$PlaytimeEventsImpl _value, $Res Function(_$PlaytimeEventsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaytimeEvents
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? conversionStatus = null,
    Object? payoutAmount = null,
    Object? payoutAmountConverted = null,
    Object? timePlayedSeconds = null,
  }) {
    return _then(_$PlaytimeEventsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      conversionStatus: null == conversionStatus
          ? _value.conversionStatus
          : conversionStatus // ignore: cast_nullable_to_non_nullable
              as String,
      payoutAmount: null == payoutAmount
          ? _value.payoutAmount
          : payoutAmount // ignore: cast_nullable_to_non_nullable
              as double,
      payoutAmountConverted: null == payoutAmountConverted
          ? _value.payoutAmountConverted
          : payoutAmountConverted // ignore: cast_nullable_to_non_nullable
              as double,
      timePlayedSeconds: null == timePlayedSeconds
          ? _value.timePlayedSeconds
          : timePlayedSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaytimeEventsImpl implements _PlaytimeEvents {
  const _$PlaytimeEventsImpl(
      {this.id = 0,
      this.conversionStatus = '',
      this.payoutAmount = 0,
      this.payoutAmountConverted = 0,
      this.timePlayedSeconds = 0});

  factory _$PlaytimeEventsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaytimeEventsImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String conversionStatus;
  @override
  @JsonKey()
  final double payoutAmount;
  @override
  @JsonKey()
  final double payoutAmountConverted;
  @override
  @JsonKey()
  final int timePlayedSeconds;

  @override
  String toString() {
    return 'PlaytimeEvents(id: $id, conversionStatus: $conversionStatus, payoutAmount: $payoutAmount, payoutAmountConverted: $payoutAmountConverted, timePlayedSeconds: $timePlayedSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaytimeEventsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.conversionStatus, conversionStatus) ||
                other.conversionStatus == conversionStatus) &&
            (identical(other.payoutAmount, payoutAmount) ||
                other.payoutAmount == payoutAmount) &&
            (identical(other.payoutAmountConverted, payoutAmountConverted) ||
                other.payoutAmountConverted == payoutAmountConverted) &&
            (identical(other.timePlayedSeconds, timePlayedSeconds) ||
                other.timePlayedSeconds == timePlayedSeconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, conversionStatus,
      payoutAmount, payoutAmountConverted, timePlayedSeconds);

  /// Create a copy of PlaytimeEvents
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaytimeEventsImplCopyWith<_$PlaytimeEventsImpl> get copyWith =>
      __$$PlaytimeEventsImplCopyWithImpl<_$PlaytimeEventsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaytimeEventsImplToJson(
      this,
    );
  }
}

abstract class _PlaytimeEvents implements PlaytimeEvents {
  const factory _PlaytimeEvents(
      {final int id,
      final String conversionStatus,
      final double payoutAmount,
      final double payoutAmountConverted,
      final int timePlayedSeconds}) = _$PlaytimeEventsImpl;

  factory _PlaytimeEvents.fromJson(Map<String, dynamic> json) =
      _$PlaytimeEventsImpl.fromJson;

  @override
  int get id;
  @override
  String get conversionStatus;
  @override
  double get payoutAmount;
  @override
  double get payoutAmountConverted;
  @override
  int get timePlayedSeconds;

  /// Create a copy of PlaytimeEvents
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaytimeEventsImplCopyWith<_$PlaytimeEventsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EarnedPayout _$EarnedPayoutFromJson(Map<String, dynamic> json) {
  return _EarnedPayout.fromJson(json);
}

/// @nodoc
mixin _$EarnedPayout {
  double get earnedPlayablePayout => throw _privateConstructorUsedError;
  double get earnedMicrochargePayout => throw _privateConstructorUsedError;
  double get earnedPlaytimePayout => throw _privateConstructorUsedError;
  double get earnedPlayablePayoutConverted =>
      throw _privateConstructorUsedError;
  double get earnedMicrochargePayoutConverted =>
      throw _privateConstructorUsedError;
  double get earnedPlaytimePayoutConverted =>
      throw _privateConstructorUsedError;

  /// Serializes this EarnedPayout to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarnedPayout
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarnedPayoutCopyWith<EarnedPayout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarnedPayoutCopyWith<$Res> {
  factory $EarnedPayoutCopyWith(
          EarnedPayout value, $Res Function(EarnedPayout) then) =
      _$EarnedPayoutCopyWithImpl<$Res, EarnedPayout>;
  @useResult
  $Res call(
      {double earnedPlayablePayout,
      double earnedMicrochargePayout,
      double earnedPlaytimePayout,
      double earnedPlayablePayoutConverted,
      double earnedMicrochargePayoutConverted,
      double earnedPlaytimePayoutConverted});
}

/// @nodoc
class _$EarnedPayoutCopyWithImpl<$Res, $Val extends EarnedPayout>
    implements $EarnedPayoutCopyWith<$Res> {
  _$EarnedPayoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarnedPayout
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? earnedPlayablePayout = null,
    Object? earnedMicrochargePayout = null,
    Object? earnedPlaytimePayout = null,
    Object? earnedPlayablePayoutConverted = null,
    Object? earnedMicrochargePayoutConverted = null,
    Object? earnedPlaytimePayoutConverted = null,
  }) {
    return _then(_value.copyWith(
      earnedPlayablePayout: null == earnedPlayablePayout
          ? _value.earnedPlayablePayout
          : earnedPlayablePayout // ignore: cast_nullable_to_non_nullable
              as double,
      earnedMicrochargePayout: null == earnedMicrochargePayout
          ? _value.earnedMicrochargePayout
          : earnedMicrochargePayout // ignore: cast_nullable_to_non_nullable
              as double,
      earnedPlaytimePayout: null == earnedPlaytimePayout
          ? _value.earnedPlaytimePayout
          : earnedPlaytimePayout // ignore: cast_nullable_to_non_nullable
              as double,
      earnedPlayablePayoutConverted: null == earnedPlayablePayoutConverted
          ? _value.earnedPlayablePayoutConverted
          : earnedPlayablePayoutConverted // ignore: cast_nullable_to_non_nullable
              as double,
      earnedMicrochargePayoutConverted: null == earnedMicrochargePayoutConverted
          ? _value.earnedMicrochargePayoutConverted
          : earnedMicrochargePayoutConverted // ignore: cast_nullable_to_non_nullable
              as double,
      earnedPlaytimePayoutConverted: null == earnedPlaytimePayoutConverted
          ? _value.earnedPlaytimePayoutConverted
          : earnedPlaytimePayoutConverted // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EarnedPayoutImplCopyWith<$Res>
    implements $EarnedPayoutCopyWith<$Res> {
  factory _$$EarnedPayoutImplCopyWith(
          _$EarnedPayoutImpl value, $Res Function(_$EarnedPayoutImpl) then) =
      __$$EarnedPayoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double earnedPlayablePayout,
      double earnedMicrochargePayout,
      double earnedPlaytimePayout,
      double earnedPlayablePayoutConverted,
      double earnedMicrochargePayoutConverted,
      double earnedPlaytimePayoutConverted});
}

/// @nodoc
class __$$EarnedPayoutImplCopyWithImpl<$Res>
    extends _$EarnedPayoutCopyWithImpl<$Res, _$EarnedPayoutImpl>
    implements _$$EarnedPayoutImplCopyWith<$Res> {
  __$$EarnedPayoutImplCopyWithImpl(
      _$EarnedPayoutImpl _value, $Res Function(_$EarnedPayoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of EarnedPayout
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? earnedPlayablePayout = null,
    Object? earnedMicrochargePayout = null,
    Object? earnedPlaytimePayout = null,
    Object? earnedPlayablePayoutConverted = null,
    Object? earnedMicrochargePayoutConverted = null,
    Object? earnedPlaytimePayoutConverted = null,
  }) {
    return _then(_$EarnedPayoutImpl(
      earnedPlayablePayout: null == earnedPlayablePayout
          ? _value.earnedPlayablePayout
          : earnedPlayablePayout // ignore: cast_nullable_to_non_nullable
              as double,
      earnedMicrochargePayout: null == earnedMicrochargePayout
          ? _value.earnedMicrochargePayout
          : earnedMicrochargePayout // ignore: cast_nullable_to_non_nullable
              as double,
      earnedPlaytimePayout: null == earnedPlaytimePayout
          ? _value.earnedPlaytimePayout
          : earnedPlaytimePayout // ignore: cast_nullable_to_non_nullable
              as double,
      earnedPlayablePayoutConverted: null == earnedPlayablePayoutConverted
          ? _value.earnedPlayablePayoutConverted
          : earnedPlayablePayoutConverted // ignore: cast_nullable_to_non_nullable
              as double,
      earnedMicrochargePayoutConverted: null == earnedMicrochargePayoutConverted
          ? _value.earnedMicrochargePayoutConverted
          : earnedMicrochargePayoutConverted // ignore: cast_nullable_to_non_nullable
              as double,
      earnedPlaytimePayoutConverted: null == earnedPlaytimePayoutConverted
          ? _value.earnedPlaytimePayoutConverted
          : earnedPlaytimePayoutConverted // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EarnedPayoutImpl implements _EarnedPayout {
  const _$EarnedPayoutImpl(
      {this.earnedPlayablePayout = 0,
      this.earnedMicrochargePayout = 0,
      this.earnedPlaytimePayout = 0,
      this.earnedPlayablePayoutConverted = 0,
      this.earnedMicrochargePayoutConverted = 0,
      this.earnedPlaytimePayoutConverted = 0});

  factory _$EarnedPayoutImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarnedPayoutImplFromJson(json);

  @override
  @JsonKey()
  final double earnedPlayablePayout;
  @override
  @JsonKey()
  final double earnedMicrochargePayout;
  @override
  @JsonKey()
  final double earnedPlaytimePayout;
  @override
  @JsonKey()
  final double earnedPlayablePayoutConverted;
  @override
  @JsonKey()
  final double earnedMicrochargePayoutConverted;
  @override
  @JsonKey()
  final double earnedPlaytimePayoutConverted;

  @override
  String toString() {
    return 'EarnedPayout(earnedPlayablePayout: $earnedPlayablePayout, earnedMicrochargePayout: $earnedMicrochargePayout, earnedPlaytimePayout: $earnedPlaytimePayout, earnedPlayablePayoutConverted: $earnedPlayablePayoutConverted, earnedMicrochargePayoutConverted: $earnedMicrochargePayoutConverted, earnedPlaytimePayoutConverted: $earnedPlaytimePayoutConverted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarnedPayoutImpl &&
            (identical(other.earnedPlayablePayout, earnedPlayablePayout) ||
                other.earnedPlayablePayout == earnedPlayablePayout) &&
            (identical(
                    other.earnedMicrochargePayout, earnedMicrochargePayout) ||
                other.earnedMicrochargePayout == earnedMicrochargePayout) &&
            (identical(other.earnedPlaytimePayout, earnedPlaytimePayout) ||
                other.earnedPlaytimePayout == earnedPlaytimePayout) &&
            (identical(other.earnedPlayablePayoutConverted,
                    earnedPlayablePayoutConverted) ||
                other.earnedPlayablePayoutConverted ==
                    earnedPlayablePayoutConverted) &&
            (identical(other.earnedMicrochargePayoutConverted,
                    earnedMicrochargePayoutConverted) ||
                other.earnedMicrochargePayoutConverted ==
                    earnedMicrochargePayoutConverted) &&
            (identical(other.earnedPlaytimePayoutConverted,
                    earnedPlaytimePayoutConverted) ||
                other.earnedPlaytimePayoutConverted ==
                    earnedPlaytimePayoutConverted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      earnedPlayablePayout,
      earnedMicrochargePayout,
      earnedPlaytimePayout,
      earnedPlayablePayoutConverted,
      earnedMicrochargePayoutConverted,
      earnedPlaytimePayoutConverted);

  /// Create a copy of EarnedPayout
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarnedPayoutImplCopyWith<_$EarnedPayoutImpl> get copyWith =>
      __$$EarnedPayoutImplCopyWithImpl<_$EarnedPayoutImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarnedPayoutImplToJson(
      this,
    );
  }
}

abstract class _EarnedPayout implements EarnedPayout {
  const factory _EarnedPayout(
      {final double earnedPlayablePayout,
      final double earnedMicrochargePayout,
      final double earnedPlaytimePayout,
      final double earnedPlayablePayoutConverted,
      final double earnedMicrochargePayoutConverted,
      final double earnedPlaytimePayoutConverted}) = _$EarnedPayoutImpl;

  factory _EarnedPayout.fromJson(Map<String, dynamic> json) =
      _$EarnedPayoutImpl.fromJson;

  @override
  double get earnedPlayablePayout;
  @override
  double get earnedMicrochargePayout;
  @override
  double get earnedPlaytimePayout;
  @override
  double get earnedPlayablePayoutConverted;
  @override
  double get earnedMicrochargePayoutConverted;
  @override
  double get earnedPlaytimePayoutConverted;

  /// Create a copy of EarnedPayout
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarnedPayoutImplCopyWith<_$EarnedPayoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EngagementOverride _$EngagementOverrideFromJson(Map<String, dynamic> json) {
  return _EngagementOverride.fromJson(json);
}

/// @nodoc
mixin _$EngagementOverride {
  @JsonKey(name: 'CurrencySales')
  CurrencySales? get currencySales => throw _privateConstructorUsedError;

  /// Serializes this EngagementOverride to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EngagementOverride
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EngagementOverrideCopyWith<EngagementOverride> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EngagementOverrideCopyWith<$Res> {
  factory $EngagementOverrideCopyWith(
          EngagementOverride value, $Res Function(EngagementOverride) then) =
      _$EngagementOverrideCopyWithImpl<$Res, EngagementOverride>;
  @useResult
  $Res call({@JsonKey(name: 'CurrencySales') CurrencySales? currencySales});

  $CurrencySalesCopyWith<$Res>? get currencySales;
}

/// @nodoc
class _$EngagementOverrideCopyWithImpl<$Res, $Val extends EngagementOverride>
    implements $EngagementOverrideCopyWith<$Res> {
  _$EngagementOverrideCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EngagementOverride
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

  /// Create a copy of EngagementOverride
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
abstract class _$$EngagementOverrideImplCopyWith<$Res>
    implements $EngagementOverrideCopyWith<$Res> {
  factory _$$EngagementOverrideImplCopyWith(_$EngagementOverrideImpl value,
          $Res Function(_$EngagementOverrideImpl) then) =
      __$$EngagementOverrideImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'CurrencySales') CurrencySales? currencySales});

  @override
  $CurrencySalesCopyWith<$Res>? get currencySales;
}

/// @nodoc
class __$$EngagementOverrideImplCopyWithImpl<$Res>
    extends _$EngagementOverrideCopyWithImpl<$Res, _$EngagementOverrideImpl>
    implements _$$EngagementOverrideImplCopyWith<$Res> {
  __$$EngagementOverrideImplCopyWithImpl(_$EngagementOverrideImpl _value,
      $Res Function(_$EngagementOverrideImpl) _then)
      : super(_value, _then);

  /// Create a copy of EngagementOverride
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencySales = freezed,
  }) {
    return _then(_$EngagementOverrideImpl(
      currencySales: freezed == currencySales
          ? _value.currencySales
          : currencySales // ignore: cast_nullable_to_non_nullable
              as CurrencySales?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EngagementOverrideImpl implements _EngagementOverride {
  const _$EngagementOverrideImpl(
      {@JsonKey(name: 'CurrencySales') this.currencySales});

  factory _$EngagementOverrideImpl.fromJson(Map<String, dynamic> json) =>
      _$$EngagementOverrideImplFromJson(json);

  @override
  @JsonKey(name: 'CurrencySales')
  final CurrencySales? currencySales;

  @override
  String toString() {
    return 'EngagementOverride(currencySales: $currencySales)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EngagementOverrideImpl &&
            (identical(other.currencySales, currencySales) ||
                other.currencySales == currencySales));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currencySales);

  /// Create a copy of EngagementOverride
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EngagementOverrideImplCopyWith<_$EngagementOverrideImpl> get copyWith =>
      __$$EngagementOverrideImplCopyWithImpl<_$EngagementOverrideImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EngagementOverrideImplToJson(
      this,
    );
  }
}

abstract class _EngagementOverride implements EngagementOverride {
  const factory _EngagementOverride(
      {@JsonKey(name: 'CurrencySales')
      final CurrencySales? currencySales}) = _$EngagementOverrideImpl;

  factory _EngagementOverride.fromJson(Map<String, dynamic> json) =
      _$EngagementOverrideImpl.fromJson;

  @override
  @JsonKey(name: 'CurrencySales')
  CurrencySales? get currencySales;

  /// Create a copy of EngagementOverride
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EngagementOverrideImplCopyWith<_$EngagementOverrideImpl> get copyWith =>
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
