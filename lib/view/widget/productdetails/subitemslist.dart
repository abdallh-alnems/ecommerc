
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../logic/controller/productdetails_controller.dart';

class SubitemsList extends GetView<ProductDetailsControllerImp> {
  const SubitemsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          controller.subitems.length,
          (index) => Container(
            margin: EdgeInsets.only(right: 10),
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 5),
            height: 50,
            width: 80,
            decoration: BoxDecoration(
                color: controller.subitems[index]['active'] == "1"
                    ? AppColor.fourthColor
                    : Colors.white,
                border: Border.all(color: AppColor.fourthColor),
                borderRadius: BorderRadius.circular(10)),
            child: Text(controller.subitems[index]['name'],
                style: TextStyle(
                    color: controller.subitems[index]['active'] == "1"
                        ? Colors.white
                        : AppColor.fourthColor,
                    fontWeight: FontWeight.bold)),
          ),
        )
      ],
    );
  }
}
