// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'microcharge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MicroCharge _$MicroChargeFromJson(Map<String, dynamic> json) {
  return _MicroCharge.fromJson(json);
}

/// @nodoc
mixin _$MicroCharge {
  int get totalReward => throw _privateConstructorUsedError;
  int get currentEarnedReward => throw _privateConstructorUsedError;
  List<Level> get levels => throw _privateConstructorUsedError;
  List<Task> get tasks => throw _privateConstructorUsedError;
  List<DailyTask> get dailyTasks => throw _privateConstructorUsedError;

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
      {int totalReward,
      int currentEarnedReward,
      List<Level> levels,
      List<Task> tasks,
      List<DailyTask> dailyTasks});
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
    Object? totalReward = null,
    Object? currentEarnedReward = null,
    Object? levels = null,
    Object? tasks = null,
    Object? dailyTasks = null,
  }) {
    return _then(_value.copyWith(
      totalReward: null == totalReward
          ? _value.totalReward
          : totalReward // ignore: cast_nullable_to_non_nullable
              as int,
      currentEarnedReward: null == currentEarnedReward
          ? _value.currentEarnedReward
          : currentEarnedReward // ignore: cast_nullable_to_non_nullable
              as int,
      levels: null == levels
          ? _value.levels
          : levels // ignore: cast_nullable_to_non_nullable
              as List<Level>,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      dailyTasks: null == dailyTasks
          ? _value.dailyTasks
          : dailyTasks // ignore: cast_nullable_to_non_nullable
              as List<DailyTask>,
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
      {int totalReward,
      int currentEarnedReward,
      List<Level> levels,
      List<Task> tasks,
      List<DailyTask> dailyTasks});
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
    Object? totalReward = null,
    Object? currentEarnedReward = null,
    Object? levels = null,
    Object? tasks = null,
    Object? dailyTasks = null,
  }) {
    return _then(_$MicroChargeImpl(
      totalReward: null == totalReward
          ? _value.totalReward
          : totalReward // ignore: cast_nullable_to_non_nullable
              as int,
      currentEarnedReward: null == currentEarnedReward
          ? _value.currentEarnedReward
          : currentEarnedReward // ignore: cast_nullable_to_non_nullable
              as int,
      levels: null == levels
          ? _value._levels
          : levels // ignore: cast_nullable_to_non_nullable
              as List<Level>,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      dailyTasks: null == dailyTasks
          ? _value._dailyTasks
          : dailyTasks // ignore: cast_nullable_to_non_nullable
              as List<DailyTask>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MicroChargeImpl implements _MicroCharge {
  const _$MicroChargeImpl(
      {required this.totalReward,
      required this.currentEarnedReward,
      required final List<Level> levels,
      required final List<Task> tasks,
      required final List<DailyTask> dailyTasks})
      : _levels = levels,
        _tasks = tasks,
        _dailyTasks = dailyTasks;

  factory _$MicroChargeImpl.fromJson(Map<String, dynamic> json) =>
      _$$MicroChargeImplFromJson(json);

  @override
  final int totalReward;
  @override
  final int currentEarnedReward;
  final List<Level> _levels;
  @override
  List<Level> get levels {
    if (_levels is EqualUnmodifiableListView) return _levels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_levels);
  }

  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  final List<DailyTask> _dailyTasks;
  @override
  List<DailyTask> get dailyTasks {
    if (_dailyTasks is EqualUnmodifiableListView) return _dailyTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dailyTasks);
  }

  @override
  String toString() {
    return 'MicroCharge(totalReward: $totalReward, currentEarnedReward: $currentEarnedReward, levels: $levels, tasks: $tasks, dailyTasks: $dailyTasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MicroChargeImpl &&
            (identical(other.totalReward, totalReward) ||
                other.totalReward == totalReward) &&
            (identical(other.currentEarnedReward, currentEarnedReward) ||
                other.currentEarnedReward == currentEarnedReward) &&
            const DeepCollectionEquality().equals(other._levels, _levels) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality()
                .equals(other._dailyTasks, _dailyTasks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalReward,
      currentEarnedReward,
      const DeepCollectionEquality().hash(_levels),
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(_dailyTasks));

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
      {required final int totalReward,
      required final int currentEarnedReward,
      required final List<Level> levels,
      required final List<Task> tasks,
      required final List<DailyTask> dailyTasks}) = _$MicroChargeImpl;

  factory _MicroCharge.fromJson(Map<String, dynamic> json) =
      _$MicroChargeImpl.fromJson;

  @override
  int get totalReward;
  @override
  int get currentEarnedReward;
  @override
  List<Level> get levels;
  @override
  List<Task> get tasks;
  @override
  List<DailyTask> get dailyTasks;

  /// Create a copy of MicroCharge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MicroChargeImplCopyWith<_$MicroChargeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Level _$LevelFromJson(Map<String, dynamic> json) {
  return _Level.fromJson(json);
}

/// @nodoc
mixin _$Level {
  int get level => throw _privateConstructorUsedError;
  int get rewardPercentage => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;

  /// Serializes this Level to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Level
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LevelCopyWith<Level> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelCopyWith<$Res> {
  factory $LevelCopyWith(Level value, $Res Function(Level) then) =
      _$LevelCopyWithImpl<$Res, Level>;
  @useResult
  $Res call({int level, int rewardPercentage, bool isCompleted});
}

/// @nodoc
class _$LevelCopyWithImpl<$Res, $Val extends Level>
    implements $LevelCopyWith<$Res> {
  _$LevelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Level
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? rewardPercentage = null,
    Object? isCompleted = null,
  }) {
    return _then(_value.copyWith(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      rewardPercentage: null == rewardPercentage
          ? _value.rewardPercentage
          : rewardPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LevelImplCopyWith<$Res> implements $LevelCopyWith<$Res> {
  factory _$$LevelImplCopyWith(
          _$LevelImpl value, $Res Function(_$LevelImpl) then) =
      __$$LevelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int level, int rewardPercentage, bool isCompleted});
}

/// @nodoc
class __$$LevelImplCopyWithImpl<$Res>
    extends _$LevelCopyWithImpl<$Res, _$LevelImpl>
    implements _$$LevelImplCopyWith<$Res> {
  __$$LevelImplCopyWithImpl(
      _$LevelImpl _value, $Res Function(_$LevelImpl) _then)
      : super(_value, _then);

  /// Create a copy of Level
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? rewardPercentage = null,
    Object? isCompleted = null,
  }) {
    return _then(_$LevelImpl(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      rewardPercentage: null == rewardPercentage
          ? _value.rewardPercentage
          : rewardPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LevelImpl implements _Level {
  const _$LevelImpl(
      {required this.level,
      required this.rewardPercentage,
      required this.isCompleted});

  factory _$LevelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LevelImplFromJson(json);

  @override
  final int level;
  @override
  final int rewardPercentage;
  @override
  final bool isCompleted;

  @override
  String toString() {
    return 'Level(level: $level, rewardPercentage: $rewardPercentage, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelImpl &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.rewardPercentage, rewardPercentage) ||
                other.rewardPercentage == rewardPercentage) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, level, rewardPercentage, isCompleted);

  /// Create a copy of Level
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelImplCopyWith<_$LevelImpl> get copyWith =>
      __$$LevelImplCopyWithImpl<_$LevelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LevelImplToJson(
      this,
    );
  }
}

abstract class _Level implements Level {
  const factory _Level(
      {required final int level,
      required final int rewardPercentage,
      required final bool isCompleted}) = _$LevelImpl;

  factory _Level.fromJson(Map<String, dynamic> json) = _$LevelImpl.fromJson;

  @override
  int get level;
  @override
  int get rewardPercentage;
  @override
  bool get isCompleted;

  /// Create a copy of Level
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LevelImplCopyWith<_$LevelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
mixin _$Task {
  String get title => throw _privateConstructorUsedError;
  int get totalYouCanEarn => throw _privateConstructorUsedError;
  String get currencyName => throw _privateConstructorUsedError;

  /// Serializes this Task to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call({String title, int totalYouCanEarn, String currencyName});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? totalYouCanEarn = null,
    Object? currencyName = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      totalYouCanEarn: null == totalYouCanEarn
          ? _value.totalYouCanEarn
          : totalYouCanEarn // ignore: cast_nullable_to_non_nullable
              as int,
      currencyName: null == currencyName
          ? _value.currencyName
          : currencyName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskImplCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskImplCopyWith(
          _$TaskImpl value, $Res Function(_$TaskImpl) then) =
      __$$TaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, int totalYouCanEarn, String currencyName});
}

/// @nodoc
class __$$TaskImplCopyWithImpl<$Res>
    extends _$TaskCopyWithImpl<$Res, _$TaskImpl>
    implements _$$TaskImplCopyWith<$Res> {
  __$$TaskImplCopyWithImpl(_$TaskImpl _value, $Res Function(_$TaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? totalYouCanEarn = null,
    Object? currencyName = null,
  }) {
    return _then(_$TaskImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      totalYouCanEarn: null == totalYouCanEarn
          ? _value.totalYouCanEarn
          : totalYouCanEarn // ignore: cast_nullable_to_non_nullable
              as int,
      currencyName: null == currencyName
          ? _value.currencyName
          : currencyName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskImpl implements _Task {
  const _$TaskImpl(
      {required this.title,
      required this.totalYouCanEarn,
      required this.currencyName});

  factory _$TaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskImplFromJson(json);

  @override
  final String title;
  @override
  final int totalYouCanEarn;
  @override
  final String currencyName;

  @override
  String toString() {
    return 'Task(title: $title, totalYouCanEarn: $totalYouCanEarn, currencyName: $currencyName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.totalYouCanEarn, totalYouCanEarn) ||
                other.totalYouCanEarn == totalYouCanEarn) &&
            (identical(other.currencyName, currencyName) ||
                other.currencyName == currencyName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, totalYouCanEarn, currencyName);

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      __$$TaskImplCopyWithImpl<_$TaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskImplToJson(
      this,
    );
  }
}

abstract class _Task implements Task {
  const factory _Task(
      {required final String title,
      required final int totalYouCanEarn,
      required final String currencyName}) = _$TaskImpl;

  factory _Task.fromJson(Map<String, dynamic> json) = _$TaskImpl.fromJson;

  @override
  String get title;
  @override
  int get totalYouCanEarn;
  @override
  String get currencyName;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DailyTask _$DailyTaskFromJson(Map<String, dynamic> json) {
  return _DailyTask.fromJson(json);
}

/// @nodoc
mixin _$DailyTask {
  String get name => throw _privateConstructorUsedError;
  String get taskEvent => throw _privateConstructorUsedError;
  int get dailyTotalTasks => throw _privateConstructorUsedError;
  int get dailyCompletedTasks => throw _privateConstructorUsedError;
  int get totalCompletedTasks => throw _privateConstructorUsedError;
  int get totalLimit => throw _privateConstructorUsedError;

  /// Serializes this DailyTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyTaskCopyWith<DailyTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyTaskCopyWith<$Res> {
  factory $DailyTaskCopyWith(DailyTask value, $Res Function(DailyTask) then) =
      _$DailyTaskCopyWithImpl<$Res, DailyTask>;
  @useResult
  $Res call(
      {String name,
      String taskEvent,
      int dailyTotalTasks,
      int dailyCompletedTasks,
      int totalCompletedTasks,
      int totalLimit});
}

/// @nodoc
class _$DailyTaskCopyWithImpl<$Res, $Val extends DailyTask>
    implements $DailyTaskCopyWith<$Res> {
  _$DailyTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? taskEvent = null,
    Object? dailyTotalTasks = null,
    Object? dailyCompletedTasks = null,
    Object? totalCompletedTasks = null,
    Object? totalLimit = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      taskEvent: null == taskEvent
          ? _value.taskEvent
          : taskEvent // ignore: cast_nullable_to_non_nullable
              as String,
      dailyTotalTasks: null == dailyTotalTasks
          ? _value.dailyTotalTasks
          : dailyTotalTasks // ignore: cast_nullable_to_non_nullable
              as int,
      dailyCompletedTasks: null == dailyCompletedTasks
          ? _value.dailyCompletedTasks
          : dailyCompletedTasks // ignore: cast_nullable_to_non_nullable
              as int,
      totalCompletedTasks: null == totalCompletedTasks
          ? _value.totalCompletedTasks
          : totalCompletedTasks // ignore: cast_nullable_to_non_nullable
              as int,
      totalLimit: null == totalLimit
          ? _value.totalLimit
          : totalLimit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyTaskImplCopyWith<$Res>
    implements $DailyTaskCopyWith<$Res> {
  factory _$$DailyTaskImplCopyWith(
          _$DailyTaskImpl value, $Res Function(_$DailyTaskImpl) then) =
      __$$DailyTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String taskEvent,
      int dailyTotalTasks,
      int dailyCompletedTasks,
      int totalCompletedTasks,
      int totalLimit});
}

/// @nodoc
class __$$DailyTaskImplCopyWithImpl<$Res>
    extends _$DailyTaskCopyWithImpl<$Res, _$DailyTaskImpl>
    implements _$$DailyTaskImplCopyWith<$Res> {
  __$$DailyTaskImplCopyWithImpl(
      _$DailyTaskImpl _value, $Res Function(_$DailyTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? taskEvent = null,
    Object? dailyTotalTasks = null,
    Object? dailyCompletedTasks = null,
    Object? totalCompletedTasks = null,
    Object? totalLimit = null,
  }) {
    return _then(_$DailyTaskImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      taskEvent: null == taskEvent
          ? _value.taskEvent
          : taskEvent // ignore: cast_nullable_to_non_nullable
              as String,
      dailyTotalTasks: null == dailyTotalTasks
          ? _value.dailyTotalTasks
          : dailyTotalTasks // ignore: cast_nullable_to_non_nullable
              as int,
      dailyCompletedTasks: null == dailyCompletedTasks
          ? _value.dailyCompletedTasks
          : dailyCompletedTasks // ignore: cast_nullable_to_non_nullable
              as int,
      totalCompletedTasks: null == totalCompletedTasks
          ? _value.totalCompletedTasks
          : totalCompletedTasks // ignore: cast_nullable_to_non_nullable
              as int,
      totalLimit: null == totalLimit
          ? _value.totalLimit
          : totalLimit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyTaskImpl implements _DailyTask {
  const _$DailyTaskImpl(
      {required this.name,
      required this.taskEvent,
      required this.dailyTotalTasks,
      required this.dailyCompletedTasks,
      required this.totalCompletedTasks,
      required this.totalLimit});

  factory _$DailyTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyTaskImplFromJson(json);

  @override
  final String name;
  @override
  final String taskEvent;
  @override
  final int dailyTotalTasks;
  @override
  final int dailyCompletedTasks;
  @override
  final int totalCompletedTasks;
  @override
  final int totalLimit;

  @override
  String toString() {
    return 'DailyTask(name: $name, taskEvent: $taskEvent, dailyTotalTasks: $dailyTotalTasks, dailyCompletedTasks: $dailyCompletedTasks, totalCompletedTasks: $totalCompletedTasks, totalLimit: $totalLimit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyTaskImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.taskEvent, taskEvent) ||
                other.taskEvent == taskEvent) &&
            (identical(other.dailyTotalTasks, dailyTotalTasks) ||
                other.dailyTotalTasks == dailyTotalTasks) &&
            (identical(other.dailyCompletedTasks, dailyCompletedTasks) ||
                other.dailyCompletedTasks == dailyCompletedTasks) &&
            (identical(other.totalCompletedTasks, totalCompletedTasks) ||
                other.totalCompletedTasks == totalCompletedTasks) &&
            (identical(other.totalLimit, totalLimit) ||
                other.totalLimit == totalLimit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, taskEvent, dailyTotalTasks,
      dailyCompletedTasks, totalCompletedTasks, totalLimit);

  /// Create a copy of DailyTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyTaskImplCopyWith<_$DailyTaskImpl> get copyWith =>
      __$$DailyTaskImplCopyWithImpl<_$DailyTaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyTaskImplToJson(
      this,
    );
  }
}

abstract class _DailyTask implements DailyTask {
  const factory _DailyTask(
      {required final String name,
      required final String taskEvent,
      required final int dailyTotalTasks,
      required final int dailyCompletedTasks,
      required final int totalCompletedTasks,
      required final int totalLimit}) = _$DailyTaskImpl;

  factory _DailyTask.fromJson(Map<String, dynamic> json) =
      _$DailyTaskImpl.fromJson;

  @override
  String get name;
  @override
  String get taskEvent;
  @override
  int get dailyTotalTasks;
  @override
  int get dailyCompletedTasks;
  @override
  int get totalCompletedTasks;
  @override
  int get totalLimit;

  /// Create a copy of DailyTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyTaskImplCopyWith<_$DailyTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
