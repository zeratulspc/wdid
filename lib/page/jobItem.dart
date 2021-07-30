
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wdid/model/Job.dart';

class JobItem extends StatelessWidget {

  final Job job;
  final VoidCallback? onTap;

  JobItem(this.job,{this.onTap});

  String parseDate(DateTime d) {
    int h = d.hour;
    int m = d.minute;
    return "${h>=10?h:"0$h"}:${m>=10?m:"0$m"} ${h<12?"AM":"PM"}";
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  job.title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800
                  ),
                ),
                Text(
                  parseDate(job.completeDate),
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            (job.photos!=null)&&(job.photos!.length!=0)?
            Container(
              margin: EdgeInsets.only(top: 8),
              height: 250,
              width: Get.width,
              decoration: BoxDecoration(
                color: Get.theme.primaryColor
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CachedNetworkImage(
                    imageUrl: job.photos!.first,
                    fit: BoxFit.fill,
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
              margin: EdgeInsets.only(top: 8),
              child: Text(
                job.body!,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000)
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ):SizedBox()
          ],
        ),
      ),
    );
  }
}