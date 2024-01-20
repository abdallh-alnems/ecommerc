import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/constant/color.dart';
import 'core/constant/routes/routes.dart';
import 'view/screen/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'ecommerc',
       theme: ThemeData(
        fontFamily: "PlayfairDisplay",
        textTheme:  const TextTheme(
            displayLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 20 , color: AppColor.black),
            bodyLarge: TextStyle(
                height: 2,
                color: AppColor.grey,
                fontWeight: FontWeight.bold,
                fontSize: 17)),
        primarySwatch: Colors.blue,
      ),
      home: OnBoarding(),
      routes: routes,
    );
  }
}

