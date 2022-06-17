import 'dart:async';

import 'package:awesome_app/routes/app_pages.dart';
import 'package:awesome_app/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageSplashScreen extends StatefulWidget {
  static String tag = '/PageSplashScreen';

  @override
  PageSplashScreenState createState() => PageSplashScreenState();
}

class PageSplashScreenState extends State<PageSplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controllerAnimation;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    _controllerAnimation = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this, value: 0.1);

    _animation = CurvedAnimation(
        parent: _controllerAnimation, curve: Curves.bounceInOut);

    _controllerAnimation.forward();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  dispose() {
    _controllerAnimation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () async {
      Get.offAllNamed(Routes.PAGE_HOME);
    });
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
            scale: _animation,
            alignment: Alignment.center,
            child: Image.asset(Assets.iconPexels, width: 280.w, height: 280.h),
          ),
          SizedBox(height: 10.h),
          Text(
            'Awesome App',
            style: TextStyles.titlePoppins,
          ),
        ],
      ),
    );
  }
}
