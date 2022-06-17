import 'package:awesome_app/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    appBarTheme: appBarTheme,
    primaryColor: ColorConstants.primaryColor,
    secondaryHeaderColor: ColorConstants.secondaryColor,
    accentColor: ColorConstants.accentLightColor,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(
      secondary: ColorConstants.secondaryColor,
      // on light theme surface = Colors.white by default
    ),
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: ColorConstants.bodyTextColorLight),
    accentIconTheme: IconThemeData(color: ColorConstants.accentIconLightColor),
    primaryIconTheme: IconThemeData(color: ColorConstants.primaryIconLightColor),
    textTheme: GoogleFonts.latoTextTheme().copyWith(
      bodyText1: TextStyle(color: ColorConstants.bodyTextColorLight),
      bodyText2: TextStyle(color: ColorConstants.bodyTextColorLight),
      headline4: TextStyle(color: ColorConstants.titleTextColorLight, fontSize: 32),
      headline1: TextStyle(color: ColorConstants.titleTextColorLight, fontSize: 80),
      headline2: TextStyle(color: ColorConstants.titleTextColorDark, fontSize: 80),
    ),
    brightness: Brightness.light,
  );
  final darkTheme = ThemeData.dark().copyWith(
    primaryColor: ColorConstants.primaryColor,
    secondaryHeaderColor: ColorConstants.secondaryColor,
    accentColor: ColorConstants.accentLightColor,
    scaffoldBackgroundColor: Color(0xFF0D0C0E),
    appBarTheme: appBarTheme,
    colorScheme: ColorScheme.light(
      secondary: ColorConstants.secondaryDarkColor,
      surface: ColorConstants.surfaceDarkColor,
    ),
    backgroundColor: ColorConstants.backgroundDarkColor,
    iconTheme: IconThemeData(color: ColorConstants.bodyTextColorDark),
    accentIconTheme: IconThemeData(color: ColorConstants.accentDarkColor),
    primaryIconTheme: IconThemeData(color: ColorConstants.primaryIconDarkColor),
    textTheme: GoogleFonts.latoTextTheme().copyWith(
      bodyText1: TextStyle(color: ColorConstants.bodyTextColorDark),
      bodyText2: TextStyle(color: ColorConstants.bodyTextColorDark),
      headline4: TextStyle(color: ColorConstants.titleTextColorDark, fontSize: 32),
      headline1: TextStyle(color: ColorConstants.titleTextColorDark, fontSize: 80),
      headline2: TextStyle(color: ColorConstants.titleTextColorDark, fontSize: 80),
    ),
    brightness: Brightness.dark,
  );
}
