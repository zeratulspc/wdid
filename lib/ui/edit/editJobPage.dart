import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditJobPage extends StatelessWidget{
  final String? id = Get.parameters['id'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height:MediaQuery.of(context).padding.top,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    onPressed: ()=>Get.back(),
                    icon: Icon(Icons.arrow_back),
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    onPressed: (){},
                    icon: Icon(Icons.check),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("일정추가"),
                  TextButton(
                    onPressed: (){},
                    child: Text("지금"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}