
import 'package:get/get.dart';
import 'package:wdid/binding/homeBinding.dart';
import 'package:wdid/ui/auth/authPage.dart';
import 'package:wdid/ui/edit/editJobPage.dart';
import 'package:wdid/ui/homePage.dart';
import 'package:wdid/ui/splashPage.dart';

abstract class Routes {
  static const INITIAL = '/';
  static const SPLASH = '/splash';
  static const AUTH = '/auth';
  static const HOME = '/home';
  static const ADD = '/add';
  static const EDIT = '/edit:id';
}

class AppPages {
  static final pages = [
    GetPage(name: Routes.SPLASH, page: () => SplashPage()),
    GetPage(name: Routes.AUTH, page: () => AuthPage()),
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding()),
    GetPage(name: Routes.ADD, page: () => EditJobPage()),
    GetPage(name: Routes.EDIT, page: ()=>EditJobPage()),
  ];
}