
import 'package:get/get.dart';
import 'package:wdid/data/models/Job.dart';
import 'package:wdid/data/repository/repository.dart';

class EditorController extends GetxController {
  final Repository repo;

  EditorController(this.repo);

  final _title = "".obs;
  set title(String t) => _title.value = t;
  String get title => _title.value;

  final _body = "".obs;
  set body(String b) => _body.value = b;
  String get body => _body.value;

  final _dateTime = DateTime.now().obs;
  set dateTime(DateTime t) => _dateTime.value = t;
  DateTime get dateTime => _dateTime.value;

  addJob(String uid) async {
    await repo.addJob(
      Job(
        id: '',
        uid: uid,
        title: title,
        body: body,
        completeDate: dateTime
      )
    );
  }

}