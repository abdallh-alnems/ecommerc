import 'package:flutter/material.dart';
import '../../../core/constant/color.dart';
import '../../widget/auth/custom_button_auth.dart';
import '../../widget/auth/custom_text_body_auth.dart';
import '../../widget/auth/custom_text_form_auth.dart';
import '../../widget/auth/custom_text_title_auth.dart';
import '../../widget/auth/logo_auth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
           const SizedBox(height: 20) , 
           const CustomTextTitleAuth(text: "Welcome Back"),
           const SizedBox(height: 10),
           const CustomTextBodyAuth(
              text:
                  "Sign In With Your Email And Password OR Continue With Social Media"),
          const SizedBox(height: 15),
          const CustomTextFormAuth(
            hintText: "Enter Your Email",
            iconData: Icons.email_outlined,
            labelText: "Email",
            // mycontroller: ,
          ),
          const CustomTextFormAuth(
            hintText: "Enter Your Password",
            iconData: Icons.lock_outline,
            labelText: "Password",
            // mycontroller: ,
          ),
          const Text(
            "Forget Password",
            textAlign: TextAlign.end,
          ),
           CustomButtomAuth(text: "Sign In", onPressed: () {}),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account ? "),
              InkWell(
                child: Text("Sign Up",
                    style: TextStyle(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.bold)),
              )
            ],
          )
        ]),
      ),
    );
  }
}