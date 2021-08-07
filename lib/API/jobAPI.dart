import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wdid/model/Job.dart';

class JobAPI {
  static final jobDBRef = FirebaseFirestore.instance.collection("Jobs");

 Future<List<Job>> fetchJobs(String targetUid) async {
   return await jobDBRef.doc(targetUid).get().then((d){
     Map<String, dynamic>? data = d.data();
     if(data!=null) {
       List<Job> j = [];
       data.forEach((key, value) { 
         j.add(Job.fromJson(key,value));
       });
       return j;
     } else {
       return [];
     }
   });
 }


}