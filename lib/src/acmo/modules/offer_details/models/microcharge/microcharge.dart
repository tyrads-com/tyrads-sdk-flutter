import 'package:freezed_annotation/freezed_annotation.dart';

part 'microcharge.freezed.dart';
part 'microcharge.g.dart';

@freezed
class MicroCharge with _$MicroCharge {
  const factory MicroCharge({
    required int totalReward,
    required int currentEarnedReward,
    required List<Level> levels,
    required List<Task> tasks,
    required List<DailyTask> dailyTasks,
  }) = _MicroCharge;

  factory MicroCharge.fromJson(Map<String, dynamic> json) =>
      _$MicroChargeFromJson(json);
}

@freezed
class Level with _$Level {
  const factory Level({
    required int level,
    required int rewardPercentage,
    required bool isCompleted,
  }) = _Level;

  factory Level.fromJson(Map<String, dynamic> json) => _$LevelFromJson(json);
}

@freezed
class Task with _$Task {
  const factory Task({
    required String title,
    required int totalYouCanEarn,
    required String currencyName,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}

@freezed
class DailyTask with _$DailyTask {
  const factory DailyTask({
    required String name,
    required String taskEvent,
    required int dailyTotalTasks,
    required int dailyCompletedTasks,
    required int totalCompletedTasks,
    required int totalLimit,
  }) = _DailyTask;

  factory DailyTask.fromJson(Map<String, dynamic> json) =>
      _$DailyTaskFromJson(json);
}
