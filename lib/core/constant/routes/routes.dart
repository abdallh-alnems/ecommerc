import 'package:flutter/material.dart';
import '../../../view/screen/auth/check_email.dart';
import '../../../view/screen/auth/forget_password/forget_password.dart';
import '../../../view/screen/auth/forget_password/reset_password.dart';
import '../../../view/screen/auth/forget_password/success_resetpassword.dart';
import '../../../view/screen/auth/forget_password/verifycode.dart';
import '../../../view/screen/auth/login.dart';
import '../../../view/screen/auth/siginup.dart';
import '../../../view/screen/auth/success_signup.dart';
import '../../../view/screen/auth/verify_code_signup.dart';
import '../../../view/screen/onboarding.dart';
import 'app_routes.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // auth
  AppRoute.login : (context) => const Login(),
  AppRoute.signUp: (context) => const SignUp() , 
  AppRoute.forgetPassword: (context) => const ForgetPassword(),
  AppRoute.successResetpassword: (context) => const SuccessResetPassword(),
  AppRoute.successSignUp: (context) => const SuccessSignUp(),
  AppRoute.checkemail: (context) => const CheckEmail(),
  // onBoarding
  AppRoute.onBoarding : (context) => const OnBoarding(),
   AppRoute.verifyCode: (context) => const VerifyCode(),
  AppRoute.resetPassword: (context) => const ResetPassword(),
    AppRoute.verfiyCodeSignUp: (context) => const VerfiyCodeSignUp(),
};