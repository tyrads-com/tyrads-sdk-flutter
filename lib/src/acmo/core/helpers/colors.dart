
import 'package:flutter/material.dart';

Color acmoGetFontColorForBackground(Color? background) {
  if(background == null) {
    return Colors.white;
  }
  return (background.computeLuminance() > 0.7) ? Colors.black : Colors.white;
}


Color acmoGetDarkerShade(Color color, {double factor = 0.66}) {
  int darkenedRed = (color.red * factor).toInt().clamp(0, 255);
  int darkenedGreen = (color.green * factor).toInt().clamp(0, 255);
  int darkenedBlue = (color.blue * factor).toInt().clamp(0, 255);

  return Color.fromRGBO(darkenedRed, darkenedGreen, darkenedBlue, 1.0);
}
