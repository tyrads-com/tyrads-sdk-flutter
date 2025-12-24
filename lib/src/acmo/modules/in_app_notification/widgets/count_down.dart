// ignore_for_file: must_be_immutable

import 'package:custom_timer/custom_timer.dart';
import 'package:flutter/material.dart';

final Map<String, DateTime> _countdownStartTimes = {};

class AcmoComponentCountdown extends StatefulWidget {
  AcmoComponentCountdown(
      {super.key,
      this.seconds = 0,
      this.onFinish,
      this.style,
      this.formatType,
      this.countdownId});

  int seconds;
  Function? onFinish;
  TextStyle? style;
  String? formatType;
  String? countdownId;

  @override
  State<AcmoComponentCountdown> createState() => _AcmoComponentCountdownState();
}

class _AcmoComponentCountdownState extends State<AcmoComponentCountdown>
    with SingleTickerProviderStateMixin {
  late CustomTimerController cd_controller;
  late int _remainingSeconds;

  @override
  void dispose() {
    cd_controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _initializeCountdown();
    super.initState();
  }

  void _initializeCountdown() {
    final countdownId = widget.countdownId ?? 'default_${widget.key}';

    if (!_countdownStartTimes.containsKey(countdownId)) {
      _countdownStartTimes[countdownId] = DateTime.now();
      _remainingSeconds = widget.seconds;
    } else {
      final elapsed = DateTime.now()
          .difference(_countdownStartTimes[countdownId]!)
          .inSeconds;
      _remainingSeconds = (widget.seconds - elapsed).clamp(0, widget.seconds);
    }

    cd_controller = CustomTimerController(
        vsync: this,
        begin: Duration(seconds: _remainingSeconds),
        end: const Duration(),
        initialState: CustomTimerState.reset,
        interval: CustomTimerInterval.seconds);
    cd_controller.start();

    if (_remainingSeconds > 0) {
      Future.delayed(Duration(seconds: _remainingSeconds)).then((value) {
        _countdownStartTimes
            .remove(widget.countdownId ?? 'default_${widget.key}');
        widget.onFinish != null ? widget.onFinish!() : null;
      });
    }
  }

  @override
  void didUpdateWidget(AcmoComponentCountdown oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.seconds != widget.seconds) {
      cd_controller.dispose();
      _countdownStartTimes.clear();
      _initializeCountdown();
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomTimer(
        controller: cd_controller,
        builder: (state, time) {
          var totalTime = _remainingSeconds;
          return DefaultTextStyle(
            style: widget.style ??
                const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
            child: widget.formatType == 'hh:mm:ss'
                ? (totalTime > 86400
                    ? Text("${time.days}d ${time.hours}h")
                    : Text("${time.hours}:${time.minutes}:${time.seconds}"))
                : (totalTime > 86400
                    ? Text("${time.days}d ${time.hours}h")
                    : (totalTime > 3600
                        ? Text("${time.hours}h ${time.minutes}m")
                        : Text("${time.minutes}m ${time.seconds}s"))),
          );
        });
  }
}
