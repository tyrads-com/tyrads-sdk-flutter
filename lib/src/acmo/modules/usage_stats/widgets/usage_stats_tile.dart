import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/modules/tracking/activities.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';
import 'package:usage_stats_new/usage_stats.dart';

class AcmoAppUsageStatsTile extends StatefulWidget {
  const AcmoAppUsageStatsTile({super.key, required this.onGrant});

  final Function onGrant;
  @override
  State<AcmoAppUsageStatsTile> createState() => _AcmoAppUsageStatsTileState();
}

class _AcmoAppUsageStatsTileState extends State<AcmoAppUsageStatsTile>
    with WidgetsBindingObserver {
  var checked = false;
  var usagePermissionsLoader = false;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        checkStatusAndContinue();
        break;
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.paused:
        break;
      case AppLifecycleState.detached:
        break;
      case AppLifecycleState.hidden:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    t.usagePermissions.permitTitle,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 48,
                  width: 36,
                  child: Stack(
                    children: [
                      if (usagePermissionsLoader)
                        const Center(
                          child: SizedBox.square(
                            dimension: 16,
                            child: CircularProgressIndicator(),
                          ),
                        ),
                      if (!usagePermissionsLoader)
                        Switch(
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            trackColor:
                                WidgetStateProperty.resolveWith((states) {
                              return Colors.black12;
                            }),
                            thumbColor:
                                WidgetStateProperty.resolveWith((states) {
                              if (states.contains(WidgetState.selected)) {
                                return Theme.of(context).colorScheme.secondary;
                              }
                              return Colors.grey;
                            }),
                            trackOutlineColor:
                                WidgetStateProperty.resolveWith((states) {
                              return Colors.grey[500];
                            }),
                            value: checked,
                            onChanged: (val) async {
                              if (mounted) {
                                setState(() {
                                  usagePermissionsLoader = true;
                                });
                              }
                              UsageStats.grantUsagePermission();
                              checkStatusAndContinue();
                              Future.delayed(const Duration(seconds: 3))
                                  .then((v) {
                                if (mounted) {
                                  setState(() {
                                    usagePermissionsLoader = false;
                                  });
                                }
                              });
                            }),
                    ],
                  ),
                )
              ],
            ),
            Text(t.usagePermissions.description),
          ],
        ),
      ),
    );
  }

  checkStatusAndContinue() {
    UsageStats.checkUsagePermission().then((status) {
      if (status ?? false) {
        checked = true;
        widget.onGrant();
        Tyrads.instance.track(TyradsActivity.usageDataGranted);
      }
    });
  }
}
