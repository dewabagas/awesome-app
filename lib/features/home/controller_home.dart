import 'dart:math';

import 'package:awesome_app/features/home/tabs/tabs.dart';
import 'package:awesome_app/shared/shared.dart';
import 'package:get/get.dart';

class ControllerHome extends GetxController {

  var currentTab = MainTabs.home.obs;

  late TabHome mainTab;
  late TabProfile profileTab;

  @override
  void onInit() async {
    super.onInit();

    mainTab = TabHome();
    profileTab = TabProfile();
  }

  void switchTab(index) {
    var tab = _getCurrentTab(index);
    currentTab.value = tab;
  }

  int getCurrentIndex(MainTabs tab) {
    switch (tab) {
      case MainTabs.home:
        return 0;
      case MainTabs.profile:
        return 1;
      default:
        return 0;
    }
  }

  MainTabs _getCurrentTab(int index) {
    switch (index) {
      case 0:
        return MainTabs.home;
      case 1:
        return MainTabs.profile;
      default:
        return MainTabs.home;
    }
  }
}
