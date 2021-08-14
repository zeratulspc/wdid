
import 'package:get/get.dart';

class EditorController extends GetxController {
  final _title = "".obs;
  set title(String t) => _title.value = t;
  String get title => _title.value;

  final _body = "".obs;
  set body(String b) => _body.value = b;
  String get body => _body.value;

  final _dateTime = DateTime.now().obs;
  set dateTime(DateTime t) => _dateTime.value = t;
  DateTime get dateTime => _dateTime.value;
}