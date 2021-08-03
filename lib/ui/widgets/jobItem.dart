import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../model/Job.dart';

class JobItem extends StatelessWidget {

  final Job job;

  JobItem(this.job,);

  String parseDate(DateTime d) {
    int h = d.hour<12?d.hour:d.hour-12;
    int m = d.minute;
    return "${h>=10?h:"0$h"}:${m>=10?m:"0$m"} ${d.hour<12?"AM":"PM"}";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xffffffff),
        boxShadow: [
          BoxShadow(
              blurRadius: 10,
              color: Color(0x1A000000)
          )
        ]
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: (){},
          borderRadius: BorderRadius.circular(12),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 16,horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        job.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w800
                        ),
                      ),
                    ),
                    Text(
                      parseDate(job.completeDate),
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        color: Color(0xB3000000)
                      ),
                    ),
                  ],
                ),
                job.thumbnail!=null?
                Container(
                  margin: EdgeInsets.only(top: 12),
                  height: 250,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: Get.theme.primaryColor,
                      borderRadius: BorderRadius.circular(16)
                  ),
                  child:Stack(
                    fit: StackFit.expand,
                    children: [
                      CachedNetworkImage(
                        imageUrl: job.thumbnail!,
                        imageBuilder: (context, imageProvider) => Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(16)
                          ),
                        ),
                        placeholder: (context, url) => SizedBox(),
                        errorWidget: (context, url, error) => SizedBox(),
                      ),
                      job.photos!.length>1?Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.symmetric(vertical: 4,horizontal: 8),
                          decoration: BoxDecoration(
                              color: Get.theme.primaryColor,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Text(
                            "+${job.photos!.length-1}",
                            style: TextStyle(
                                color: Get.theme.highlightColor
                            ),
                          ),
                        ),
                      ):SizedBox(),
                    ],
                  ),
                ):SizedBox(),
                job.body!=null?
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Text(
                    job.body!,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000)
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ):SizedBox(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}