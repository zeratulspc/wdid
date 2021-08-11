import 'package:wdid/data/provider/authAPI.dart';
import 'package:wdid/data/provider/jobAPI.dart';

import 'package:wdid/data/models/Job.dart';

class Repository {
  final AuthAPI authAPI = AuthAPI();
  final JobAPI jobAPI = JobAPI();

  fetchUser(String targetUID) async {
    return await authAPI.getUser(targetUID);
  }

  fetchJobs(String targetUID) async {
    return await jobAPI.fetchJobs(targetUID);
  }

  addJob(Job job) async {
    await jobAPI.addJob(job);
  }

  deleteJob(String id) async {
    await jobAPI.deleteJob(id);
  }

}