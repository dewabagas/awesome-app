import 'package:flutter/material.dart';

AppBarTheme appBarTheme = AppBarTheme(color: Colors.transparent, elevation: 0);
class ColorConstants {
  static Color primaryColor = hexToColor("#1572A1");
  static Color secondaryColor = hexToColor("#B983FF");

  static Color secondaryLightColor = hexToColor("#E4E9F2");
  static Color secondaryDarkColor = hexToColor("#404040");

  static Color accentLightColor = hexToColor("#B3BFD7");
  static Color accentDarkColor = hexToColor("#4E4E4E");

  static Color backgroundDarkColor = hexToColor("#3A3A3A");
  static Color surfaceDarkColor = hexToColor("#222225");

  static Color accentIconLightColor = hexToColor("#ECEFF5");
  static Color accentIconDarkColor = hexToColor("#303030");
  static Color primaryIconLightColor = hexToColor("#ECEFF5");
  static Color primaryIconDarkColor = hexToColor("#232323");

  static Color bodyTextColorLight = hexToColor("#A1B0CA");
  static Color bodyTextColorDark = hexToColor("#7C7C7C");
  static Color titleTextColorLight = hexToColor("#101112");
  static Color titleTextColorDark = hexToColor("#FFFFFF");

  static Color shadowColor = hexToColor("#364564");
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}

