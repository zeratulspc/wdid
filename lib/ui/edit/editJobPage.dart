import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wdid/controller/homeController.dart';
import 'package:wdid/data/models/Job.dart';
import 'package:wdid/ui/widgets/wdidDialog.dart';

class EditJobPage extends GetView<HomeController> {
  final String? id = Get.parameters['id'];

  final TextEditingController titleController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();

  void saveJob() {
    String uid = FirebaseAuth.instance.currentUser!.uid;
    String title = titleController.text;
    String body = bodyController.text;
    if(title.length > 0) {
      controller.addJob(
        Job(
          uid: uid,
          title: title,
          body: body,
          completeDate: DateTime.now(),
          id: '',
        ),
      );
      Get.back();
    } else {
      Get.dialog(
        WdidDialog(
          title: "제목 미입력",
          body: "제목을 입력해주세요.",
          confirmButtonAction: (){},
        )
      );
    }
  }

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
                    onPressed:()=>saveJob(),
                    icon: Icon(Icons.check),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(),
                        child: TextField(
                          controller: titleController,
                          cursorColor: Theme.of(context).primaryColor,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                          ),
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          maxLength: 32,
                          decoration: InputDecoration(
                            hintText: "일정 추가",
                            border: InputBorder.none,
                            counterText: "",

                          ),
                        ),
                      )
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Text(
                      "지금",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: ConstrainedBox(
                  constraints: BoxConstraints(),
                  child: TextField(
                    controller: bodyController,
                    cursorColor: Theme.of(context).primaryColor,
                    style: TextStyle(
                        fontSize: 18
                    ),
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: "내용을 입력해주세요",
                      border: InputBorder.none,
                    ),
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }

}