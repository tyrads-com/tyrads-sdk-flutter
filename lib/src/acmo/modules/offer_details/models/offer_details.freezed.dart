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
  String get is_active => throw _privateConstructorUsedError;
  String get is_completed => throw _privateConstructorUsedError;
  String get is_expiring => throw _privateConstructorUsedError;
  int get expiring_after => throw _privateConstructorUsedError;
  bool get isInstalled => throw _privateConstructorUsedError;
  List<PayoutEvents> get payoutEvents => throw _privateConstructorUsedError;

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
      String is_active,
      String is_completed,
      String is_expiring,
      int expiring_after,
      bool isInstalled,
      List<PayoutEvents> payoutEvents});

  $AppCopyWith<$Res> get app;
  $CurrencyCopyWith<$Res> get currency;
  $CampaignPayoutCopyWith<$Res> get campaignPayout;
  $TrackingCopyWith<$Res> get tracking;
  $TargetingCopyWith<$Res> get targeting;
  $CreativeCopyWith<$Res> get creative;
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
    Object? is_active = null,
    Object? is_completed = null,
    Object? is_expiring = null,
    Object? expiring_after = null,
    Object? isInstalled = null,
    Object? payoutEvents = null,
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
      is_active: null == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as String,
      is_completed: null == is_completed
          ? _value.is_completed
          : is_completed // ignore: cast_nullable_to_non_nullable
              as String,
      is_expiring: null == is_expiring
          ? _value.is_expiring
          : is_expiring // ignore: cast_nullable_to_non_nullable
              as String,
      expiring_after: null == expiring_after
          ? _value.expiring_after
          : expiring_after // ignore: cast_nullable_to_non_nullable
              as int,
      isInstalled: null == isInstalled
          ? _value.isInstalled
          : isInstalled // ignore: cast_nullable_to_non_nullable
              as bool,
      payoutEvents: null == payoutEvents
          ? _value.payoutEvents
          : payoutEvents // ignore: cast_nullable_to_non_nullable
              as List<PayoutEvents>,
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
      String is_active,
      String is_completed,
      String is_expiring,
      int expiring_after,
      bool isInstalled,
      List<PayoutEvents> payoutEvents});

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
    Object? is_active = null,
    Object? is_completed = null,
    Object? is_expiring = null,
    Object? expiring_after = null,
    Object? isInstalled = null,
    Object? payoutEvents = null,
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
      is_active: null == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as String,
      is_completed: null == is_completed
          ? _value.is_completed
          : is_completed // ignore: cast_nullable_to_non_nullable
              as String,
      is_expiring: null == is_expiring
          ? _value.is_expiring
          : is_expiring // ignore: cast_nullable_to_non_nullable
              as String,
      expiring_after: null == expiring_after
          ? _value.expiring_after
          : expiring_after // ignore: cast_nullable_to_non_nullable
              as int,
      isInstalled: null == isInstalled
          ? _value.isInstalled
          : isInstalled // ignore: cast_nullable_to_non_nullable
              as bool,
      payoutEvents: null == payoutEvents
          ? _value._payoutEvents
          : payoutEvents // ignore: cast_nullable_to_non_nullable
              as List<PayoutEvents>,
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
      this.is_active = '0',
      this.is_completed = '0',
      this.is_expiring = '0',
      this.expiring_after = 0,
      this.isInstalled = false,
      final List<PayoutEvents> payoutEvents = const []})
      : _payoutEvents = payoutEvents;

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
  @JsonKey()
  final String is_active;
  @override
  @JsonKey()
  final String is_completed;
  @override
  @JsonKey()
  final String is_expiring;
  @override
  @JsonKey()
  final int expiring_after;
  @override
  @JsonKey()
  final bool isInstalled;
  final List<PayoutEvents> _payoutEvents;
  @override
  @JsonKey()
  List<PayoutEvents> get payoutEvents {
    if (_payoutEvents is EqualUnmodifiableListView) return _payoutEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payoutEvents);
  }

  @override
  String toString() {
    return 'AcmoOfferDetailsModel(campaignId: $campaignId, campaignName: $campaignName, campaignDescription: $campaignDescription, active: $active, status: $status, app: $app, currency: $currency, campaignPayout: $campaignPayout, tracking: $tracking, targeting: $targeting, creative: $creative, is_active: $is_active, is_completed: $is_completed, is_expiring: $is_expiring, expiring_after: $expiring_after, isInstalled: $isInstalled, payoutEvents: $payoutEvents)';
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
            (identical(other.is_active, is_active) ||
                other.is_active == is_active) &&
            (identical(other.is_completed, is_completed) ||
                other.is_completed == is_completed) &&
            (identical(other.is_expiring, is_expiring) ||
                other.is_expiring == is_expiring) &&
            (identical(other.expiring_after, expiring_after) ||
                other.expiring_after == expiring_after) &&
            (identical(other.isInstalled, isInstalled) ||
                other.isInstalled == isInstalled) &&
            const DeepCollectionEquality()
                .equals(other._payoutEvents, _payoutEvents));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
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
      is_active,
      is_completed,
      is_expiring,
      expiring_after,
      isInstalled,
      const DeepCollectionEquality().hash(_payoutEvents));

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
      final String is_active,
      final String is_completed,
      final String is_expiring,
      final int expiring_after,
      final bool isInstalled,
      final List<PayoutEvents> payoutEvents}) = _$AcmoOfferDetailsModelImpl;

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
  String get is_active;
  @override
  String get is_completed;
  @override
  String get is_expiring;
  @override
  int get expiring_after;
  @override
  bool get isInstalled;
  @override
  List<PayoutEvents> get payoutEvents;

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
  String get conversionStatus => throw _privateConstructorUsedError;
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
  double get maxTimeRemainSeconds => throw _privateConstructorUsedError;
  bool get enforceMaxTimeCompletion => throw _privateConstructorUsedError;

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
      String conversionStatus,
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
      double maxTimeRemainSeconds,
      bool enforceMaxTimeCompletion});
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
    Object? conversionStatus = null,
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
    Object? maxTimeRemainSeconds = null,
    Object? enforceMaxTimeCompletion = null,
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
      maxTimeRemainSeconds: null == maxTimeRemainSeconds
          ? _value.maxTimeRemainSeconds
          : maxTimeRemainSeconds // ignore: cast_nullable_to_non_nullable
              as double,
      enforceMaxTimeCompletion: null == enforceMaxTimeCompletion
          ? _value.enforceMaxTimeCompletion
          : enforceMaxTimeCompletion // ignore: cast_nullable_to_non_nullable
              as bool,
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
      String conversionStatus,
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
      double maxTimeRemainSeconds,
      bool enforceMaxTimeCompletion});
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
    Object? conversionStatus = null,
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
    Object? maxTimeRemainSeconds = null,
    Object? enforceMaxTimeCompletion = null,
  }) {
    return _then(_$PayoutEventsImpl(
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
      maxTimeRemainSeconds: null == maxTimeRemainSeconds
          ? _value.maxTimeRemainSeconds
          : maxTimeRemainSeconds // ignore: cast_nullable_to_non_nullable
              as double,
      enforceMaxTimeCompletion: null == enforceMaxTimeCompletion
          ? _value.enforceMaxTimeCompletion
          : enforceMaxTimeCompletion // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayoutEventsImpl implements _PayoutEvents {
  _$PayoutEventsImpl(
      {this.id = 0,
      this.conversionStatus = '',
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
      this.maxTimeRemainSeconds = 0,
      this.enforceMaxTimeCompletion = false});

  factory _$PayoutEventsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayoutEventsImplFromJson(json);

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
  @JsonKey()
  final double maxTimeRemainSeconds;
  @override
  @JsonKey()
  final bool enforceMaxTimeCompletion;

  @override
  String toString() {
    return 'PayoutEvents(id: $id, conversionStatus: $conversionStatus, identifier: $identifier, eventName: $eventName, eventDescription: $eventDescription, eventCategory: $eventCategory, payoutAmount: $payoutAmount, payoutAmountConverted: $payoutAmountConverted, payoutType: $payoutType, allowDuplicateEvents: $allowDuplicateEvents, maxTime: $maxTime, maxTimeMetric: $maxTimeMetric, maxTimeRemainSeconds: $maxTimeRemainSeconds, enforceMaxTimeCompletion: $enforceMaxTimeCompletion)';
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
                other.enforceMaxTimeCompletion == enforceMaxTimeCompletion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
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
      enforceMaxTimeCompletion);

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
      final String conversionStatus,
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
      final double maxTimeRemainSeconds,
      final bool enforceMaxTimeCompletion}) = _$PayoutEventsImpl;

  factory _PayoutEvents.fromJson(Map<String, dynamic> json) =
      _$PayoutEventsImpl.fromJson;

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
  String get payoutType;
  @override
  bool get allowDuplicateEvents;
  @override
  int get maxTime;
  @override
  String get maxTimeMetric;
  @override
  double get maxTimeRemainSeconds;
  @override
  bool get enforceMaxTimeCompletion;

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
  $Res call({String? attributionTool, String? clickUrl, String? impressionUrl});
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
  $Res call({String? attributionTool, String? clickUrl, String? impressionUrl});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackingImpl implements _Tracking {
  _$TrackingImpl({this.attributionTool, this.clickUrl, this.impressionUrl});

  factory _$TrackingImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackingImplFromJson(json);

  @override
  final String? attributionTool;
  @override
  final String? clickUrl;
  @override
  final String? impressionUrl;

  @override
  String toString() {
    return 'Tracking(attributionTool: $attributionTool, clickUrl: $clickUrl, impressionUrl: $impressionUrl)';
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
                other.impressionUrl == impressionUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, attributionTool, clickUrl, impressionUrl);

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
      final String? impressionUrl}) = _$TrackingImpl;

  factory _Tracking.fromJson(Map<String, dynamic> json) =
      _$TrackingImpl.fromJson;

  @override
  String? get attributionTool;
  @override
  String? get clickUrl;
  @override
  String? get impressionUrl;

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
  $Res call({int totalEvents, double totalPayout, double totalPayoutConverted});
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
  $Res call({int totalEvents, double totalPayout, double totalPayoutConverted});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CampaignPayoutImpl implements _CampaignPayout {
  _$CampaignPayoutImpl(
      {this.totalEvents = 0,
      this.totalPayout = 0,
      this.totalPayoutConverted = 0});

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
  String toString() {
    return 'CampaignPayout(totalEvents: $totalEvents, totalPayout: $totalPayout, totalPayoutConverted: $totalPayoutConverted)';
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
                other.totalPayoutConverted == totalPayoutConverted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalEvents, totalPayout, totalPayoutConverted);

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
      final double totalPayoutConverted}) = _$CampaignPayoutImpl;

  factory _CampaignPayout.fromJson(Map<String, dynamic> json) =
      _$CampaignPayoutImpl.fromJson;

  @override
  int get totalEvents;
  @override
  double get totalPayout;
  @override
  double get totalPayoutConverted;

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
    return 'App(id: $id, title: $title, packageName: $packageName, shortDescription: $shortDescription, store: $store, storeCategory: $storeCategory, previewUrl: $previewUrl, thumbnail: $thumbnail)';
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
  int get hashCode => Object.hash(runtimeType, id, title, packageName,
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
