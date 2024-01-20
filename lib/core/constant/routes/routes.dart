import 'package:flutter/material.dart';
import '../../../view/screen/auth/login.dart';
import '../../../view/screen/onboarding.dart';
import 'app_routes.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login : (context) => const Login(),
  AppRoute.onBoarding : (context) => const OnBoarding(),
};