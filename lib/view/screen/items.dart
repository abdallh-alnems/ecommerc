import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/class/handlingdataview.dart';
import '../../core/constant/routes/route.dart';
import '../../data/model/itemsmodel.dart';
import '../../logic/controller/favorite_controller.dart';
import '../../logic/controller/items_controller.dart';
import '../widget/customappbar.dart';
import '../widget/items/customlistitems.dart';
import '../widget/items/listcategoirseitems.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());
    FavoriteController controllerfav = Get.put(FavoriteController());

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(children: [
          CustomAppBar(
              titleappbar: "Find Product",
              onPressedIcon: () {},
              onPressedSearch: () {},
              onPressedIconFavorite: (){
                Get.toNamed(AppRoute.myfavroite);
              },),
          const SizedBox(height: 20),
          const ListCategoriesItems(),
          GetBuilder<ItemsControllerImp>(
              builder: (controller) => HandlingDataView(
                  statusRequest: controller.statusRequest,
                  widget: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: controller.data.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, childAspectRatio: 0.7),
                      itemBuilder: (BuildContext context, index) {
                        controllerfav.isFavorite[controller.data[index]
                            ['items_id']] = controller.data[index]['favorite'];
                        return CustomListItems(
                            itemsModel:
                                ItemsModel.fromJson(controller.data[index]));
                      })))
        ]),
      ),
    );
  }
}
