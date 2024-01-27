import 'package:get/get.dart';

import '../services/services.dart';

translateDatabase(columnar, columnen) {
  MyServices myServices = Get.find();

  if (myServices.getStorage.read("lang") == "ar") {
    return columnar;
  } else {
    return columnen;
  }
}