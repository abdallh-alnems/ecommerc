import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../core/class/status_request.dart';
import '../../../core/constant/routes/route.dart';
import '../../../core/functions/handingdatacontroller.dart';
import '../../../core/services/services.dart';
import '../../../data/data_source/remote/auth/login.dart';


abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
   
  LoginData loginData  = LoginData(Get.find()) ; 

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;

  bool isshowpassword = true;

  StatusRequest? statusRequest ; 

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  login() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading; 
      update() ; 
      var response = await loginData.postdata(email.text , password.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoute.homepage);
        } else {
          Get.defaultDialog(title: "ُWarning" , middleText: "Email Or Password Not Correct"); 
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {
      
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}