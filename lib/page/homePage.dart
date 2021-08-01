import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wdid/model/Job.dart';
import 'package:wdid/page/widgets/jobItem.dart';

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
              SizedBox(height:MediaQuery.of(context).padding.top,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    onPressed: (){},
                    icon: Icon(Icons.reorder),
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    onPressed: (){},
                    icon: Icon(Icons.account_circle),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 24),
                child: Text(
                  "오늘은..",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                children: [
                  JobItem(
                    Job(
                      id:1,
                      userId: 1,
                      title:"테스트",
                      completeDate: DateTime.now(),
                      thumbnail: "https://media.discordapp.net/attachments/700221362937266289/713787988978696202/unknown.png?width=396&height=300",
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
                      userId: 1,
                      title:"테스트222",
                      completeDate: DateTime.now(),
                      body: "가낟ㅁㄴㅇㅁㄴ여ㅛㅎㅍㄴㅁ엻ㄴㅇㅁ로ㅓㅁㄴㅇㄹ오ㅓㅁㄴ어ㅗ "
                    ),
                  ),
                  JobItem(
                    Job(
                      id:1,
                      userId: 1,
                      title:"테스3333",
                      completeDate: DateTime.now(),
                      thumbnail: "https://media.discordapp.net/attachments/700221362937266289/799033194572677120/unknown.png?width=400&height=244",
                      photos: [
                        "https://media.discordapp.net/attachments/700221362937266289/799033194572677120/unknown.png?width=400&height=244",
                      ],
                    ),
                  ),
                  JobItem(
                    Job(
                      id:1,
                      userId: 1,
                      title:"테스트444444",
                      completeDate: DateTime.now(),
                    ),
                  ),
                  JobItem(
                    Job(
                      id:1,
                      userId: 1,
                      title:"테스3333",
                      completeDate: DateTime.now(),
                      thumbnail: "https://media.discordapp.net/attachments/700221362937266289/713787988978696202/unknown.png?width=396&height=300",
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