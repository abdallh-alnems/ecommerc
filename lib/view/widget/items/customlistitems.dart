import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/link_api.dart';
import '../../../core/functions/translatedatebase.dart';
import '../../../data/model/itemsmodel.dart';

class CustomListItems extends StatelessWidget {
  final ItemsModel itemsModel;
  const CustomListItems({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Card(
      child: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CachedNetworkImage(
                imageUrl: AppLink.imagestItems + "/" + itemsModel.itemsImage!,
                height: 80,
                fit: BoxFit.fill,
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
                  Text("${itemsModel.itemsPrice} \$",
                      style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontFamily: "sans")),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: AppColor.primaryColor,
                      ))
                ],
              )
            ]),
      ),
    ));
  }
}
