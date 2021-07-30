import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wdid/page/homePage.dart';

class SplashPage extends StatefulWidget {

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Timer(Duration(seconds: 2), (){
      Get.offAll(()=>HomePage());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.primaryColor,
      body: Center(
        child: Text(
          "What did i do?",
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