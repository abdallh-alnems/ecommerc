import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

import '../../core/constant/routes/route.dart';
import '../../core/services/services.dart';

class SettingsController extends GetxController {
  MyServices myServices = Get.find();

  logout() {
    String userid = myServices.getStorage.read("id")!.toString();
    FirebaseMessaging.instance.unsubscribeFromTopic("users");
    FirebaseMessaging.instance.unsubscribeFromTopic("users${userid}");
    myServices.getStorage.erase();
    Get.offAllNamed(AppRoute.login);
  }
}
