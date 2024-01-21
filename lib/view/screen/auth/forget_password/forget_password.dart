import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constant/color.dart';
import '../../../../logic/controller/auth/forget_password_controller/forget_password_controller.dart';
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
           CustomTextBodyAuth(
              text:"29".tr
                    )     ,
                         const SizedBox(height: 15),
          CustomTextFormAuth(
            isNumber: false,
                        valid: (val) {},
            myController: controller.email,
            hintText: "12".tr,
            iconData: Icons.email_outlined,
            labelText: "18".tr,
   
          ),
          CustomButtomAuth(
              text: "30".tr,
              onPressed: () {
                controller.goToVerifyCode();
              }),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}
