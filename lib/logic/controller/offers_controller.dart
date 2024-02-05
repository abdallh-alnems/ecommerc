import 'package:ecommerc/data/data_source/remote/offers_data.dart';
import 'package:ecommerc/data/model/itemsmodel.dart';
import 'package:ecommerc/logic/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/class/status_request.dart';
import '../../core/functions/handingdatacontroller.dart';

class OffersController extends SearchMixController {
  OffersData offersData = OffersData(Get.find());

  List<ItemsModel> data = [];
  late StatusRequest statusRequest;

//  key => id items
//  Value => 1 OR 0

  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await offersData.getData();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        List listdta2 = (response['data']);
        data.addAll(listdta2.map((e) => ItemsModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

  @override
  void onInit() {
    search = TextEditingController();
    getData();
    super.onInit();
  }
}
