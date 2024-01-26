import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/class/handlingdataview.dart';
import '../../../../core/class/status_request.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/functions/vaild_input.dart';
import '../../../../logic/controller/auth/forget_password_controller/reset_password_controller.dart';
import '../../../widget/auth/custom_button_auth.dart';
import '../../../widget/auth/custom_text_body_auth.dart';
import '../../../widget/auth/custom_text_form_auth.dart';
import '../../../widget/auth/custom_text_title_auth.dart'; 

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('ResetPassword',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: GetBuilder<ResetPasswordControllerImp>(
          builder: (controller) => HandlingDataRequest(
              statusRequest: controller.statusRequest,
              widget: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: Form(
                    key: controller.formstate,
                    child: ListView(children: [
                      const SizedBox(height: 20),
                      CustomTextTitleAuth(text: "35".tr),
                      const SizedBox(height: 10),
                      CustomTextBodyAuth(text: "35".tr),
                      const SizedBox(height: 15),
                      CustomTextFormAuth(
                        isNumber: false,
                        valid: (val) {
                          return validInput(val!, 3, 40, "Repassword");
                        },
                        myController: controller.password,
                        hintText: "13".tr,
                        iconData: Icons.lock_outline,
                        labelText: "19".tr,
                        // mycontroller: ,
                      ),
                      CustomTextFormAuth(
                        isNumber: false,

                        valid: (val) {
                          return validInput(val!, 3, 40, "password");
                        },
                        myController: controller.repassword,
                        hintText: "Re" + " " + "13".tr,
                        iconData: Icons.lock_outline,
                        labelText: "19".tr,
                        // mycontroller: ,
                      ),
                      CustomButtomAuth(
                          text: "33".tr,
                          onPressed: () {
                            controller.goToSuccessResetPassword();
                          }),
                      const SizedBox(height: 40),
                    ]),
                  ),
              )
                )),
    );
  }
}