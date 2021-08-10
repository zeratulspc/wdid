import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wdid/controller/homeController.dart';
import 'package:wdid/data/models/Job.dart';
import 'package:wdid/data/provider/jobAPI.dart';
import 'widgets/jobItem.dart';

class HomePage extends GetView<HomeController> {

  List<Widget> getTodayJobItems(List<Job> _jobs) {
    var jobsWidget = _jobs.map((e)=>e.isToday()?JobItem(e):null)
        .where((e)=>e!=null)
        .cast<JobItem>()
        .toList();
    var onNull = [Center(
      child: Text("아직 추가한 일정이 없습니다.."),
    )];


    return _jobs.length > 0 ?
        jobsWidget.length>0 ? jobsWidget : onNull
        : onNull;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed('/add'),
        child: Icon(Icons.add),
      ),
      body: RefreshIndicator(
        color: Get.theme.primaryColor,
        onRefresh: () async {
          print("refresh");
          await controller.refreshJobs();
        },
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: GetX<HomeController>(
            builder: (_){
              return Container(
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
                        children: getTodayJobItems(_.jobs)
                    ),
                    SizedBox(height: 24,),
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }

}