import 'package:get/get.dart';

import '../../core/services/services.dart';

class HomeController extends GetxController {}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();

  String? username;
  int? id;

  initialData() {

    username = myServices.getStorage.read("username") ; 
    id = myServices.getStorage.read("id") ; 
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}