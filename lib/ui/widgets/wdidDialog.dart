import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WdidDialog extends StatelessWidget {
  final String title;
  final String body;
  late final VoidCallback? confirmButtonAction;

  WdidDialog({
    required this.title,
    required this.body,
    this.confirmButtonAction,
  }) {
    if(confirmButtonAction==null){
      confirmButtonAction = (){};
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(body),
      actions: [
        TextButton(
          child: Text("확인"),
          onPressed: (){
            confirmButtonAction!();
            Get.back();
          },
        ),
      ]
    );
  }

}