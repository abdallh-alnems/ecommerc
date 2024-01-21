import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../widget/auth/custom_button_auth.dart';
import '../../widget/auth/custom_text_body_auth.dart';
import '../../widget/auth/custom_text_form_auth.dart';
import '../../widget/auth/custom_text_title_auth.dart';
import '../../../logic/controller/auth/check_email_controller.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller =
        Get.put(CheckEmailControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('27'.tr,
            style: Theme.of(context)
                .textTheme
                .displayLarge  !
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
            CustomTextTitleAuth(text: "28".tr),
          const SizedBox(height: 10),
            CustomTextBodyAuth(
              text:
                  "29".tr),
          const SizedBox(height: 15),
          CustomTextFormAuth(
            myController: controller.email,
            hintText: "12".tr,
            iconData: Icons.email_outlined,
            labelText: "18".tr,
           
          ),
          CustomButtomAuth(text: "30".tr, onPressed: () {
            controller.goToSuccessSignUp() ; 
          }),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}


 