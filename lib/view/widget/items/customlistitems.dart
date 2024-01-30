import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerc/core/constant/image_asset.dart';
import 'package:ecommerc/logic/controller/items_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/link_api.dart';
import '../../../core/functions/translatedatebase.dart';
import '../../../data/model/itemsmodel.dart';
import '../../../logic/controller/favorite_controller.dart';

class CustomListItems extends GetView<ItemsControllerImp> {
  final ItemsModel itemsModel;
  const CustomListItems({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          controller.goToPageProductDetails(itemsModel);
        },
        child: Card(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Hero(
                        tag: itemsModel.itemsId!,
                        child: CachedNetworkImage(
                          imageUrl: AppLink.imagestItems +
                              "/" +
                              itemsModel.itemsImage!,
                          height: 80,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(
                          translateDatabase(
                              itemsModel.itemsNameAr, itemsModel.itemsName),
                          style: const TextStyle(
                              color: AppColor.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Rating 3.5 ",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 11),
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            height: 16,
                            child: Row(
                              children: [
                                ...List.generate(
                                    5,
                                    (index) => Icon(
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
                          Text("${itemsModel.itemsPriceDiscount} \$",
                              style: TextStyle(
                                  color: AppColor.primaryColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "sans")),
                          GetBuilder<FavoriteController>(
                              builder: (controller) => IconButton(
                                  onPressed: () {
                                    if (controller
                                            .isFavorite[itemsModel.itemsId] ==
                                        1) {
                                      controller.setFavorite(
                                          itemsModel.itemsId, 0);

                                      controller.removeFavorite(
                                          itemsModel.itemsId!.toString());
                                    } else {
                                      controller.setFavorite(
                                          itemsModel.itemsId, 1);
                                      controller.addFavorite(
                                          itemsModel.itemsId!.toString());
                                    }
                                  },
                                  icon: Icon(
                                    controller.isFavorite[itemsModel.itemsId] ==
                                            1
                                        ? Icons.favorite
                                        : Icons.favorite_border_outlined,
                                    color: AppColor.primaryColor,
                                  )))
                        ],
                      )
                    ]),
              ),
              if (itemsModel.itemsDiscount != 0)
                Positioned(
                    top: 4,
                    left: 4,
                    child: Image.asset(
                      AppImageAsset.saleOne,
                      width: 30,
                    ))
            ],
          ),
        ));
  }
}
