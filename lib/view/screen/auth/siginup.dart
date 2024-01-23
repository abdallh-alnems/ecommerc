import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';
import '../../../core/functions/alert_exit_app.dart';
import '../../../core/functions/vaild_input.dart';
import '../../../logic/controller/auth/siginup_controller.dart';
import '../../widget/auth/custom_button_auth.dart';
import '../../widget/auth/custom_text_body_auth.dart';
import '../../widget/auth/custom_text_form_auth.dart';
import '../../widget/auth/custom_text_title_auth.dart';
import '../../widget/auth/text_signup.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Sign Up',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        alertExitApp();
      },
      child: GetBuilder<SignUpControllerImp>(
        builder: (controller) => Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: Form(
            key: controller.formstate,
            child: ListView(children: [
              const SizedBox(height: 20),
              CustomTextTitleAuth(text: "10".tr),
              const SizedBox(height: 10),
              CustomTextBodyAuth(text: "24".tr),
              const SizedBox(height: 15),
              CustomTextFormAuth(
                isNumber: false,
                valid: (val) {
                  return validInput(val!, 3, 20, "username");
                },
                myController: controller.username,
                hintText: "23".tr,
                iconData: Icons.person_outline,
                labelText: "20".tr,
                // mycontroller: ,
              ),
              CustomTextFormAuth(
                isNumber: false,
                valid: (val) {
                  return validInput(val!, 3, 40, "email");
                },
                myController: controller.email,
                hintText: "12".tr,
                iconData: Icons.email_outlined,
                labelText: "18".tr,
              ),
              CustomTextFormAuth(
                isNumber: true,
                valid: (val) {
                  return validInput(val!, 7, 11, "phone");
                },
                myController: controller.phone,
                hintText: "22".tr,
                iconData: Icons.phone_android_outlined,
                labelText: "21".tr,
              ),
              CustomTextFormAuth(
                isNumber: false,

                valid: (val) {
                  return validInput(val!, 3, 30, "password");
                },
                myController: controller.password,
                hintText: "13".tr,
                iconData: Icons.lock_outline,
                labelText: "19".tr,
               
              ),
              CustomButtomAuth(
                  text: "17".tr,
                  onPressed: () {
                    controller.signUp();
                  }),
              const SizedBox(height: 40),
              CustomTextSignUpOrSignIn(
                textone: "25".tr,
                texttwo: "26".tr,
                onTap: () {
                  controller.goToSignIn();
                },
              ),
            ]),
          ),
        ),
      ) ,
    ),
    );
  }
}
