import 'package:awesome_app/features/home/binding_home.dart';
import 'package:awesome_app/features/home/page_home.dart';
import 'package:awesome_app/features/splash/page_splash_screen.dart';
import 'package:get/route_manager.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(name: Routes.SPLASH, page: () => PageSplashScreen()),
    GetPage(
      name: Routes.PAGE_HOME,
      page: () => PageHome(),
      binding: BindingHome()
    ),
  ];
}
