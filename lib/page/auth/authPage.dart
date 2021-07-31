import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthPage extends StatelessWidget {
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
          Expanded(
            flex: 2,
            child: Container(
              width: Get.width,
              padding: EdgeInsets.all(30),
              decoration:BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "What did i do?",
                          style: TextStyle(
                            color: Get.theme.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 24
                          ),
                        ),
                        Text(
                          "오늘 있었던 일을 공유해보세요!",
                          style: Get.textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Form(
                      child: Column(
                        children: [
                          TextFormField(

                          ),
                          TextFormField(

                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }

}