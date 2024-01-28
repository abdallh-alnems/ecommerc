import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/link_api.dart';
import '../../../core/functions/translatedatebase.dart';
import '../../../data/model/myfavorite.dart';
import '../../../logic/controller/myfavoritecontroller.dart';

class CustomListFavoriteItems extends GetView<MyFavoriteController> {
  final MyFavoriteModel itemsModel;
  // final bool active;
  const CustomListFavoriteItems({Key? key, required this.itemsModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag: "${itemsModel.itemsId}",
                child: CachedNetworkImage(
                  imageUrl:
                      AppLink.imagestItems + "/" + itemsModel.itemsImage!,
                  height: 80,
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                  translateDatabase(
                      itemsModel.itemsNameAr, itemsModel.itemsName),
                  style: const TextStyle(
                      color: AppColor.black,
                      fontSize: 13,
                      fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Rating 3.5 ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: 12,
                    child: Row(
                      children: [
                        ...List.generate(
                            5,
                            (index) => const Icon(
                                  Icons.star,
                                  size: 12,
                                ))
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${itemsModel.itemsPrice} \$",
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: "sans")),
                  IconButton(
                      onPressed: () {
                        controller.deleteFromFavorite(
                            itemsModel.favoriteId!.toString());
                      },
                      icon: Icon(
                        Icons.delete_outline_outlined,
                        color: AppColor.primaryColor,
                      ))
                ],
              )
            ]),
      ),
    );
  }
}






























// logical thinking

  // GetBuilder<FavoriteController>(
  //                         builder: (controller) => IconButton(
  //                             onPressed: () {
  //                                 if (controller.isFavorite[itemsModel.itemsId] == "1" ) {
  //                                   controller.setFavorite(
  //                                       itemsModel.itemsId, "0");
  //                                 } else {
  //                                   controller.setFavorite(
  //                                       itemsModel.itemsId, "1");
  //                                 }
  //                             },
  //                             icon: Icon(
  //                               controller.isFavorite[itemsModel.itemsId] == "1"
  //                                   ? Icons.favorite
  //                                   : Icons.favorite_border_outlined,
  //                               color: AppColor.primaryColor,
  //                             )))