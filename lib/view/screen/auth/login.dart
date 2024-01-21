import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';
import '../../../logic/controller/auth/login_controller.dart';
import '../../widget/auth/custom_button_auth.dart';
import '../../widget/auth/custom_text_body_auth.dart';
import '../../widget/auth/custom_text_form_auth.dart';
import '../../widget/auth/custom_text_title_auth.dart';
import '../../widget/auth/logo_auth.dart';
import '../../widget/auth/text_signup.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Sign In',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const LogoAuth(),
          const SizedBox(height: 20),
         CustomTextTitleAuth(text: "10".tr),
          const SizedBox(height: 10),
         CustomTextBodyAuth(text: "11".tr),
          const SizedBox(height: 15),
           CustomTextFormAuth(
              myController: controller.email,
            hintText: "Enter Your Email",
            iconData: Icons.email_outlined,
            labelText: "Email",
            // mycontroller: ,
          ),
           CustomTextFormAuth(
            myController: controller.password,
            hintText: "Enter Your Password",
            iconData: Icons.lock_outline,
            labelText: "Password",
            // mycontroller: ,
          ),
          const Text(
            "Forget Password",
            textAlign: TextAlign.end,
          ),
          CustomButtomAuth(
              text: "15".tr,
              onPressed: () {
                controller.login();
              }),
          SizedBox(height: 30),
          CustomTextSignUpOrSignIn(
            textone: "16".tr,
            texttwo: "17".tr,
            onTap: () {
              controller.goToSignUp();
            },
          )
        ]),
      ),
    );
  }
}
