import 'package:animal_app/presentation_layer/components/custombutten.dart';
import 'package:animal_app/presentation_layer/components/show_dialog.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/strings_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/home_screen.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/ProductWidget.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/Titelmore.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/catogery_card.dart';
import 'package:animal_app/presentation_layer/screen/more_product/more_product.dart';
import 'package:animal_app/presentation_layer/screen/product_detalis/widget/ImageWithBackButton.dart';
import 'package:animal_app/presentation_layer/screen/shimmer_screen/shimmer_screen.dart';
import 'package:animal_app/presentation_layer/utlis/translate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';

import 'product_detalis_controller/product_detalis_controller.dart';

class ProductDetalis extends StatelessWidget {
  const ProductDetalis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: Example(),
      backgroundColor: ColorManager.background,
      body: GetBuilder<ProductController>(
        init: ProductController(),
        builder: (controller) {
          return !controller.isload
              ? Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ImageWithBackButton(
                            image: controller.product?.data.primaryImageUrl),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    translation(
                                        ar: controller
                                                .product?.data.frProductName ??
                                            "",
                                        en: controller
                                                .product?.data.enProductName ??
                                            ""),
                                    style: MangeStyles().getBoldStyle(
                                      color: ColorManager.ktextblackk,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: FutureBuilder<bool>(
                                      future: controller.isProductInFavorites(
                                        int.parse(controller.product?.data.id
                                                    .toString() ??
                                                "0") +
                                            500,
                                      ),
                                      builder: (BuildContext context,
                                          AsyncSnapshot<bool> snapshot) {
                                        if (snapshot.connectionState ==
                                            ConnectionState.waiting) {
                                          // Future is still loading, return a placeholder widget or loading indicator
                                          return CircularProgressIndicator();
                                        } else if (snapshot.hasError) {
                                          // An error occurred while fetching the favorite status
                                          return Text(
                                              'Error: ${snapshot.error}');
                                        } else {
                                          // Favorite status is available
                                          bool favorite = snapshot.data ??
                                              false; // Use a default value if data is null

                                          return favorite
                                              ? Icon(
                                                  Icons.favorite,
                                                  color: Colors.red,
                                                  size: 32,
                                                )
                                              : Icon(
                                                  Icons
                                                      .favorite_border_outlined,
                                                  size: 32,
                                                  color: Colors.grey,
                                                );
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Html(
                                data: translation(
                                    ar: controller
                                            .product?.data.frDescription ??
                                        "",
                                    en: controller
                                            .product?.data.enDescription ??
                                        ""),
                              ),
                              // Text(

                              //   textAlign: TextAlign.start,
                              //   style: TextStyle(
                              //     fontSize: 17,
                              //     color: Colors.grey,
                              //   ),
                              // ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomButton(
                                    width: 185,
                                    haigh: 60,
                                    color: ColorManager.kPrimary,
                                    text: AppStrings.add_cart.tr,
                                    press: () async {
                                      try {
                                        int response =
                                            await controller.addToCart({
                                          'itemsName': controller
                                              .product?.data.frProductName,
                                          'idProduct':
                                              controller.product?.data.id,
                                          'vender_id':
                                              controller.product?.data.vendorId,
                                          'type': "product",
                                          'itemsNameEn': controller
                                              .product?.data.enProductName,
                                          'itemsPrice':
                                              controller.product?.data.price,
                                          'itemsImage': controller
                                              .product?.data.primaryImageUrl,
                                          'quntity':
                                              1, // You can adjust the quantity as needed.
                                        });

                                        if (response > 0) {
                                          showDilog(
                                            context,
                                            AppStrings
                                                .item_added_to_cart_successfully
                                                .tr,
                                          );
                                        }
                                      } catch (e) {
                                        print(e);
                                      }
                                    },
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 100,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xffAA5908)),
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: Text(
                                      '\$${controller.product?.data.price}',
                                      style: MangeStyles().getBoldStyle(
                                        color: ColorManager.kPrimary2,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Titelmore(
                          text1: AppStrings.service.tr,
                          text2: 'المزيد',
                          onTap: () {},
                        ),
                        SizedBox(
                          height: 200,
                          child: ListView.builder(
                            itemCount: controller
                                .serviceModel!.serviceCardModel?.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CatogeryCard(
                                  id: controller
                                      .serviceModel!.serviceCardModel?[index].id
                                      .toString(),
                                  image: controller.serviceModel!
                                      .serviceCardModel?[index].imageUrl,
                                  name: translation(
                                      ar: controller
                                              .serviceModel!
                                              .serviceCardModel?[index]
                                              .arServiceName ??
                                          "",
                                      en: controller
                                              .serviceModel!
                                              .serviceCardModel?[index]
                                              .enServiceName ??
                                          ""),
                                ),
                              );
                            },
                          ),
                        ),
                        // Titelmore(
                        //   text1: 'تسوق منتجاتنا',
                        //   text2: 'المزيد',
                        //   onTap: () {
                        //     Get.to(() => MoreProductScreen());
                        //   },
                        // ),
                        // SizedBox(
                        //   height: 270,
                        //   child: ListView.builder(
                        //     itemCount: 8,
                        //     scrollDirection: Axis.horizontal,
                        //     itemBuilder: (context, index) {
                        //       return ProductWidget(
                        //           image: 'assets/images/image 21.png');
                        //     },
                        //   ),
                        // ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                )
              : ShimmerLayout();
        },
      ),
    );
  }
}
