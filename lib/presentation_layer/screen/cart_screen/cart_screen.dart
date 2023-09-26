import 'dart:convert';

import 'package:animal_app/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:animal_app/presentation_layer/components/custombutten.dart';
import 'package:animal_app/presentation_layer/components/show_dialog.dart';
import 'package:animal_app/presentation_layer/resources/strings_manager.dart';
import 'package:animal_app/presentation_layer/screen/auth_screen/login_screen/login_screen.dart';
import 'package:animal_app/presentation_layer/screen/cart_screen/cart_controller/cart_controller.dart';
import 'package:animal_app/presentation_layer/screen/cart_screen/widget/cart_card.dart';
import 'package:animal_app/presentation_layer/screen/cart_screen/widget/final_price.dart';
import 'package:animal_app/presentation_layer/components/appbar1.dart';
import 'package:animal_app/presentation_layer/components/navbar.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:animal_app/presentation_layer/screen/shimmer_screen/shimmer_screen.dart';
import 'package:animal_app/presentation_layer/utlis/is_login/is_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      appBar: appbarscreen('عربة التسوق'),
      body: GetBuilder<CartController>(
        init: CartController(),
        builder: (controller) {
          return !controller.isload
              ? InfoWidget(
                  builder: (context, deviceInfo) {
                    return Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            itemCount: controller.items.length,
                            itemBuilder: (BuildContext context, int index) {
                              return CartCard(
                                cart: controller.items[index],
                                index: index,
                              );
                            },
                          ),
                        ),
                        BottomSection(
                          cartController: controller,
                          width: deviceInfo.localWidth * 0.85,
                        )
                      ],
                    );
                  },
                )
              : ShimmerLayout();
          ;
        },
      ),
    );
  }
}

class BottomSection extends StatefulWidget {
  const BottomSection({
    super.key,
    required this.width,
    required this.cartController,
  });
  final double width;
  final CartController cartController;

  @override
  State<BottomSection> createState() => _BottomSectionState();
}

class _BottomSectionState extends State<BottomSection> {
  var paymentIntent = null;
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    title: 'المجموع',
                    price: controller.totelPrice.toString(),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'اختر نوع التسليم',
                        style: MangeStyles().getBoldStyle(
                          color: ColorManager.kPrimary,
                          fontSize: FontSize.s16,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: CachCard(
                          controller: controller,
                          width: widget.width,
                          text: 'توصيل منزلي',
                          valuebut: 'توصيل منزلي',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: CachCard(
                          controller: controller,
                          width: widget.width,
                          text: 'الدفع كاش اونلاين',
                          valuebut: 'الدفع كاش اونلاين',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomButton(
                        width: double.infinity,
                        haigh: 55,
                        color: ColorManager.kPrimary,
                        text: "الطلب الان",
                        press: () {
                          if (isLogin()) {
                            if (widget.cartController.deliveryType ==
                                "توصيل منزلي") {
                              widget.cartController
                                  .sendOrder(controller.items, "cod");
                            } else {
                              makePayment();
                            }
                          } else {
                            showDilog(
                              context,
                              AppStrings.login_required.tr,
                              onConfirmBtnTap: () {
                                Get.to(() => LoginScreen());
                              },
                            );
                          }
                        },
                      ),
                    ],
                  )
                ],
              );
            },
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Future<void> makePayment() async {
    try {
      //STEP 1: Create Payment Intent
      paymentIntent = await createPaymentIntent(
          ((widget.cartController.totelPrice * 100).round()).toString(), 'aed');

      //STEP 2: Initialize Payment Sheet
      await Stripe.instance
          .initPaymentSheet(
              paymentSheetParameters: SetupPaymentSheetParameters(
                  paymentIntentClientSecret: paymentIntent![
                      'client_secret'], //Gotten from payment intent
                  style: ThemeMode.light,
                  merchantDisplayName: 'Ikay'))
          .then((value) {});

      //STEP 3: Display Payment sheet
      displayPaymentSheet();
    } catch (err) {
      print(err.toString());
    }
  }

  displayPaymentSheet() async {
    try {
      await Stripe.instance.presentPaymentSheet().then((value) async {
        paymentIntent =
            null; // Clear paymentIntent variable after successful payment.
        print('Payment made successfully.');
        widget.cartController.sendOrder(
          widget.cartController.items,
          "stripe",
        );
        showDilog(context, "Payment made successfully");
      }).onError((error, stackTrace) {
        showDilog(context, "Error while displaying Payment Sheet");
        print('Error while displaying Payment Sheet: $error');
      });
    } on StripeException catch (e) {
      showDilog(context, "Error while displaying Payment Sheet");

      print('Stripe error: $e');
    } catch (e) {
      showDilog(context, "Error while displaying Payment Sheet");

      print('General error while displaying Payment Sheet: $e');
    }
  }

  createPaymentIntent(String amount, String currency) async {
    try {
      //Request body
      Map<String, dynamic> body = {
        'amount': amount,
        'currency': currency,
      };

      //Make post request to Stripe
      var response = await http.post(
        Uri.parse('https://api.stripe.com/v1/payment_intents'),
        headers: {
          'Authorization':
              'Bearer sk_test_51MU9CFCCrii3tAGhjMS2lA168mdfX5xkvJpdM5aBOWVDyaczVSCyPDI4UNilOo6QkK8gDr8NaLiwxLKjY5Bv2HqT006FQ6Vg7g',
          'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: body,
      );
      return json.decode(response.body);
    } catch (err) {
      throw Exception(err.toString());
    }
  }
}

class CachCard extends StatelessWidget {
  const CachCard({
    super.key,
    required this.width,
    required this.text,
    required this.controller,
    required this.valuebut,
  });
  final double width;
  final String text, valuebut;
  final CartController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ColorManager.grey2,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: ColorManager.kPrimary),
      ),
      child: Row(
        children: [
          Radio(
            value: valuebut,
            groupValue: controller.deliveryType,
            onChanged: (value) {
              controller.updatePay(value!);
            },
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: MangeStyles().getBoldStyle(
              color: ColorManager.ktextblackk,
              fontSize: FontSize.s18,
            ),
          ),
        ],
      ),
    );
  }
}
