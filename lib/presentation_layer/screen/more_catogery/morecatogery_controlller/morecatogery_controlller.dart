import 'package:animal_app/application_layer/utils/handling.dart';
import 'package:animal_app/application_layer/utils/statusrequst.dart';
import 'package:animal_app/data_layer/models/ServiceModel.dart';
import 'package:animal_app/data_layer/models/home_model.dart';
import 'package:animal_app/data_layer/resbonse.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MorecatogeryController extends GetxController {
  late bool isload;
  List<Widget> ximageoffer = [
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Image.asset('assets/images/offer.png'),
      ),
    ),
  ];
  ServiceModel? serviceModel;
  late StatusRequest statusRequest;
  getServicesRes() async {
    try {
      statusRequest = StatusRequest.loading;
      var response = await getServices();
      statusRequest = handlingData(response);
      if (statusRequest == StatusRequest.success) {
        print('----------------------------------');
        serviceModel = await ServiceModel.fromJson(response);
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
    await getServicesRes();

    isload = false;
    update();
    super.onInit();
  }
}
/*


  CatoegeryModel? catoegeryModel;
  late StatusRequest statusRequest1;
  getCatoegerysRes() async {
    try {
      statusRequest1 = StatusRequest.loading;
      var response = await getServices();
      statusRequest1 = handlingData(response);
      if (statusRequest1 == StatusRequest.success) {
        print('----------------------------------');
        catoegeryModel = await CatoegeryModel.fromJson(response);
      } else {
        statusRequest1 = StatusRequest.failure;
      }
    } catch (e) {
      statusRequest1 = StatusRequest.erorr;
    }
  }
  @override
  void onInit() async {
    isload = true;
    update();
    await getServicesRes();
    await getCatoegerysRes();
    isload = false;
    update();
    super.onInit();
  }

*/