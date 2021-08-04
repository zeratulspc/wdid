import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'wdidTheme.dart';
import 'ui/splashPage.dart';
import 'ui/auth/authPage.dart';
import 'ui/homePage.dart';


void main() {
  runApp(WDID());
}

class WDID extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'What did i do',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: WdidTheme.wdidP,
        highlightColor: WdidTheme.wdidA,
      ),
      home: SplashPage(),
      smartManagement: SmartManagement.keepFactory,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/splash',
          page: () => SplashPage(),
        ),
        GetPage(
          name: '/auth',
          page: () => AuthPage(),
        ),
        GetPage(
          name: '/home',
          page: () => HomePage(),
        ),
      ],
    );
  }

}
