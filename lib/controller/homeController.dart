
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:wdid/data/models/Job.dart';
import 'package:wdid/data/repository/repository.dart';

class HomeController extends GetxController {
  final Repository repo;
  final jobs = List.filled(
    0,
    Job(id: '', title: '', completeDate: DateTime.now(), uid: '',),
    growable: true
  ).obs;

  HomeController(this.repo);

  @override
  void onInit() async {
    jobs.value = await fetchJobs();
    super.onInit();
  }

  fetchJobs({String? targetUID}) async {
    if(targetUID!=null) {
      return await repo.fetchJobs(targetUID);
    } else {
      return await repo.fetchJobs(FirebaseAuth.instance.currentUser!.uid);
    }
  }

  addJob(Job job) async {
    await repo.addJob(job);
    refreshJobs();
  }

  deleteJob(String id) async {
    await repo.deleteJob(id);
    refreshJobs();
  }


  refreshJobs() async {
    jobs.value = await fetchJobs();
  }

}