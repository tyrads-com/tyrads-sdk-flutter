// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tickets.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AcmoTicketsResponseModel _$AcmoTicketsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _AcmoTicketsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AcmoTicketsResponseModel {
  List<AcmoTicketsModel> get data => throw _privateConstructorUsedError;

  /// Serializes this AcmoTicketsResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AcmoTicketsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AcmoTicketsResponseModelCopyWith<AcmoTicketsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcmoTicketsResponseModelCopyWith<$Res> {
  factory $AcmoTicketsResponseModelCopyWith(AcmoTicketsResponseModel value,
          $Res Function(AcmoTicketsResponseModel) then) =
      _$AcmoTicketsResponseModelCopyWithImpl<$Res, AcmoTicketsResponseModel>;
  @useResult
  $Res call({List<AcmoTicketsModel> data});
}

/// @nodoc
class _$AcmoTicketsResponseModelCopyWithImpl<$Res,
        $Val extends AcmoTicketsResponseModel>
    implements $AcmoTicketsResponseModelCopyWith<$Res> {
  _$AcmoTicketsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AcmoTicketsResponseModel
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
              as List<AcmoTicketsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AcmoTicketsResponseModelImplCopyWith<$Res>
    implements $AcmoTicketsResponseModelCopyWith<$Res> {
  factory _$$AcmoTicketsResponseModelImplCopyWith(
          _$AcmoTicketsResponseModelImpl value,
          $Res Function(_$AcmoTicketsResponseModelImpl) then) =
      __$$AcmoTicketsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AcmoTicketsModel> data});
}

/// @nodoc
class __$$AcmoTicketsResponseModelImplCopyWithImpl<$Res>
    extends _$AcmoTicketsResponseModelCopyWithImpl<$Res,
        _$AcmoTicketsResponseModelImpl>
    implements _$$AcmoTicketsResponseModelImplCopyWith<$Res> {
  __$$AcmoTicketsResponseModelImplCopyWithImpl(
      _$AcmoTicketsResponseModelImpl _value,
      $Res Function(_$AcmoTicketsResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AcmoTicketsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$AcmoTicketsResponseModelImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AcmoTicketsModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AcmoTicketsResponseModelImpl implements _AcmoTicketsResponseModel {
  _$AcmoTicketsResponseModelImpl({required final List<AcmoTicketsModel> data})
      : _data = data;

  factory _$AcmoTicketsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AcmoTicketsResponseModelImplFromJson(json);

  final List<AcmoTicketsModel> _data;
  @override
  List<AcmoTicketsModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AcmoTicketsResponseModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcmoTicketsResponseModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of AcmoTicketsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcmoTicketsResponseModelImplCopyWith<_$AcmoTicketsResponseModelImpl>
      get copyWith => __$$AcmoTicketsResponseModelImplCopyWithImpl<
          _$AcmoTicketsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcmoTicketsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _AcmoTicketsResponseModel implements AcmoTicketsResponseModel {
  factory _AcmoTicketsResponseModel(
          {required final List<AcmoTicketsModel> data}) =
      _$AcmoTicketsResponseModelImpl;

  factory _AcmoTicketsResponseModel.fromJson(Map<String, dynamic> json) =
      _$AcmoTicketsResponseModelImpl.fromJson;

  @override
  List<AcmoTicketsModel> get data;

  /// Create a copy of AcmoTicketsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcmoTicketsResponseModelImplCopyWith<_$AcmoTicketsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AcmoTicketsModel _$AcmoTicketsModelFromJson(Map<String, dynamic> json) {
  return _AcmoTicketsModel.fromJson(json);
}

/// @nodoc
mixin _$AcmoTicketsModel {
  String get category => throw _privateConstructorUsedError;
  List<AcmoTicketEventsModel> get events => throw _privateConstructorUsedError;

  /// Serializes this AcmoTicketsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AcmoTicketsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AcmoTicketsModelCopyWith<AcmoTicketsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcmoTicketsModelCopyWith<$Res> {
  factory $AcmoTicketsModelCopyWith(
          AcmoTicketsModel value, $Res Function(AcmoTicketsModel) then) =
      _$AcmoTicketsModelCopyWithImpl<$Res, AcmoTicketsModel>;
  @useResult
  $Res call({String category, List<AcmoTicketEventsModel> events});
}

/// @nodoc
class _$AcmoTicketsModelCopyWithImpl<$Res, $Val extends AcmoTicketsModel>
    implements $AcmoTicketsModelCopyWith<$Res> {
  _$AcmoTicketsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AcmoTicketsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? events = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<AcmoTicketEventsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AcmoTicketsModelImplCopyWith<$Res>
    implements $AcmoTicketsModelCopyWith<$Res> {
  factory _$$AcmoTicketsModelImplCopyWith(_$AcmoTicketsModelImpl value,
          $Res Function(_$AcmoTicketsModelImpl) then) =
      __$$AcmoTicketsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String category, List<AcmoTicketEventsModel> events});
}

/// @nodoc
class __$$AcmoTicketsModelImplCopyWithImpl<$Res>
    extends _$AcmoTicketsModelCopyWithImpl<$Res, _$AcmoTicketsModelImpl>
    implements _$$AcmoTicketsModelImplCopyWith<$Res> {
  __$$AcmoTicketsModelImplCopyWithImpl(_$AcmoTicketsModelImpl _value,
      $Res Function(_$AcmoTicketsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AcmoTicketsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? events = null,
  }) {
    return _then(_$AcmoTicketsModelImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<AcmoTicketEventsModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AcmoTicketsModelImpl implements _AcmoTicketsModel {
  _$AcmoTicketsModelImpl(
      {required this.category,
      required final List<AcmoTicketEventsModel> events})
      : _events = events;

  factory _$AcmoTicketsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AcmoTicketsModelImplFromJson(json);

  @override
  final String category;
  final List<AcmoTicketEventsModel> _events;
  @override
  List<AcmoTicketEventsModel> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'AcmoTicketsModel(category: $category, events: $events)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcmoTicketsModelImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, category, const DeepCollectionEquality().hash(_events));

  /// Create a copy of AcmoTicketsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcmoTicketsModelImplCopyWith<_$AcmoTicketsModelImpl> get copyWith =>
      __$$AcmoTicketsModelImplCopyWithImpl<_$AcmoTicketsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcmoTicketsModelImplToJson(
      this,
    );
  }
}

abstract class _AcmoTicketsModel implements AcmoTicketsModel {
  factory _AcmoTicketsModel(
          {required final String category,
          required final List<AcmoTicketEventsModel> events}) =
      _$AcmoTicketsModelImpl;

  factory _AcmoTicketsModel.fromJson(Map<String, dynamic> json) =
      _$AcmoTicketsModelImpl.fromJson;

  @override
  String get category;
  @override
  List<AcmoTicketEventsModel> get events;

  /// Create a copy of AcmoTicketsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcmoTicketsModelImplCopyWith<_$AcmoTicketsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AcmoTicketEventsModel _$AcmoTicketEventsModelFromJson(
    Map<String, dynamic> json) {
  return _AcmoTicketEventsModel.fromJson(json);
}

/// @nodoc
mixin _$AcmoTicketEventsModel {
  int get id => throw _privateConstructorUsedError;
  String get identifier => throw _privateConstructorUsedError;
  String get eventName => throw _privateConstructorUsedError;
  String get eventDescription => throw _privateConstructorUsedError;
  String get eventCategory => throw _privateConstructorUsedError;
  String get payoutType => throw _privateConstructorUsedError;
  double get payoutAmount => throw _privateConstructorUsedError;
  double get payoutAmountConverted => throw _privateConstructorUsedError;
  bool get isTicketSubmitted => throw _privateConstructorUsedError;
  String get ticketStatus => throw _privateConstructorUsedError;
  String get conversionStatus => throw _privateConstructorUsedError;
  String get currencyIcon => throw _privateConstructorUsedError;
  String get currencyName => throw _privateConstructorUsedError;
  bool get allowDuplicateEvents => throw _privateConstructorUsedError;
  int get currencyConversion => throw _privateConstructorUsedError;
  int get payoutTypeId => throw _privateConstructorUsedError;
  int get maxTime => throw _privateConstructorUsedError;
  String get maxTimeMetric => throw _privateConstructorUsedError;
  double? get maxTimeRemainSeconds => throw _privateConstructorUsedError;
  bool get enforceMaxTimeCompletion => throw _privateConstructorUsedError;

  /// Serializes this AcmoTicketEventsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AcmoTicketEventsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AcmoTicketEventsModelCopyWith<AcmoTicketEventsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcmoTicketEventsModelCopyWith<$Res> {
  factory $AcmoTicketEventsModelCopyWith(AcmoTicketEventsModel value,
          $Res Function(AcmoTicketEventsModel) then) =
      _$AcmoTicketEventsModelCopyWithImpl<$Res, AcmoTicketEventsModel>;
  @useResult
  $Res call(
      {int id,
      String identifier,
      String eventName,
      String eventDescription,
      String eventCategory,
      String payoutType,
      double payoutAmount,
      double payoutAmountConverted,
      bool isTicketSubmitted,
      String ticketStatus,
      String conversionStatus,
      String currencyIcon,
      String currencyName,
      bool allowDuplicateEvents,
      int currencyConversion,
      int payoutTypeId,
      int maxTime,
      String maxTimeMetric,
      double? maxTimeRemainSeconds,
      bool enforceMaxTimeCompletion});
}

/// @nodoc
class _$AcmoTicketEventsModelCopyWithImpl<$Res,
        $Val extends AcmoTicketEventsModel>
    implements $AcmoTicketEventsModelCopyWith<$Res> {
  _$AcmoTicketEventsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AcmoTicketEventsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? identifier = null,
    Object? eventName = null,
    Object? eventDescription = null,
    Object? eventCategory = null,
    Object? payoutType = null,
    Object? payoutAmount = null,
    Object? payoutAmountConverted = null,
    Object? isTicketSubmitted = null,
    Object? ticketStatus = null,
    Object? conversionStatus = null,
    Object? currencyIcon = null,
    Object? currencyName = null,
    Object? allowDuplicateEvents = null,
    Object? currencyConversion = null,
    Object? payoutTypeId = null,
    Object? maxTime = null,
    Object? maxTimeMetric = null,
    Object? maxTimeRemainSeconds = freezed,
    Object? enforceMaxTimeCompletion = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      payoutType: null == payoutType
          ? _value.payoutType
          : payoutType // ignore: cast_nullable_to_non_nullable
              as String,
      payoutAmount: null == payoutAmount
          ? _value.payoutAmount
          : payoutAmount // ignore: cast_nullable_to_non_nullable
              as double,
      payoutAmountConverted: null == payoutAmountConverted
          ? _value.payoutAmountConverted
          : payoutAmountConverted // ignore: cast_nullable_to_non_nullable
              as double,
      isTicketSubmitted: null == isTicketSubmitted
          ? _value.isTicketSubmitted
          : isTicketSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      ticketStatus: null == ticketStatus
          ? _value.ticketStatus
          : ticketStatus // ignore: cast_nullable_to_non_nullable
              as String,
      conversionStatus: null == conversionStatus
          ? _value.conversionStatus
          : conversionStatus // ignore: cast_nullable_to_non_nullable
              as String,
      currencyIcon: null == currencyIcon
          ? _value.currencyIcon
          : currencyIcon // ignore: cast_nullable_to_non_nullable
              as String,
      currencyName: null == currencyName
          ? _value.currencyName
          : currencyName // ignore: cast_nullable_to_non_nullable
              as String,
      allowDuplicateEvents: null == allowDuplicateEvents
          ? _value.allowDuplicateEvents
          : allowDuplicateEvents // ignore: cast_nullable_to_non_nullable
              as bool,
      currencyConversion: null == currencyConversion
          ? _value.currencyConversion
          : currencyConversion // ignore: cast_nullable_to_non_nullable
              as int,
      payoutTypeId: null == payoutTypeId
          ? _value.payoutTypeId
          : payoutTypeId // ignore: cast_nullable_to_non_nullable
              as int,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AcmoTicketEventsModelImplCopyWith<$Res>
    implements $AcmoTicketEventsModelCopyWith<$Res> {
  factory _$$AcmoTicketEventsModelImplCopyWith(
          _$AcmoTicketEventsModelImpl value,
          $Res Function(_$AcmoTicketEventsModelImpl) then) =
      __$$AcmoTicketEventsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String identifier,
      String eventName,
      String eventDescription,
      String eventCategory,
      String payoutType,
      double payoutAmount,
      double payoutAmountConverted,
      bool isTicketSubmitted,
      String ticketStatus,
      String conversionStatus,
      String currencyIcon,
      String currencyName,
      bool allowDuplicateEvents,
      int currencyConversion,
      int payoutTypeId,
      int maxTime,
      String maxTimeMetric,
      double? maxTimeRemainSeconds,
      bool enforceMaxTimeCompletion});
}

/// @nodoc
class __$$AcmoTicketEventsModelImplCopyWithImpl<$Res>
    extends _$AcmoTicketEventsModelCopyWithImpl<$Res,
        _$AcmoTicketEventsModelImpl>
    implements _$$AcmoTicketEventsModelImplCopyWith<$Res> {
  __$$AcmoTicketEventsModelImplCopyWithImpl(_$AcmoTicketEventsModelImpl _value,
      $Res Function(_$AcmoTicketEventsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AcmoTicketEventsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? identifier = null,
    Object? eventName = null,
    Object? eventDescription = null,
    Object? eventCategory = null,
    Object? payoutType = null,
    Object? payoutAmount = null,
    Object? payoutAmountConverted = null,
    Object? isTicketSubmitted = null,
    Object? ticketStatus = null,
    Object? conversionStatus = null,
    Object? currencyIcon = null,
    Object? currencyName = null,
    Object? allowDuplicateEvents = null,
    Object? currencyConversion = null,
    Object? payoutTypeId = null,
    Object? maxTime = null,
    Object? maxTimeMetric = null,
    Object? maxTimeRemainSeconds = freezed,
    Object? enforceMaxTimeCompletion = null,
  }) {
    return _then(_$AcmoTicketEventsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      payoutType: null == payoutType
          ? _value.payoutType
          : payoutType // ignore: cast_nullable_to_non_nullable
              as String,
      payoutAmount: null == payoutAmount
          ? _value.payoutAmount
          : payoutAmount // ignore: cast_nullable_to_non_nullable
              as double,
      payoutAmountConverted: null == payoutAmountConverted
          ? _value.payoutAmountConverted
          : payoutAmountConverted // ignore: cast_nullable_to_non_nullable
              as double,
      isTicketSubmitted: null == isTicketSubmitted
          ? _value.isTicketSubmitted
          : isTicketSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      ticketStatus: null == ticketStatus
          ? _value.ticketStatus
          : ticketStatus // ignore: cast_nullable_to_non_nullable
              as String,
      conversionStatus: null == conversionStatus
          ? _value.conversionStatus
          : conversionStatus // ignore: cast_nullable_to_non_nullable
              as String,
      currencyIcon: null == currencyIcon
          ? _value.currencyIcon
          : currencyIcon // ignore: cast_nullable_to_non_nullable
              as String,
      currencyName: null == currencyName
          ? _value.currencyName
          : currencyName // ignore: cast_nullable_to_non_nullable
              as String,
      allowDuplicateEvents: null == allowDuplicateEvents
          ? _value.allowDuplicateEvents
          : allowDuplicateEvents // ignore: cast_nullable_to_non_nullable
              as bool,
      currencyConversion: null == currencyConversion
          ? _value.currencyConversion
          : currencyConversion // ignore: cast_nullable_to_non_nullable
              as int,
      payoutTypeId: null == payoutTypeId
          ? _value.payoutTypeId
          : payoutTypeId // ignore: cast_nullable_to_non_nullable
              as int,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AcmoTicketEventsModelImpl implements _AcmoTicketEventsModel {
  _$AcmoTicketEventsModelImpl(
      {required this.id,
      this.identifier = '',
      this.eventName = '',
      this.eventDescription = '',
      this.eventCategory = '',
      this.payoutType = '',
      this.payoutAmount = 0.0,
      this.payoutAmountConverted = 0.0,
      this.isTicketSubmitted = false,
      this.ticketStatus = '',
      this.conversionStatus = '',
      this.currencyIcon = '',
      this.currencyName = '',
      this.allowDuplicateEvents = false,
      this.currencyConversion = 0,
      this.payoutTypeId = 0,
      this.maxTime = 0,
      this.maxTimeMetric = '',
      this.maxTimeRemainSeconds,
      this.enforceMaxTimeCompletion = false});

  factory _$AcmoTicketEventsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AcmoTicketEventsModelImplFromJson(json);

  @override
  final int id;
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
  final String payoutType;
  @override
  @JsonKey()
  final double payoutAmount;
  @override
  @JsonKey()
  final double payoutAmountConverted;
  @override
  @JsonKey()
  final bool isTicketSubmitted;
  @override
  @JsonKey()
  final String ticketStatus;
  @override
  @JsonKey()
  final String conversionStatus;
  @override
  @JsonKey()
  final String currencyIcon;
  @override
  @JsonKey()
  final String currencyName;
  @override
  @JsonKey()
  final bool allowDuplicateEvents;
  @override
  @JsonKey()
  final int currencyConversion;
  @override
  @JsonKey()
  final int payoutTypeId;
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
  String toString() {
    return 'AcmoTicketEventsModel(id: $id, identifier: $identifier, eventName: $eventName, eventDescription: $eventDescription, eventCategory: $eventCategory, payoutType: $payoutType, payoutAmount: $payoutAmount, payoutAmountConverted: $payoutAmountConverted, isTicketSubmitted: $isTicketSubmitted, ticketStatus: $ticketStatus, conversionStatus: $conversionStatus, currencyIcon: $currencyIcon, currencyName: $currencyName, allowDuplicateEvents: $allowDuplicateEvents, currencyConversion: $currencyConversion, payoutTypeId: $payoutTypeId, maxTime: $maxTime, maxTimeMetric: $maxTimeMetric, maxTimeRemainSeconds: $maxTimeRemainSeconds, enforceMaxTimeCompletion: $enforceMaxTimeCompletion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcmoTicketEventsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName) &&
            (identical(other.eventDescription, eventDescription) ||
                other.eventDescription == eventDescription) &&
            (identical(other.eventCategory, eventCategory) ||
                other.eventCategory == eventCategory) &&
            (identical(other.payoutType, payoutType) ||
                other.payoutType == payoutType) &&
            (identical(other.payoutAmount, payoutAmount) ||
                other.payoutAmount == payoutAmount) &&
            (identical(other.payoutAmountConverted, payoutAmountConverted) ||
                other.payoutAmountConverted == payoutAmountConverted) &&
            (identical(other.isTicketSubmitted, isTicketSubmitted) ||
                other.isTicketSubmitted == isTicketSubmitted) &&
            (identical(other.ticketStatus, ticketStatus) ||
                other.ticketStatus == ticketStatus) &&
            (identical(other.conversionStatus, conversionStatus) ||
                other.conversionStatus == conversionStatus) &&
            (identical(other.currencyIcon, currencyIcon) ||
                other.currencyIcon == currencyIcon) &&
            (identical(other.currencyName, currencyName) ||
                other.currencyName == currencyName) &&
            (identical(other.allowDuplicateEvents, allowDuplicateEvents) ||
                other.allowDuplicateEvents == allowDuplicateEvents) &&
            (identical(other.currencyConversion, currencyConversion) ||
                other.currencyConversion == currencyConversion) &&
            (identical(other.payoutTypeId, payoutTypeId) ||
                other.payoutTypeId == payoutTypeId) &&
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
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        identifier,
        eventName,
        eventDescription,
        eventCategory,
        payoutType,
        payoutAmount,
        payoutAmountConverted,
        isTicketSubmitted,
        ticketStatus,
        conversionStatus,
        currencyIcon,
        currencyName,
        allowDuplicateEvents,
        currencyConversion,
        payoutTypeId,
        maxTime,
        maxTimeMetric,
        maxTimeRemainSeconds,
        enforceMaxTimeCompletion
      ]);

  /// Create a copy of AcmoTicketEventsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcmoTicketEventsModelImplCopyWith<_$AcmoTicketEventsModelImpl>
      get copyWith => __$$AcmoTicketEventsModelImplCopyWithImpl<
          _$AcmoTicketEventsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcmoTicketEventsModelImplToJson(
      this,
    );
  }
}

abstract class _AcmoTicketEventsModel implements AcmoTicketEventsModel {
  factory _AcmoTicketEventsModel(
      {required final int id,
      final String identifier,
      final String eventName,
      final String eventDescription,
      final String eventCategory,
      final String payoutType,
      final double payoutAmount,
      final double payoutAmountConverted,
      final bool isTicketSubmitted,
      final String ticketStatus,
      final String conversionStatus,
      final String currencyIcon,
      final String currencyName,
      final bool allowDuplicateEvents,
      final int currencyConversion,
      final int payoutTypeId,
      final int maxTime,
      final String maxTimeMetric,
      final double? maxTimeRemainSeconds,
      final bool enforceMaxTimeCompletion}) = _$AcmoTicketEventsModelImpl;

  factory _AcmoTicketEventsModel.fromJson(Map<String, dynamic> json) =
      _$AcmoTicketEventsModelImpl.fromJson;

  @override
  int get id;
  @override
  String get identifier;
  @override
  String get eventName;
  @override
  String get eventDescription;
  @override
  String get eventCategory;
  @override
  String get payoutType;
  @override
  double get payoutAmount;
  @override
  double get payoutAmountConverted;
  @override
  bool get isTicketSubmitted;
  @override
  String get ticketStatus;
  @override
  String get conversionStatus;
  @override
  String get currencyIcon;
  @override
  String get currencyName;
  @override
  bool get allowDuplicateEvents;
  @override
  int get currencyConversion;
  @override
  int get payoutTypeId;
  @override
  int get maxTime;
  @override
  String get maxTimeMetric;
  @override
  double? get maxTimeRemainSeconds;
  @override
  bool get enforceMaxTimeCompletion;

  /// Create a copy of AcmoTicketEventsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcmoTicketEventsModelImplCopyWith<_$AcmoTicketEventsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
