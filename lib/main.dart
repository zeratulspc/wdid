import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'wdidTheme.dart';
import 'routes/appRoutes.dart';
import 'ui/splashPage.dart';


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
      initialRoute: '/',
      getPages: AppPages.pages
    );
  }

}
