import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
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
     SignUpControllerImp controller = Get.put(SignUpControllerImp());
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
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          CustomTextTitleAuth(text: "10".tr),
          const SizedBox(height: 10),
          CustomTextBodyAuth(text: "24".tr),
          const SizedBox(height: 15),
          CustomTextFormAuth(
                myController: controller.username,
            hintText: "Enter Your Username",
            iconData: Icons.person_outline,
            labelText: "Username",
            // mycontroller: ,
          ),
          CustomTextFormAuth(
                 myController: controller.email,
            hintText: "Enter Your Email",
            iconData: Icons.email_outlined,
            labelText: "Email",
            // mycontroller: ,
          ),
          CustomTextFormAuth(
               myController: controller.phone,
            hintText: "Enter Your Phone",
            iconData: Icons.phone_android_outlined,
            labelText: "Phone",
            // mycontroller: ,
          ),
          CustomTextFormAuth(
              myController: controller.password,
            hintText: "Enter Your Password",
            iconData: Icons.lock_outline,
            labelText: "Password",
            // mycontroller: ,
          ),
          
          CustomButtomAuth(text: "Sign Up", onPressed: () {}),
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
    );
  }
}
