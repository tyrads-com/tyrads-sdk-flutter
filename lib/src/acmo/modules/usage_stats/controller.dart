import 'dart:io';

import 'package:android_package_manager/android_package_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';
import 'package:usage_stats_new/usage_stats.dart';

import 'repository.dart';
import 'widgets/dialog_usage_stats.dart';

class AcmoControllerUsageStats {
  final _repository = AcmoRepositoryUsageStat();

  checkUsageStats({String? packageName}) async {
    // acmoSnackbar("${AppTextKeys.PLEASE_WAIT.tr}, ${AppTextKeys.WHILE_WE_SAVE_THE_CONFIGURATION.tr}");
    try {
      if (kIsWeb || !Platform.isAndroid) {
        return null;
      }
      bool status = await UsageStats.checkUsagePermission() ?? false;
      if (!status) {
        Tyrads.instance.dialog(AcmoAppUsageStatDialog(onGrant: () {
          // saveUsageStats(packageName: packageName);
        }));
      } else {
        //  saveUsageStats(packageName: packageName);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<List<Map<String, dynamic>>> saveUsageStats(
      {String? packageName,
      bool isForeground = false,
      int days = 150,
      bool getPackageInfo = false,
      bool getDeviceInfo = false,
      bool saveUsage = true}) async {
    try {
      if (kIsWeb || !Platform.isAndroid) {
        return [];
      }

      var fd = <String, dynamic>{};
      var endDate = DateTime.now();
      var startDate = endDate.subtract(Duration(days: days));
      var temp = <Map<String, dynamic>>[];

      var aggregateUsageStats =
          await UsageStats.queryAndAggregateUsageStats(startDate, endDate);
      aggregateUsageStats.forEach((String name, UsageInfo value) {
        if (packageName == null || packageName == value.packageName) {
          String? foregroundTime = !isForeground
              ? value.totalTimeInForeground
              : (((getDoubleFromString(value.totalTimeInForeground)) +
                      DateTime.now().millisecondsSinceEpoch -
                      getDoubleFromString(value.lastTimeStamp)))
                  .toString();
          Map<String, dynamic> item = {
            "packageName": value.packageName,
            "firstTimeStamp": int.tryParse(value.firstTimeStamp ?? '0') ?? 0,
            "lastTimeStamp": int.tryParse(value.lastTimeStamp ?? '0') ?? 0,
            "lastTimeUsed": int.tryParse(value.lastTimeUsed ?? '0') ?? 0,
            "foregroundTime": (int.tryParse(foregroundTime ?? '0') ?? 0)~/1000,
          };
          temp.add(item);
        }
      });
      if (temp.isNotEmpty && saveUsage) {
        fd['usageStatsList'] = temp;
        await _repository.saveUsageStats(fd);
      }
      return temp;
    } catch (e) {
      return [];
    }
  }

  getDeviceAgeTime() async {
    try {
      final pm = AndroidPackageManager();
      int timestamp = DateTime.now().millisecondsSinceEpoch;
      var pkgs = await pm.getInstalledPackages();
      var installTimeCount = {};
      var highestCount = 1;
      for (PackageInfo element in pkgs ?? []) {
        if ((element.firstInstallTime ?? 0) > 1293840000000) {
          //after gingerbread
          if (installTimeCount.containsKey(element.firstInstallTime)) {
            installTimeCount[element.firstInstallTime] += 1;
            if (installTimeCount[element.firstInstallTime] > highestCount) {
              highestCount = installTimeCount[element.firstInstallTime];
            }
          } else {
            installTimeCount[element.firstInstallTime] = 1;
          }
        }
      }

      installTimeCount
          .removeWhere((key, value) => value == highestCount ? false : true);
      installTimeCount.forEach((key, value) {
        if (key < timestamp) {
          timestamp = key;
        }
      });

      return timestamp;
    } catch (e) {}
  }

  getDoubleFromString(String? v) {
    return double.tryParse(v ?? '0') ?? 0.0;
  }
}
