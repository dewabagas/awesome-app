import 'package:awesome_app/features/splash/page_splash_screen.dart';
import 'package:get/route_manager.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(name: Routes.SPLASH, page: () => PageSplashScreen()),
  ];
}
