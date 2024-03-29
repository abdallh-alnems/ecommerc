import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import '../constant/app_theme.dart';
import '../functions/fcmconfig.dart';
import '../services/services.dart';

class LocaleController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

   ThemeData appTheme = themeEnglish;

  changeLang(String codeLang) {
    Locale locale = Locale(codeLang);
    myServices.getStorage.write("lang", codeLang);
     appTheme = codeLang == "ar" ? themeArabic : themeEnglish;
     Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  requestPerLocation() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Get.snackbar("تنبيه", "الرجاء تشغيل خدمو تحديد الموقع");
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Get.snackbar("تنبيه", "الرجاء اعطاء صلاحية الموقع للتطبيق");
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Get.snackbar("تنبيه", "لا يمكن استعمال التطبيق من دون اللوكيشين");
    }
  }

  @override
  void onInit() {
     requestPermissionNotification() ;
     fcmconfig();
     requestPerLocation();
    String? getStorageLang = myServices.getStorage.read('lang');
    if (getStorageLang == "ar") {
      language = const Locale("ar");
       appTheme = themeArabic;
    } else if (getStorageLang == "en") {
      language = const Locale("en");
      appTheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
       appTheme = themeEnglish;
    }
    super.onInit();
  }
}
