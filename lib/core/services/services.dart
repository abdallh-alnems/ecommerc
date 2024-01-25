import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../constant/firebase_options.dart';

class MyServices extends GetxService {
  late GetStorage getStorage;

  Future<MyServices> init() async {
   await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform
);

    await GetStorage.init();
    getStorage = GetStorage();

    return this;
  }
}

initialServices() async {
  await Get.putAsync(() => MyServices().init());
}
