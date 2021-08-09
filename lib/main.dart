import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wdid/binding/homeBinding.dart';
import 'wdidTheme.dart';
import 'routes/appRoutes.dart';
import 'ui/splashPage.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      initialRoute: Routes.INITIAL,
      getPages: AppPages.pages
    );
  }

}
