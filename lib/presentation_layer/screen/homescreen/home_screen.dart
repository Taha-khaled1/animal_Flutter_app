import 'package:animal_app/presentation_layer/screen/cart_screen/cart_screen.dart';
import 'package:animal_app/presentation_layer/components/navbar.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
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
import 'package:animal_app/presentation_layer/screen/product_detalis/product_detalis_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

List<Widget> ximageoffer = [
  Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Image.asset('assets/images/offer.png'),
    ),
  ),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: ColorManager.background,
        appBar: AppBar(
          backgroundColor: ColorManager.background,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Hi Ahmed',
              style: MangeStyles().getBoldStyle(
                color: ColorManager.kPrimary2,
                fontSize: FontSize.s22,
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Get.to(() => CartScreen());
              },
              icon: Image.asset('assets/images/Vector.png'),
            ),
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
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            child: ListView(
              children: [
                SizedBox(
                  height: 5,
                ),
                SearchHome(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 0),
                  child: Text(
                    'العروض',
                    style: MangeStyles().getBoldStyle(
                      color: ColorManager.kPrimary2,
                      fontSize: FontSize.s20,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: CarouselSlider(
                    items: ximageoffer,
                    options: CarouselOptions(
                      height: 400,
                      aspectRatio: 16 / 9,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
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
                  text1: 'عيادات بيطرية',
                  text2: 'المزيد',
                  onTap: () {},
                ),
                SizedBox(
                  height: 140,
                  child: ListView.builder(
                    itemCount: 8,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ClinicWidget();
                    },
                  ),
                ),
                Titelmore(
                  text1: 'خدمات',
                  text2: 'المزيد',
                  onTap: () {
                    Get.to(() => MoreCatogeryScreen());
                  },
                ),
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                    itemCount: 8,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CatogeryCard();
                    },
                  ),
                ),
                // SizedBox(
                //   height: 10,
                // ),
                Titelmore(
                  text1: 'الاقسام',
                  text2: 'المزيد',
                  onTap: () {},
                ),
                SizedBox(
                  height: 145,
                  child: ListView.builder(
                    itemCount: 8,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CatogerySmall();
                    },
                  ),
                ),
                SizedBox(
                  height: 25,
                ),

                Titelmore(
                  text1: 'خدمات الاستمالة',
                  text2: 'المزيد',
                  onTap: () {},
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: 8,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GroomingWidget();
                    },
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                Titelmore(
                  text1: 'الحيوانات الاكثر شعبيا',
                  text2: 'المزيد',
                  onTap: () {
                    Get.to(() => MoreProductScreen());
                  },
                ),
                SizedBox(
                  height: 270,
                  child: ListView.builder(
                    itemCount: 8,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ProductWidget(image: 'assets/images/catbag.png');
                    },
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Titelmore(
                  text1: 'تسوق منتجاتنا',
                  text2: 'المزيد',
                  onTap: () {
                    Get.to(() => MoreProductScreen());
                  },
                ),
                SizedBox(
                  height: 270,
                  child: ListView.builder(
                    itemCount: 8,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ProductWidget(image: 'assets/images/image 21.png');
                    },
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
