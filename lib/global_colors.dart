import 'package:flutter/material.dart';

class GlobalColors {
  static const Color bgColor = Color(0xfff1f3f5);
  static const Color debtColor = Color(0xff9f1e1e);
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
