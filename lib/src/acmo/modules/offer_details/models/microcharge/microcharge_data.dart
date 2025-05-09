import 'package:tyrads_sdk/src/acmo/modules/offer_details/models/microcharge/microcharge.dart';

MicroCharge microChargeData = const MicroCharge(
  totalReward: 200,
  currentEarnedReward: 100,
  levels: [
    Level(level: 0, rewardPercentage: 10, isCompleted: true),
    Level(level: 1, rewardPercentage: 100, isCompleted: true),
    Level(level: 2, rewardPercentage: 125, isCompleted: false),
    Level(level: 3, rewardPercentage: 150, isCompleted: false),
    Level(level: 4, rewardPercentage: 175, isCompleted: false),
    Level(level: 5, rewardPercentage: 200, isCompleted: false),
  ],
  tasks: [
    Task(
      title: "Purchase Efficiency First in Market’s Warrior Support",
      totalYouCanEarn: 100,
      currencyName: "TPoints",
    ),
    Task(
      title: "Purchase One Step Ahead Bundle After Start City Level 13",
      totalYouCanEarn: 200,
      currencyName: "TPoints",
    ),
    Task(
      title: "Purchase Gold Rush Package After Reaching City Level 18",
      totalYouCanEarn: 300,
      currencyName: "TPoints",
    ),
  ],
  dailyTasks: [
    DailyTask(
      name: "Daily Purchase Reward",
      taskEvent: "In-App Purchases",
      dailyTotalTasks: 3,
      dailyCompletedTasks: 1,
      totalCompletedTasks: 20,
      totalLimit: 100,
    ),
    DailyTask(
      name: "Daily Reward",
      taskEvent: "Watch Ads",
      dailyTotalTasks: 10,
      dailyCompletedTasks: 7,
      totalCompletedTasks: 30,
      totalLimit: 150,
    ),
  ],
);