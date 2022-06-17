import 'package:awesome_app/features/home/controller_home.dart';
import 'package:get/get.dart';

class BindingHome implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ControllerHome>(() => ControllerHome());
  }
}
