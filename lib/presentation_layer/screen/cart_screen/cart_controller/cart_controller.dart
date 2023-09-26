import 'dart:convert';

import 'package:animal_app/main.dart';
import 'package:animal_app/presentation_layer/components/navbar.dart';
import 'package:get/get.dart';
import '../../../../data_layer/models/carttest.dart';
import 'package:http/http.dart' as http;

class CartController extends GetxController {
  double totelPrice = 0;
  double totelTex = 0;
  int count = 0;
  bool xtemp = false;
  bool ctemp = false;
  String deliveryType = "توصيل منزلي";
  late bool isload;
  void updatePay(String value) {
    deliveryType = value;
    print(deliveryType);
    update();
  }

  List<CartItemModel> items = [];

  Future<void> getCartItemsRes() async {
    List<Map<String, dynamic>> response = await sqlDb!.read('cart');
    // Clear the current items list before adding new items.
    items.clear();

    for (Map<String, dynamic> map in response) {
      CartItemModel item = CartItemModel.fromMap(map);
      totelPrice += item.price;
      items.add(item);
    }
  }

  List<Map<dynamic, dynamic>> prepareItemsData(List<CartItemModel> items) {
    return items.map((item) {
      return {
        "item_type": item.type,
        "product_id": item.idProduct,
        "vendor_id": item.vender_id,
        "qty": item.quantity
      };
    }).toList();
  }

  Map<dynamic, dynamic> prepareOrderData(
      List<CartItemModel> items, String typeOrder) {
    return {
      "payment_method": typeOrder,
      "vendor_id": 3, // This should be changed if your vendor_id is dynamic
      "items": prepareItemsData(items)
    };
  }

  Future<void> sendOrder(List<CartItemModel> items, String typeOrder) async {
    try {
      final url = Uri.parse('https://elegantae.net/api/client-account/order');
      final headers = {
        'Content-Type': 'application/json', 'Accept': 'application/json',
        'Authorization':
            "Bearer ${sharedPreferences.getString("token")!.toString()}",
        // Add any other headers if required, like Authorization for example
      };

      final body = json.encode(prepareOrderData(items, typeOrder));
      print("++++++++> $body");
      final response = await http.post(url, headers: headers, body: body);

      if (response.statusCode == 200) {
        print('Order sent successfully');
        await sqlDb!.deleteAllData("cart");
        pageIndex = 2;
        Get.offAll(() => Example());
      } else {
        print('Failed to send order. Error: ${response.body}');
      }
    } catch (e) {
      print(e);
    }
  }

  icrasingCount(int index, double price) {
    count++;
    items[index].quantity++;
    totelPrice += price;
    update();
  }

  decrasingCount(int index, double price) {
    if (count > 1) {
      count--;
      items[index].quantity--;
      totelPrice -= price;
      update();
    }
  }

  @override
  void onInit() async {
    isload = true;
    update();
    await getCartItemsRes();
    print("=============================");
    isload = false;
    update();
    super.onInit();
  }
}
