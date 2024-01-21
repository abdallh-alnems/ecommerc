import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constant/color.dart';
import '../../../../logic/controller/auth/forget_password_controller.dart';
import '../../../widget/auth/custom_button_auth.dart';
import '../../../widget/auth/custom_text_body_auth.dart';
import '../../../widget/auth/custom_text_form_auth.dart';
import '../../../widget/auth/custom_text_title_auth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('14'.tr,
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          const CustomTextTitleAuth(text: "Check Email"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text:
                  "Sign Up With Your Email And Password OR Continue With Social Media"),
          const SizedBox(height: 15),
          CustomTextFormAuth(
            myController: controller.email,
            hintText: "Enter Your Email",
            iconData: Icons.email_outlined,
            labelText: "Email",
   
          ),
          CustomButtomAuth(
              text: "Check",
              onPressed: () {
                controller.goToVerifyCode();
              }),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}
