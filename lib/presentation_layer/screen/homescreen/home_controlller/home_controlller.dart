import 'package:animal_app/application_layer/utils/handling.dart';
import 'package:animal_app/application_layer/utils/statusrequst.dart';
import 'package:animal_app/data_layer/models/ServiceModel.dart';
import 'package:animal_app/data_layer/models/catogery_model.dart';
import 'package:animal_app/data_layer/models/favorite_model.dart';
import 'package:animal_app/data_layer/models/home_model.dart';
import 'package:animal_app/data_layer/resbonse.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';

import '../../../../main.dart';

class HomeController extends GetxController {
  late bool isload;
  List<Widget> ximageoffer = [];
  HomeModel? homeModel;
  late StatusRequest statusRequest;
  getHomeRes() async {
    try {
      statusRequest = StatusRequest.loading;
      var response = await getHome();
      statusRequest = handlingData(response);
      if (statusRequest == StatusRequest.success) {
        print('----------------------------------');
        homeModel = await HomeModel.fromJson(response);
        for (int i = 0; i < (homeModel!.data?.banners?.length ?? 0); i++)
          ximageoffer.add(
            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://elegantae.net/uploaded_files/banner/${homeModel!.data?.banners?[i].image}",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                    placeholder: (context, url) =>
                        CircularProgressIndicator(), // Optional: show a placeholder until the image is loaded
                    errorWidget: (context, url, error) => Icon(Icons
                        .error), // Optional: show an error widget if the image fails to load
                  ),
                )),
          );
      } else {
        statusRequest = StatusRequest.failure;
      }
    } catch (e) {
      statusRequest = StatusRequest.erorr;
    }
  }

  // Add a product to the shopping cart.

  void addfavorite(BuildContext context, FavoritModel favoritModel) async {
    try {
      var isFavorite = await sqlDb!.readData(
        'SELECT * FROM favorite WHERE id = ${favoritModel.id}',
      );
      print(isFavorite.toString());
      if (isFavorite.isNotEmpty) {
        // Product is already a favorite, so delete it
        int deletedRows = await sqlDb!.deleteData(
          'DELETE FROM favorite WHERE id = ${favoritModel.id}',
        );

        // if (deletedRows > 0) {
        //   showDilog(context, 'تم حذف المنتج من المفضله بنجاح',
        //       type: QuickAlertType.info);
        // }
      } else {
        // Product is not a favorite, so add it
        int respons = await sqlDb!.insert(
          'favorite',
          {
            'id': favoritModel.id,
            'idProduct': favoritModel.id,
            "titleEn": favoritModel.titleEn,
            "des": favoritModel.des,
            "price": favoritModel.price,
            'title': favoritModel.title,
            'image': favoritModel.image,
          },
        );

        // if (respons > 0) {
        //   showDilog(context, 'تم اضافة المنتج الي المفضله بنجاح');
        // }
      }
      update();
    } catch (e) {
      print(e);
    }
    update();
  }

  Future<bool> isProductInFavorites(int productId) async {
    Database? mydb = await sqlDb!.db;
    String sql = 'SELECT * FROM favorite WHERE id = $productId';
    List<Map<String, dynamic>> result = await mydb!.rawQuery(sql);

    return result.isNotEmpty;
  }

  @override
  void onInit() async {
    isload = true;
    update();
    await getHomeRes();

    isload = false;
    update();
    super.onInit();
  }
}
/*

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
