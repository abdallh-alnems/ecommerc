import 'package:flutter/material.dart';
import '../../../view/screen/auth/forget_password.dart';
import '../../../view/screen/auth/login.dart';
import '../../../view/screen/auth/siginup.dart';
import '../../../view/screen/onboarding.dart';
import 'app_routes.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // auth
  AppRoute.login : (context) => const Login(),
  AppRoute.signUp: (context) => const SignUp() , 
  AppRoute.forgetPassword: (context) => const ForgetPassword(),

  // onBoarding
  AppRoute.onBoarding : (context) => const OnBoarding(),
  // AppRoute.verfiyCode: (context) => const VerfiyCode(),
  // AppRoute.resetPassword: (context) => const ResetPassword(),
};