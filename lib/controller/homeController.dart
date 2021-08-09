
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:wdid/data/models/Job.dart';
import 'package:wdid/data/repository/repository.dart';

class HomeController extends GetxController {
  final Repository repo;
  final jobs = [].obs;

  HomeController(this.repo);

  fetchJobs({String? targetUID}) async {
    if(targetUID!=null) {
      return await repo.fetchJobs(targetUID);
    } else {
      return await repo.fetchJobs(FirebaseAuth.instance.currentUser!.uid);
    }
  }

}