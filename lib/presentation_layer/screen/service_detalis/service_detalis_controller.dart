import 'package:animal_app/application_layer/utils/handling.dart';
import 'package:animal_app/application_layer/utils/statusrequst.dart';
import 'package:animal_app/data_layer/models/ServiceModel.dart';
import 'package:animal_app/data_layer/models/home_model.dart';
import 'package:animal_app/data_layer/resbonse.dart';
import 'package:animal_app/main.dart';
import 'package:get/get.dart';

import '../../../data_layer/models/ServiceDetalisModel.dart';

class ServiceController extends GetxController {
  late bool isload;
  ServiceDetalisModel? serviceDetalisModel;
  late StatusRequest statusRequest;
  getSingleServicesRes(int id) async {
    try {
      statusRequest = StatusRequest.loading;
      var response = await getSingleServices(id);
      statusRequest = handlingData(response);
      if (statusRequest == StatusRequest.success) {
        print('----------------------------------');
        serviceDetalisModel = await ServiceDetalisModel.fromJson(response);
      } else {
        statusRequest = StatusRequest.failure;
      }
    } catch (e) {
      statusRequest = StatusRequest.erorr;
    }
  }

  ServiceModel? serviceModel;
  late StatusRequest statusRequest1;
  getServicesRes() async {
    try {
      statusRequest1 = StatusRequest.loading;
      var response = await getServices();
      statusRequest1 = handlingData(response);
      if (statusRequest1 == StatusRequest.success) {
        print('----------------------------------');
        serviceModel = await ServiceModel.fromJson(response);
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
    await getSingleServicesRes(sharedPreferences.getInt("s_id")!);
    await getServicesRes();
    isload = false;
    update();
    super.onInit();
  }
}
