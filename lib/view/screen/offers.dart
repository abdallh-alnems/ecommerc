import 'package:ecommerc/core/class/handlingdataview.dart';
import 'package:ecommerc/logic/controller/offers_controller.dart';
import 'package:ecommerc/view/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/routes/route.dart';
import '../../logic/controller/favorite_controller.dart';
import '../widget/customappbar.dart';
import '../widget/items/customlistitems.dart';
import '../widget/offers/customlistoofers.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    FavoriteController controllerFav = Get.put(FavoriteController());
    OffersController controller = Get.put(OffersController());
    return GetBuilder<OffersController>(
        builder: (controller) => Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListView(
                children: [
                  CustomAppBar(
                    mycontroller: controller.search!,
                    titleappbar: "Find Product",
                    // onPressedIcon: () {},
                    onPressedSearch: () {
                      controller.onSearchItems();
                    },
                    onChanged: (val) {
                      controller.checkSearch(val);
                    },
                    onPressedIconFavorite: () {
                      Get.toNamed(AppRoute.myfavroite);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  !controller.isSearch
                      ? HandlingDataView(
                          statusRequest: controller.statusRequest,
                          widget: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.data.length,
                              itemBuilder: (context, index) =>
                                  CustomListItemsOffers(
                                      itemsModel: controller.data[index])))
                      : ListItemsSearch(listdatamodel: controller.listdata),
                ],
              ),
            ));
  }
}
