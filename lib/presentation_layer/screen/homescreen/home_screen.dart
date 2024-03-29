import 'package:animal_app/main.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/strings_manager.dart';
import 'package:animal_app/presentation_layer/screen/cart_screen/cart_screen.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/CatogerySmall.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/Clinic_Widget.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/ProductWidget.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/SearchHome.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/Titelmore.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/catogery_card.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/groomingWidget.dart';
import 'package:animal_app/presentation_layer/screen/more_catogery/morecatogeryscreen.dart';
import 'package:animal_app/presentation_layer/screen/more_product/more_product.dart';
import 'package:animal_app/presentation_layer/screen/notfiction_screen/notfiction_screen.dart';
import 'package:animal_app/presentation_layer/screen/shimmer_screen/shimmer_screen.dart';
import 'package:animal_app/presentation_layer/screen/src/custom_import.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

import '../../utlis/translate.dart';
import 'home_controlller/home_controlller.dart';

//import 'package:animal_app/presentation_layer/screen/src/custom_import.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController(), permanent: true);
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: ColorManager.background,
        appBar: AppBar(
          leadingWidth: 150,
          backgroundColor: ColorManager.background,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Hi ${sharedPreferences.getString("name") ?? ""}',
              style: MangeStyles().getBoldStyle(
                color: ColorManager.kPrimary2,
                fontSize: FontSize.s16,
              ),
            ),
          ),
          actions: [
            // IconButton(
            //   onPressed: () {
            //     Get.to(() => CartScreen());
            //   },
            //   icon: Image.asset('assets/images/Vector.png'),
            // ),
            IconButton(
              onPressed: () {
                Get.to(NotficationScreen());
              },
              icon: Image.asset(
                'assets/icons/ringing.png',
                color: ColorManager.kPrimary2,
              ),
            ),
          ],
        ),
        body: GetBuilder<HomeController>(
          builder: (controller) {
            return !homeController.isload
                ? Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                      child: ListView(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          SizedBox(height: 72, child: SearchHome()),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 13,
                              vertical: 0,
                            ),
                            child: Text(
                              AppStrings.offers.tr,
                              style: MangeStyles().getBoldStyle(
                                color: ColorManager.kPrimary2,
                                fontSize: FontSize.s20,
                              ),
                            ),
                          ),
                          Container(
                            // margin: EdgeInsets.symmetric(horizontal: 12),
                            width: MediaQuery.of(context).size.width * 1,
                            height: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: CarouselSlider(
                              items: homeController.ximageoffer,
                              options: CarouselOptions(
                                height: 450,
                                aspectRatio: 16 / 9,
                                viewportFraction: 0.7,
                                initialPage: 0,
                                enableInfiniteScroll: true,
                                reverse: false,
                                autoPlay: true,
                                autoPlayInterval: Duration(seconds: 3),
                                autoPlayAnimationDuration:
                                    Duration(milliseconds: 800),
                                autoPlayCurve: Curves.fastOutSlowIn,
                                enlargeCenterPage: true,
                                enlargeFactor: 0.2,
                                // onPageChanged: callbackFunction,
                                scrollDirection: Axis.horizontal,
                              ),
                            ),
                            // child: Carousel(
                            //   images: [
                            //     NetworkImage(
                            //         'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                            //     NetworkImage(
                            //         'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                            //     ExactAssetImage("assets/images/REO.png")
                            //   ],
                            // ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Titelmore(
                            text1: AppStrings.clinc.tr,
                            text2: '',
                            onTap: () {},
                          ),
                          SizedBox(
                            height: 140,
                            child: ListView.builder(
                              itemCount: homeController
                                  .homeModel!.data?.vendors?.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return ClinicWidget(
                                  adress: homeController.homeModel!.data
                                          ?.vendors?[index].address ??
                                      "",
                                  from: homeController.homeModel!.data
                                          ?.vendors?[index].openingFrom ??
                                      "",
                                  to: homeController.homeModel!.data
                                          ?.vendors?[index].openingTo ??
                                      "",
                                  name: homeController.homeModel!.data
                                          ?.vendors?[index].name ??
                                      "",
                                  image: homeController.homeModel!.data
                                          ?.vendors?[index].profileImage ??
                                      "",
                                );
                              },
                            ),
                          ),
                          Titelmore(
                            text1: AppStrings.service.tr,
                            text2: 'المزيد',
                            onTap: () {
                              Get.to(() => MoreCatogeryScreen());
                            },
                          ),
                          SizedBox(
                            height: 160,
                            child: ListView.builder(
                              itemCount: homeController
                                  .homeModel!.data?.services?.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return CatogeryCard(
                                  id: homeController
                                      .homeModel!.data?.services?[index].id
                                      .toString(),
                                  image: homeController.homeModel!.data
                                      ?.services?[index].imageUrl,
                                  name: translation(
                                      ar: homeController
                                              .homeModel!
                                              .data
                                              ?.services?[index]
                                              .arServiceName ??
                                          "",
                                      en: homeController
                                              .homeModel!
                                              .data
                                              ?.services?[index]
                                              .enServiceName ??
                                          ""),
                                );
                              },
                            ),
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Titelmore(
                            text1: AppStrings.categories.tr,
                            text2: 'المزيد',
                            onTap: () {},
                          ),
                          SizedBox(
                            height: 156,
                            child: ListView.builder(
                              itemCount: homeController
                                  .homeModel!.data?.petCategories?.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return CatogerySmall(
                                  image: homeController.homeModel!.data
                                      ?.petCategories?[index].icon,
                                  name: translation(
                                      ar: homeController.homeModel!.data
                                              ?.petCategories?[index].titleAr ??
                                          "",
                                      en: homeController.homeModel!.data
                                              ?.petCategories?[index].titleEn ??
                                          ""),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),

                          // Titelmore(
                          //   text1: 'خدمات الاستمالة',
                          //   text2: 'المزيد',
                          //   onTap: () {},
                          // ),
                          // SizedBox(
                          //   height: 200,
                          //   child: ListView.builder(
                          //     itemCount: 8,
                          //     scrollDirection: Axis.horizontal,
                          //     itemBuilder: (context, index) {
                          //       return GroomingWidget();
                          //     },
                          //   ),
                          // ),

                          SizedBox(
                            height: 25,
                          ),

                          Titelmore(
                            text1: AppStrings.shop_products.tr,
                            text2: 'المزيد',
                            onTap: () {
                              Get.to(() => MoreProductScreen());
                            },
                          ),
                          SizedBox(
                            height: 270,
                            child: ListView.builder(
                              itemCount: homeController
                                  .homeModel!.data?.products?.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return ProductWidget(
                                  id: homeController
                                      .homeModel!.data?.products?[index].id
                                      .toString(),
                                  isProduct: true,
                                  image:
                                      "https://elegantae.net/uploaded_files/product_image/${homeController.homeModel!.data?.products?[index].primaryImage}",
                                  name: translation(
                                      ar: homeController
                                              .homeModel!
                                              .data
                                              ?.products?[index]
                                              .frProductName ??
                                          "",
                                      en: homeController
                                              .homeModel!
                                              .data
                                              ?.products?[index]
                                              .enProductName ??
                                          ""),
                                  price: homeController
                                      .homeModel!.data?.products?[index].price,
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),

                          Titelmore(
                            text1: AppStrings.most_animals.tr,
                            text2: 'المزيد',
                            onTap: () {
                              Get.to(() => MoreProductScreen());
                            },
                          ),
                          SizedBox(
                            height: 270,
                            child: ListView.builder(
                              itemCount:
                                  homeController.homeModel!.data?.pets?.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return ProductWidget(
                                  isProduct: false,
                                  id: homeController
                                      .homeModel!.data?.pets?[index].id
                                      .toString(),
                                  image:
                                      "${homeController.homeModel!.data?.pets?[index].featuredImage}",
                                  name: translation(
                                      ar: homeController.homeModel!.data
                                              ?.pets?[index].titleAr ??
                                          "",
                                      en: homeController.homeModel!.data
                                              ?.pets?[index].titleEn ??
                                          ""),
                                  price: homeController
                                      .homeModel!.data?.pets?[index].price
                                      .toString(),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                    ),
                  )
                : ShimmerLayout();
          },
        ),
      ),
    );
  }
}
