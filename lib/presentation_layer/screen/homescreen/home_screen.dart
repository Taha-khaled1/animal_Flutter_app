import 'package:animal_app/presentation_layer/components/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/components/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/components/resources/styles_manager.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/catogery_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
              onPressed: () {},
              icon: Image.asset('assets/images/Vector.png'),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/not.png'),
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
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                    color: ColorManager.background,
                    borderRadius: BorderRadius.circular(20),
                    // gradient: ColorManager.y,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                        spreadRadius: 2.0,
                        offset: Offset(2.0, 2.0),
                      ),
                    ],
                  ),
                  child: TextField(
                    style:
                        TextStyle(color: ColorManager.kTextblack, fontSize: 15),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: ColorManager.kPrimary2,
                        ),
                      ),
                      hintText: 'البحث هنا ......',
                      prefixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            size: 35,
                            color: Colors.grey,
                          )),
                    ),
                  ),
                ),
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
                      )),
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
                  onTap: () {},
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
                  text1: 'خدمات',
                  text2: 'المزيد',
                  onTap: () {},
                ),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    itemCount: 8,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: 350,
                        height: 50,
                        decoration: BoxDecoration(
                          color: ColorManager.kTextblack,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: ColorManager.kPrimary),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5.0,
                              spreadRadius: 2.0,
                              offset: Offset(2.0, 4.0),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          //  mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: CircleAvatar(
                                radius: 35,
                                backgroundImage:
                                    AssetImage('assets/images/unsplash.png'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'elegant pet care',
                                    style: MangeStyles().getMediumStyle(
                                      color: ColorManager.ktextblackk,
                                      fontSize: FontSize.s16,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.add_location,
                                        color: ColorManager.kPrimary2,
                                      ),
                                      Text(
                                        'Abu Dhabi',
                                        style: MangeStyles().getMediumStyle(
                                          color: ColorManager.ktextblackk,
                                          fontSize: FontSize.s16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SmallCircal(
                                        color:
                                            Color.fromARGB(255, 175, 244, 192),
                                        image: 'assets/images/saaa.png',
                                      ),
                                      Text(
                                        '4.8',
                                        style: MangeStyles().getMediumStyle(
                                          color: ColorManager.ktextblackk,
                                          fontSize: FontSize.s14,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      SmallCircal(
                                        color: Color(0xffF89D3D),
                                        iconData: Icon(
                                          Icons.star,
                                          size: 20,
                                          color:
                                              Color.fromARGB(255, 209, 192, 45),
                                        ),
                                      ),
                                      Text(
                                        '01:00 - 08:00 PM',
                                        style: MangeStyles().getMediumStyle(
                                          color: ColorManager.ktextblackk,
                                          fontSize: FontSize.s14,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 25,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SmallCircal extends StatelessWidget {
  const SmallCircal({
    super.key,
    this.image,
    required this.color,
    this.iconData,
  });
  final String? image;
  final Icon? iconData;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
      ),
      child: image == null
          ? iconData
          : Image.asset(
              image!,
              height: 30,
            ),
    );
  }
}

class Titelmore extends StatelessWidget {
  const Titelmore({
    super.key,
    required this.text1,
    required this.text2,
    this.onTap,
  });
  final String text1, text2;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: MangeStyles().getBoldStyle(
              color: ColorManager.kPrimary2,
              fontSize: FontSize.s18,
            ),
          ),
          InkWell(
            onTap: onTap,
            child: Text(
              text2,
              style: MangeStyles().getMediumStyle(
                color: ColorManager.kPrimary2,
                fontSize: FontSize.s16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
