import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wdid/model/Job.dart';
import 'package:wdid/page/jobItem.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
              Column(
                children: [
                  JobItem(
                    Job(
                      id:1,
                      title:"테스트",
                      completeDate: DateTime.now(),
                      photos: [
                        "https://media.discordapp.net/attachments/700221362937266289/827558753293172746/unknown.png?width=668&height=676",
                        "https://media.discordapp.net/attachments/700221362937266289/799033194572677120/unknown.png?width=400&height=244",
                        "https://media.discordapp.net/attachments/700221362937266289/713787988978696202/unknown.png?width=396&height=300"
                      ],
                      body: "가낟ㅁㄴㅇㅁㄴ여ㅛㅎㅍㄴㅁ엻ㄴㅇㅁ로ㅓㅁㄴㅇㄹ오ㅓㅁㄴ어ㅗ "
                    ),
                  ),
                  JobItem(
                    Job(
                      id:1,
                      title:"테스트222",
                      completeDate: DateTime.now(),
                      body: "가낟ㅁㄴㅇㅁㄴ여ㅛㅎㅍㄴㅁ엻ㄴㅇㅁ로ㅓㅁㄴㅇㄹ오ㅓㅁㄴ어ㅗ "
                    ),
                  ),
                  JobItem(
                    Job(
                      id:1,
                      title:"테스3333",
                      completeDate: DateTime.now(),
                      photos: [
                        "https://media.discordapp.net/attachments/700221362937266289/799033194572677120/unknown.png?width=400&height=244",
                      ],
                    ),
                  ),
                  JobItem(
                    Job(
                      id:1,
                      title:"테스트444444",
                      completeDate: DateTime.now(),
                    ),
                  ),
                  JobItem(
                    Job(
                      id:1,
                      title:"테스3333",
                      completeDate: DateTime.now(),
                      photos: [
                        "https://media.discordapp.net/attachments/700221362937266289/713787988978696202/unknown.png?width=396&height=300"
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24,),

            ],
          ),
        ),
      )
    );
  }

}