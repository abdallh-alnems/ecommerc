import 'package:ecommerc/core/constant/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/constant/color.dart';
import '../../core/functions/alert_exit_app.dart';
import '../../logic/controller/homescreen_controller.dart';
import '../widget/home/custombottomappbarhome.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(
              floatingActionButton: FloatingActionButton(
                  backgroundColor: AppColor.primaryColor,
                  onPressed: () {
                    Get.toNamed(AppRoute.cart);
                  },
                  child: const Icon(Icons.shopping_basket_outlined)),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: const CustomBottomAppBarHome(),
              body: PopScope(
          canPop: false,
          onPopInvoked: (didPop) {
            alertExitApp();
          },
          child: controller.listPage.elementAt(controller.currentpage),
            )));
  }
}
