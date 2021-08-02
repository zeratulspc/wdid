import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wdid/page/auth/loginWidget.dart';
import 'package:wdid/page/auth/registerWidget.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  bool isLogin = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.primaryColor,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                child: Text(
                  "WDID",
                  style: TextStyle(
                    color: Get.theme.highlightColor,
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            width: Get.width,
            padding: EdgeInsets.all(30),
            decoration:BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))
            ),
            child: isLogin ? LoginWidget(()=>setState(()=>isLogin=false)) : RegisterWidget(()=>setState(()=>isLogin=true)),
          ),
        ],
      )
    );
  }
}