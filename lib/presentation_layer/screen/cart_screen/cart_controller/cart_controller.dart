import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:quickalert/quickalert.dart';

import '../../../../data_layer/models/carttest.dart';

class CartController extends GetxController {
  double totelPrice = 0;
  double totelTex = 0;
  int count = 0;
  bool xtemp = false;
  bool ctemp = false;
  String deliveryType = '';

  void updatePay(String value) {
    deliveryType = value;
    update();
  }
  // CartListModels? cartListModels;
  // List<CartItems> carModelsdemo = [];

  // getCartList(int idCato) async {
  //   carModelsdemo.clear();
  //   totelPrice = 0;
  //   totelTex = 0;
  //   try {
  //     var response = await getCartListRes(idCato);

  //     for (var i = 0; i < response.length; i++) {
  //       cartListModels = await CartListModels.fromJson(response[i]);
  //       for (int q = 0; q < cartListModels!.cartItems!.length; q++) {
  //         totelPrice += cartListModels!.cartItems![q].price!.toDouble() *
  //             cartListModels!.cartItems![q].quantity!.toDouble();
  //         totelTex += cartListModels!.cartItems![q].tax!.toDouble() *
  //             cartListModels!.cartItems![q].quantity!.toDouble();
  //         carModelsdemo.add(cartListModels!.cartItems![q]);
  //       }
  //     }
  //     update();
  //     return response;
  //   } catch (e) {
  //     print(' erorr catch $e');
  //     return 'error';
  //   }
  // }

  // StatusRequest statusRequest = StatusRequest.none;
  // deletecarts(BuildContext context, int id) async {
  //   statusRequest = StatusRequest.loading;
  //   update();

  //   var respon = await deleteFromCartRespon(id);
  //   statusRequest = handlingData(respon);
  //   try {
  //     if (StatusRequest.success == statusRequest) {
  //       if (respon['result'].toString() == 'true') {
  //         showDilog(context, 'تم حذف المنتج بنجاح');
  //         carModelsdemo.removeWhere(
  //           (element) => element.id == id,
  //         );
  //       } else {
  //         showDilog(
  //           context,
  //           'لم يتم حذف المنج ربما يوجد خطاء',
  //           type: QuickAlertType.info,
  //         );
  //       }
  //     } else {
  //       showDilog(context, 'يوجد مشكله ما', type: QuickAlertType.error);
  //     }
  //   } catch (e) {
  //     print('catch $e');
  //     showDilog(context, 'يوجد مشكله ما', type: QuickAlertType.error);
  //   }

  //   update();
  // }

  icrasingCount(int index, double price) {
    count++;
    cartItem[index].count++;
    totelPrice += price;
    update();
  }

  decrasingCount(int index, double price) {
    if (count > 1) {
      count--;
      cartItem[index].count--;
      totelPrice -= price;
      update();
    }
  }

  // StatusRequest statusRequest1 = StatusRequest.none;
  // saveOrder(BuildContext context, String id) async {
  //   statusRequest1 = StatusRequest.loading;
  //   update();

  //   var respon = await saveOrderRespon(id);
  //   statusRequest1 = handlingData(respon);
  //   try {
  //     if (StatusRequest.success == statusRequest1) {
  //       if (respon['result'].toString() == 'true') {
  //         carModelsdemo.clear();
  //         Get.offAndToNamed(Routes.sucssRoute);
  //       } else {
  //         showDilog(
  //           context,
  //           'عربة التسوق فارغه او الكميه غير متوفره',
  //           type: QuickAlertType.info,
  //         );
  //       }
  //     } else {
  //       showDilog(
  //         context,
  //         'يوجد مشكله بحساب المستخد يرجي التواصل مع الدعم',
  //         type: QuickAlertType.error,
  //       );
  //     }
  //   } catch (e) {
  //     print('catch $e');
  //     showDilog(context, 'يوجد مشكله ما', type: QuickAlertType.error);
  //   }

  //   update();
  // }
}
