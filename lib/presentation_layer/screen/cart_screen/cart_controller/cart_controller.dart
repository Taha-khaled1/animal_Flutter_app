import 'package:animal_app/main.dart';
import 'package:get/get.dart';
import '../../../../data_layer/models/carttest.dart';

class CartController extends GetxController {
  double totelPrice = 0;
  double totelTex = 0;
  int count = 0;
  bool xtemp = false;
  bool ctemp = false;
  String deliveryType = '';
  late bool isload;
  void updatePay(String value) {
    deliveryType = value;
    update();
  }

  List<CartItemModel> items = [];

  Future<void> getCartItemsRes() async {
    List<Map<String, dynamic>> response = await sqlDb!.read('cart');
    // Clear the current items list before adding new items.
    items.clear();

    for (Map<String, dynamic> map in response) {
      CartItemModel item = CartItemModel.fromMap(map);
      items.add(item);
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
