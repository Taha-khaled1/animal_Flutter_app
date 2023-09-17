import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:animal_app/main.dart';
import 'package:animal_app/presentation_layer/components/show_dialog.dart';

import '../../../data_layer/models/favorite_model.dart';

List<FavoritModel> favoritList = [];

class FavoritController extends GetxController {
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

        if (deletedRows > 0) {
          showDilog(context, 'تم حذف المنتج من المفضله بنجاح');
        }
      } else {
        // Product is not a favorite, so add it
        int respons = await sqlDb!.insert(
          'favorite',
          {
            'id': favoritModel.id,
            'title': favoritModel.title,
            'image': favoritModel.image,
          },
        );

        if (respons > 0) {
          showDilog(context, 'تم اضافة المنتج الي المفضله بنجاح');
        }
      }
    } catch (e) {
      print(e);
    }
  }

  Future getData() async {
    var responsev = await sqlDb!.readData("SELECT * FROM favorite");
    return responsev;
  }
}
