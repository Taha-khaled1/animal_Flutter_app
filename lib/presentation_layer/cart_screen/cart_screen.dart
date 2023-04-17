import 'package:animal_app/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:animal_app/presentation_layer/cart_screen/cart_controller/cart_controller.dart';
import 'package:animal_app/presentation_layer/cart_screen/widget/cart_card.dart';
import 'package:animal_app/presentation_layer/cart_screen/widget/final_price.dart';
import 'package:animal_app/presentation_layer/components/appbar1.dart';
import 'package:animal_app/presentation_layer/components/navbar.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

bool xtemp = false;
bool ctemp = false;

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CartController controller = Get.put(CartController());
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBarCus(),
      backgroundColor: ColorManager.background,
      appBar: appbarscreen('عربة التسوق'),
      body: InfoWidget(
        builder: (context, deviceInfo) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return CartCard();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    const Divider(
                      thickness: 2,
                    ),
                    GetBuilder<CartController>(
                      builder: (controller) {
                        return Column(
                          children: [
                            FinalPrice(
                              title: 'المجموع الفرعي',
                              price: controller.totelPrice.toString(),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            FinalPrice(
                              title: 'ضريبة',
                              price: controller.totelTex.toString(),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'اختر نوع التسليم',
                                  style: MangeStyles().getBoldStyle(
                                    color: ColorManager.kPrimary,
                                    fontSize: FontSize.s20,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 75,
                                  width: deviceInfo.localWidth * 0.85,
                                  alignment: Alignment.centerRight,
                                  decoration: BoxDecoration(
                                    color: ColorManager.grey2,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: ColorManager.kPrimary),
                                  ),
                                  child: Row(
                                    children: [
                                      Radio(
                                        value: true,
                                        groupValue: true,
                                        onChanged: (value) {},
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'توصيل منزلي',
                                        style: MangeStyles().getBoldStyle(
                                          color: ColorManager.ktextblackk,
                                          fontSize: FontSize.s18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 75,
                                  width: deviceInfo.localWidth * 0.85,
                                  alignment: Alignment.centerRight,
                                  decoration: BoxDecoration(
                                    color: ColorManager.grey2,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: ColorManager.kPrimary),
                                  ),
                                  child: Row(
                                    children: [
                                      Radio(
                                        value: true,
                                        groupValue: true,
                                        onChanged: (value) {},
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'الدفع كاش اونلاين',
                                        style: MangeStyles().getBoldStyle(
                                          color: ColorManager.ktextblackk,
                                          fontSize: FontSize.s18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
