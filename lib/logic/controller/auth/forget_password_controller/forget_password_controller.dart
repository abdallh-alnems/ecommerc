import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../core/constant/routes/app_routes.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();
  goToVerifyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController { 
  late TextEditingController email; 

  @override
  checkEmail() {}

  @override
  goToVerifyCode() {
    Get.offNamed(AppRoute.verifyCode);
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