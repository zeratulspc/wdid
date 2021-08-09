import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wdid/data/models/Job.dart';
import 'package:wdid/data/provider/jobAPI.dart';
import 'widgets/jobItem.dart';

class HomePage extends StatelessWidget {

  List<Widget> getJobItems(List<Job> _jobs) {
    return _jobs.length > 0 ?
      List.generate(_jobs.length, (i) =>JobItem(_jobs[i])) :
      [Center(
        child: Text("아직 추가한 일정이 없습니다.."),
      )];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => JobAPI().addJob(
          Job(
            id: "",
            uid: "pIV31qfm7Tc4NSDQf8upKJlDG4x2",
            title: "TITLE",
            completeDate: DateTime.now(),
          ),
        ),
        child: Icon(Icons.add),
      ),
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
                children: getJobItems([])
              ),
              SizedBox(height: 24,),

            ],
          ),
        ),
      ),
    );
  }

}