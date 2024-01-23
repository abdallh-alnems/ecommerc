import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/routes/route.dart';
import '../services/services.dart';

class MyMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;

  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.getStorage.read("step") == "2") {
      return const RouteSettings(name: AppRoute.homepage);
    }
    if (myServices.getStorage.read("step") == "1") {
      return const RouteSettings(name: AppRoute.login);
    }

    return null;
  }
}
