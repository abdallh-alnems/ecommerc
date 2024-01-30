import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/class/handlingdataview.dart';
import '../../logic/controller/myfavoritecontroller.dart';
import '../widget/myfavorite/customlistfavoriteitems.dart';

class MyFavorite extends StatelessWidget {
  const MyFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MyFavoriteController());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: GetBuilder<MyFavoriteController>(
            builder: ((controller) => ListView(children: [
                  // CustomAppBar(
                  //   titleappbar: "Find Product",
                  
                  //   onPressedSearch: () {},
                  //   onPressedIconFavorite: () {
                  //     Get.toNamed(AppRoute.myfavroite);
                  //   },
                  // ),
                  SizedBox(height: 20) ,
                  HandlingDataView(
                      statusRequest: controller.statusRequest,
                      widget: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.data.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: 0.7),
                        itemBuilder: (context, index) {
                          return  CustomListFavoriteItems(itemsModel: controller.data[index]) ; 
                        },
                      ))
                ]))),
      ),
    );
  }
}