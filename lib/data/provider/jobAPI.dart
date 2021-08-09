import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wdid/data/models/Job.dart';

class JobAPI {
  static final jobDBRef = FirebaseFirestore.instance.collection("Jobs");

 Future<List<Job>> fetchJobs(String targetUID) async {
   return await jobDBRef.where('uid',isEqualTo: targetUID).get().then((v){
     return v.docs.map((e) => Job.fromJson(e.id, e.data())).toList();
   });
 }

 Future<void> addJob(Job job) async {
   await jobDBRef.add(job.toJson());
 }

}