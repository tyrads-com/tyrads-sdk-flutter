
import 'package:flutter/material.dart';

Color acmoGetFontColorForBackground(Color? background) {
  if(background == null) {
    return Colors.white;
  }
  return (background.computeLuminance() > 0.7) ? Colors.black : Colors.white;
}