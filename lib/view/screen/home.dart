import 'package:ecommerc/core/constant/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/class/handlingdataview.dart';
import '../../logic/controller/home_controller.dart';
import '../widget/customappbar.dart';
import '../widget/home/customcardhome.dart';
import '../widget/home/customtitlehome.dart';
import '../widget/home/listcategorieshome.dart';
import '../widget/home/listitemshome.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
        builder: (controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: ListView(
                  children: [
                    CustomAppBar(
                      titleappbar: "Find Product",
                      onPressedIcon: () {},
                      onPressedSearch: () {},
                      onPressedIconFavorite: () {
                        Get.toNamed(AppRoute.myfavroite);
                      },
                    ),
                    const CustomCardHome(
                        title: "A summer surprise", body: "Cashback 20%"),
                    //    const CustomTitleHome(title: "categories"),
                    const ListCategoriesHome(),
                    const SizedBox(height: 10),
                    const CustomTitleHome(title: "Product for you"),
                    const SizedBox(height: 10),
                    const ListItemsHome(),
                    const CustomTitleHome(title: "Offer"),
                    const SizedBox(height: 10),
                    const ListItemsHome()
                  ],
                ))));
  }
}
