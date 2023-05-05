import 'package:animal_app/presentation_layer/cart_screen/cart_screen.dart';
import 'package:animal_app/presentation_layer/components/navbar.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/Clinic_Widget.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/SearchHome.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/Titelmore.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/catogery_card.dart';
import 'package:animal_app/presentation_layer/screen/more_catogery/morecatogeryscreen.dart';
import 'package:animal_app/presentation_layer/screen/more_product/more_product.dart';
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
      child: Image.asset('assets/images/5393728.jpg'),
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
              onPressed: () {},
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
                  height: 10,
                ),
                SearchHome(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
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
                  height: 225,
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
                  text1: 'خدمات',
                  text2: 'المزيد',
                  onTap: () {
                    Get.to(() => MoreCatogeryScreen());
                  },
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: 8,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CatogeryCard();
                    },
                  ),
                ),
                Titelmore(
                  text1: 'عيادات بيطرية',
                  text2: 'المزيد',
                  onTap: () {},
                ),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    itemCount: 8,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ClinicWidget();
                    },
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
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

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => ProductDetalis());
      },
      child: Container(
        width: 200,
        margin: EdgeInsets.only(right: 7, left: 5),
        decoration: BoxDecoration(
          border: Border.all(color: ColorManager.kPrimary),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
            topLeft: Radius.circular(30),
            topRight: Radius.circular(10),
          ),
        ),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Image.asset(image),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'بريطاني قصير الشعر',
                  style: MangeStyles().getMediumStyle(
                    color: ColorManager.ktextblackk,
                    fontSize: FontSize.s16,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '\$199',
                  style: MangeStyles().getMediumStyle(
                    color: ColorManager.kPrimary2,
                    fontSize: FontSize.s16,
                  ),
                ),
              ],
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: 55,
                width: 45,
                decoration: BoxDecoration(
                  color: ColorManager.kPrimary,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    //  bottomRight: Radius.circular(10),
                  ),
                ),
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CatogerySmall extends StatelessWidget {
  const CatogerySmall({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(8.0),
          width: 110,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: ColorManager.kPrimary),
          ),
          child: Image.asset(
            'assets/images/cat.png',
            width: 100,
            height: 100,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Cat',
          style: MangeStyles().getMediumStyle(
            color: ColorManager.kPrimary2,
            fontSize: FontSize.s16,
          ),
        ),
      ],
    );
  }
}
