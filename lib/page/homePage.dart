import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:15,),
            IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              onPressed: (){},
              icon: Icon(Icons.reorder),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "오늘은..",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Get.theme.primaryColor,
                      shape: BoxShape.circle
                    ),
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.add,
                        color: Get.theme.highlightColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24,),
            Column(
              children: [

              ],
            ),
            SizedBox(height: 24,),

          ],
        ),
      ),
    );
  }

}