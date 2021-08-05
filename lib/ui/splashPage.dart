import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wdid/routes/appRoutes.dart';

import 'auth/authPage.dart';
import 'homePage.dart';

class SplashPage extends StatefulWidget {

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Firebase.initializeApp().then((v) {
      return Get.offAllNamed(Routes.AUTH);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.primaryColor,
      body: Center(
        child: Text(
          "WDID",
          style:TextStyle(
            color: Get.theme.highlightColor,
            fontSize: 32,
            fontWeight: FontWeight.w900
          ),
        ),
      ),
    );
  }
}