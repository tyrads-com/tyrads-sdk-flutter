// ignore_for_file: must_be_immutable

import 'package:custom_timer/custom_timer.dart';
import 'package:flutter/material.dart';

class AcmoComponentCountdown extends StatefulWidget {
  AcmoComponentCountdown(
      {Key? key, this.seconds = 0, this.onFinish, this.style})
      : super(key: key);

  int seconds;
  Function? onFinish;
  TextStyle? style;
  @override
  State<AcmoComponentCountdown> createState() => _AcmoComponentCountdownState();
}

class _AcmoComponentCountdownState extends State<AcmoComponentCountdown>
    with SingleTickerProviderStateMixin {
  late CustomTimerController cd_controller = CustomTimerController(
      vsync: this,
      begin: Duration(seconds: widget.seconds),
      end: const Duration(),
      initialState: CustomTimerState.reset,
      interval: CustomTimerInterval.seconds);
  @override
  void dispose() {
    cd_controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    cd_controller.start();
    Future.delayed(Duration(seconds: widget.seconds))
        .then((value) => widget.onFinish != null ? widget.onFinish!() : null);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomTimer(
        controller: cd_controller,
        builder: (state, time) {
          // Build the widget you want!🎉
          var totalTime = widget.seconds;
          return DefaultTextStyle(
            style: widget.style ??
                const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (totalTime > 86000)
                  Text("${time.days}d ${time.hours}h")
                else if (totalTime > 3600)
                  Text("${time.hours}h ${time.minutes}m")
                else
                  Text("${time.minutes}m ${time.seconds}s"),
              ],
            ),
          );
        });
  }
}
