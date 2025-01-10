// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'microcharge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MicroChargeImpl _$$MicroChargeImplFromJson(Map<String, dynamic> json) =>
    _$MicroChargeImpl(
      totalReward: (json['totalReward'] as num).toInt(),
      currentEarnedReward: (json['currentEarnedReward'] as num).toInt(),
      levels: (json['levels'] as List<dynamic>)
          .map((e) => Level.fromJson(e as Map<String, dynamic>))
          .toList(),
      tasks: (json['tasks'] as List<dynamic>)
          .map((e) => Task.fromJson(e as Map<String, dynamic>))
          .toList(),
      dailyTasks: (json['dailyTasks'] as List<dynamic>)
          .map((e) => DailyTask.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MicroChargeImplToJson(_$MicroChargeImpl instance) =>
    <String, dynamic>{
      'totalReward': instance.totalReward,
      'currentEarnedReward': instance.currentEarnedReward,
      'levels': instance.levels,
      'tasks': instance.tasks,
      'dailyTasks': instance.dailyTasks,
    };

_$LevelImpl _$$LevelImplFromJson(Map<String, dynamic> json) => _$LevelImpl(
      level: (json['level'] as num).toInt(),
      rewardPercentage: (json['rewardPercentage'] as num).toInt(),
      isCompleted: json['isCompleted'] as bool,
    );

Map<String, dynamic> _$$LevelImplToJson(_$LevelImpl instance) =>
    <String, dynamic>{
      'level': instance.level,
      'rewardPercentage': instance.rewardPercentage,
      'isCompleted': instance.isCompleted,
    };

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      title: json['title'] as String,
      totalYouCanEarn: (json['totalYouCanEarn'] as num).toInt(),
      currencyName: json['currencyName'] as String,
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'totalYouCanEarn': instance.totalYouCanEarn,
      'currencyName': instance.currencyName,
    };

_$DailyTaskImpl _$$DailyTaskImplFromJson(Map<String, dynamic> json) =>
    _$DailyTaskImpl(
      name: json['name'] as String,
      taskEvent: json['taskEvent'] as String,
      dailyTotalTasks: (json['dailyTotalTasks'] as num).toInt(),
      dailyCompletedTasks: (json['dailyCompletedTasks'] as num).toInt(),
      totalCompletedTasks: (json['totalCompletedTasks'] as num).toInt(),
      totalLimit: (json['totalLimit'] as num).toInt(),
    );

Map<String, dynamic> _$$DailyTaskImplToJson(_$DailyTaskImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'taskEvent': instance.taskEvent,
      'dailyTotalTasks': instance.dailyTotalTasks,
      'dailyCompletedTasks': instance.dailyCompletedTasks,
      'totalCompletedTasks': instance.totalCompletedTasks,
      'totalLimit': instance.totalLimit,
    };
