import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/constant/routes/app_routes.dart';

abstract class CheckEmailController extends GetxController {
  checkemail();
  goToSuccessSignUp();
}

class CheckEmailControllerImp extends CheckEmailController { 
  late TextEditingController email; 

  @override
  checkemail() {}

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoute.verfiyCodeSignUp);
  }

  @override
  void onInit() { 
    email = TextEditingController(); 
    super.onInit();
  }

  @override
  void dispose() { 
    email.dispose(); 
    super.dispose();
  }
}