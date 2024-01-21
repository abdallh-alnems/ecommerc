import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/color.dart';
import '../../../../logic/controller/auth/reset_password_controller.dart';
import '../../../widget/auth/custom_button_auth.dart';
import '../../../widget/auth/custom_text_body_auth.dart';
import '../../../widget/auth/custom_text_form_auth.dart';
import '../../../widget/auth/custom_text_title_auth.dart'; 

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
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
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          CustomTextTitleAuth(text: "35".tr),
          const SizedBox(height: 10),
         CustomTextBodyAuth(text: "35".tr),
          const SizedBox(height: 15),
            CustomTextFormAuth(
            myController: controller.password,
            hintText: "Enter Your Password",
            iconData: Icons.lock_outline,
            labelText: "Password",
            // mycontroller: ,
          ),   CustomTextFormAuth(
            myController: controller.password,
            hintText: "Re Enter Your Password",
            iconData: Icons.lock_outline,
            labelText: "Password",
            
          ),
          CustomButtomAuth(text: "33".tr, onPressed: () {
             controller.goToSuccessResetPassword();
          }),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}