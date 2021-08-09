import 'package:wdid/data/provider/authAPI.dart';
import 'package:wdid/data/provider/jobAPI.dart';

class Repository {
  final AuthAPI authAPI = AuthAPI();
  final JobAPI jobAPI = JobAPI();

  fetchUser(String targetUID) {
    return authAPI.getUser(targetUID);
  }

  fetchJobs(String targetUID) {
    return jobAPI.fetchJobs(targetUID);
  }

}