import 'package:animal_app/application_layer/utils/handling.dart';
import 'package:animal_app/application_layer/utils/statusrequst.dart';
import 'package:animal_app/data_layer/models/ServiceModel.dart';
import 'package:animal_app/data_layer/resbonse.dart';
import 'package:animal_app/main.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';

import '../../../../data_layer/models/pet_model.dart';

class PetController extends GetxController {
  late bool isload;
  PetModel? pet;
  late StatusRequest statusRequest;
  Future<bool> isProductInFavorites(int productId) async {
    Database? mydb = await sqlDb!.db;
    String sql = 'SELECT * FROM favorite WHERE id = $productId';
    List<Map<String, dynamic>> result = await mydb!.rawQuery(sql);

    return result.isNotEmpty;
  }

  getSinglePetRes(int id) async {
    try {
      statusRequest = StatusRequest.loading;
      var response = await getSinglePet(id);
      statusRequest = handlingData(response);
      if (statusRequest == StatusRequest.success) {
        print('----------------------------------');
        pet = await PetModel.fromJson(response);
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

  Future<int> addToCart(Map<String, Object?> values) async {
    int response = await sqlDb!.insert('cart', values);
    return response;
  }

  @override
  void onInit() async {
    isload = true;
    update();
    await getSinglePetRes(sharedPreferences.getInt("a_id")!);
    await getServicesRes();
    isload = false;
    update();
    super.onInit();
  }
}
