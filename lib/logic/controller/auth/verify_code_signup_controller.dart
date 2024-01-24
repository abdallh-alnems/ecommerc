import 'package:get/get.dart';

import '../../../core/class/status_request.dart';
import '../../../core/constant/routes/route.dart';
import '../../../core/functions/handingdatacontroller.dart';
import '../../../data/data_source/remote/auth/verfiycodesignup.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp(String verfiyCodeSignUp);
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  VerfiyCodeSignUpData verfiyCodeSignUpData = VerfiyCodeSignUpData(Get.find());
 

 String? email;

  StatusRequest statusRequest = StatusRequest.none ;

  @override
  checkCode() {}

  @override
  goToSuccessSignUp( String verfiyCodeSignUp) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verfiyCodeSignUpData.postdata(email!, verfiyCodeSignUp); 
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") { 
        Get.offNamed(AppRoute.successSignUp);
      } else {
        Get.defaultDialog(
            title: "ُWarning",
            middleText: "Verify Code Not Correct");
        statusRequest = StatusRequest.failure;
      }
    }
     Get.offNamed(AppRoute.successSignUp);
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
   }

  //  reSend(){
  //     verfiyCodeSignUpData.resendData(email!); 
  //  }
 
}
