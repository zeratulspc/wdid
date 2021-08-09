
import 'package:get/get.dart';
import 'package:wdid/ui/auth/authPage.dart';
import 'package:wdid/ui/homePage.dart';
import 'package:wdid/ui/splashPage.dart';

abstract class Routes {
  static const INITIAL = '/';
  static const SPLASH = '/splash';
  static const AUTH = '/auth';
  static const HOME = '/home';
}

class AppPages {
  static final pages = [
    GetPage(name: Routes.SPLASH, page: () => SplashPage()),
    GetPage(name: Routes.AUTH, page: () => AuthPage()),
    GetPage(name: Routes.HOME, page: () => HomePage()),
  ];
}