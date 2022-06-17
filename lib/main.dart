import 'package:awesome_app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';
import 'package:awesome_app/shared/utils/message_utils.dart';
import 'package:awesome_app/themes/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          getPages: AppPages.routes,
          initialRoute: Routes.SPLASH,
          defaultTransition: Transition.cupertino,
          smartManagement: SmartManagement.keepFactory,
          title: 'Bibit Analog Alarm',
          theme: Themes().lightTheme,
          builder: (BuildContext context, Widget? child) {
            ScreenUtil.init(context);
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    dismisKeyboard();
                  },
                  child: child),
            );
          },
        );
      },
    );
  }
}
