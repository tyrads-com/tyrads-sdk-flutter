import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/modules/usage_stats/widgets/usage_stats_tile.dart';

class AcmoAppUsageStatDialog extends StatefulWidget {
  const AcmoAppUsageStatDialog(
      {super.key, this.dismisable = false, required this.onGrant});

  final bool dismisable;
  final Function onGrant;
  @override
  State<AcmoAppUsageStatDialog> createState() => _AcmoAppUsageStatDialogState();
}

class _AcmoAppUsageStatDialogState extends State<AcmoAppUsageStatDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => widget.dismisable,
      child: Dialog(
          alignment: Alignment.topCenter,
          insetPadding: const EdgeInsets.only(top: 130, right: 16, left: 16),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(32.0))),
          child: AcmoAppUsageStatsTile(onGrant: () {
            widget.onGrant();
            Navigator.pop(context);
          })),
    );
  }
}
