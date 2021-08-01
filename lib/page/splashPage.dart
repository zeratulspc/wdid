import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'auth/authPage.dart';
import 'homePage.dart';

class SplashPage extends StatefulWidget {

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Timer(Duration(seconds: 2), (){
      Get.offAll(()=>AuthPage());
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