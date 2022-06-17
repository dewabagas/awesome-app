import 'dart:async';
import 'dart:math';

import 'package:awesome_app/features/home/controller_home.dart';
import 'package:awesome_app/features/home/tabs/tabs.dart';
import 'package:awesome_app/routes/routes.dart';
import 'package:awesome_app/shared/constants/constants.dart';
import 'package:awesome_app/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  final _homeController = Get.find<ControllerHome>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Obx(() => _buildWidget()),
    );
  }

  Widget _buildWidget() {
    return Scaffold(
        body: Center(
          child: _buildContent(_homeController.currentTab.value),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: ColorConstants.primaryColor,
            child: Icon(Icons.alarm, color: Colors.white),
            onPressed: () {}),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          clipBehavior: Clip.hardEdge,
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _itemMenu(
                    onTap: () {
                      _homeController.switchTab(0);
                    },
                    label: "Home",
                    icon: Svgs.iconHome,
                    iconActive: Svgs.iconHomeFill,
                    isSelected:
                        MainTabs.home == _homeController.currentTab.value),
                _itemMenu(
                    onTap: () {
                      _homeController.switchTab(1);
                    },
                    label: "Profile",
                    icon: Svgs.iconUser,
                    iconActive: Svgs.iconUserFill,
                    isSelected:
                        MainTabs.profile == _homeController.currentTab.value)
              ],
            ),
          ),
        ));
  }

  Widget _buildContent(MainTabs tab) {
    switch (tab) {
      case MainTabs.home:
        return _homeController.mainTab;
      case MainTabs.profile:
        return _homeController.profileTab;
      default:
        return _homeController.mainTab;
    }
  }

  Widget _itemMenu(
      {required Function() onTap,
      required String label,
      required bool isSelected,
      required String icon,
      required String iconActive}) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              margin: EdgeInsets.only(bottom: Insets.sm),
              child: SvgPicture.asset(
                isSelected ? iconActive : icon,
                color: isSelected
                    ? ColorConstants.primaryColor
                    : ColorConstants.primaryColor.withOpacity(0.5),
              )),
          Text(
            label,
            style: TextStyles.text2xs.copyWith(
              color: isSelected
                  ? ColorConstants.primaryColor
                  : ColorConstants.primaryColor.withOpacity(0.5),
            ),
          )
        ],
      ),
    );
  }
}
