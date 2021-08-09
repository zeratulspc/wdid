
import 'package:get/get.dart';
import 'package:wdid/controller/homeController.dart';
import 'package:wdid/data/repository/repository.dart';

class HomeBinding extends Bindings {
  final Repository repo = Repository();

  @override
  void dependencies() {
    Get.put(HomeController(repo));
  }
}