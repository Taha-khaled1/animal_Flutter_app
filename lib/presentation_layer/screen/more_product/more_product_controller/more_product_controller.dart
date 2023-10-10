import 'package:animal_app/application_layer/utils/handling.dart';
import 'package:animal_app/application_layer/utils/statusrequst.dart';
import 'package:animal_app/data_layer/models/more-products.dart';
import 'package:animal_app/data_layer/resbonse.dart';
import 'package:animal_app/main.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoreProductController extends GetxController {
  int page = 0;
  late bool isload;
  late StatusRequest statusRequest;
  MoreProductModel? moreProductModel;
  getMoreProductRes(name) async {
    try {
      statusRequest = StatusRequest.loading;
      var response = await getMoreProduct(name);
      statusRequest = handlingData(response);
      if (statusRequest == StatusRequest.success) {
        print('----------------------------------');
        moreProductModel = await MoreProductModel.fromJson(response);
      } else {
        statusRequest = StatusRequest.failure;
      }
    } catch (e) {
      statusRequest = StatusRequest.erorr;
    }
  }

  @override
  void onInit() async {
    isload = true;
    update();
    await getMoreProductRes(sharedPreferences.get("search"));

    isload = false;
    update();
    super.onInit();
  }
}
