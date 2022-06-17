import 'package:awesome_app/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

double screenWidth = Get.width;
double screenHeight = Get.height;

class TextStyles {
  static const TextStyle avenir =
      TextStyle(fontFamily: "Avenir", fontWeight: FontWeight.w400);
  static const TextStyle poppins =
      TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w400);

  static TextStyle get titleAvenir => avenir.copyWith(
      fontWeight: FontWeight.w700,
      fontSize: 22.sp,
      letterSpacing: -1,
      color: ColorConstants.primaryColor,
      height: 1.17);
  static TextStyle get titlePoppins => poppins.copyWith(
      fontWeight: FontWeight.w700,
      fontSize: 20.sp,
      letterSpacing: -1,
      color: ColorConstants.titleTextColorLight,
      );

  static TextStyle get subtitlePoppins => poppins.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
        color: ColorConstants.titleTextColorLight,
      );
  static TextStyle get text2xs => avenir.copyWith(fontSize: 10.sp);
}

class Insets {
  static double offsetScale = 1;
  static double get xs => 4.w;
  static double get sm => 8.w;
  static double get med => 12.w;
  static double get lg => 16.w;
  static double get xl => 20.w;
  static double get xxl => 32.w;
  // Offset, used for the edge of the window, or to separate large sections in the app
  static double get offset => 40 * offsetScale;
}

class Sizes {
  static double get xs => 8.w;
  static double get sm => 12.w;
  static double get med => 20.w;
  static double get lg => 32.w;
  static double get xl => 48.w;
  static double get xxl => 80.w;
}
