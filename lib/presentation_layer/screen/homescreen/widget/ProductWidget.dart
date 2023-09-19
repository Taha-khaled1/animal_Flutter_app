import 'package:animal_app/data_layer/models/favorite_model.dart';
import 'package:animal_app/main.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/home_controlller/home_controlller.dart';
import 'package:animal_app/presentation_layer/screen/pet_detalis/pet_detalis_screen.dart';
import 'package:animal_app/presentation_layer/screen/product_detalis/product_detalis_screen.dart';
import 'package:animal_app/presentation_layer/utlis/image_checker.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    this.image,
    this.name,
    this.price,
    this.id,
    required this.isProduct,
  });
  final String? image, name, price, id;
  final bool isProduct;
  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find();
    // print(image.toString());
    return InkWell(
      onTap: () {
        if (isProduct) {
          if (id != null) {
            sharedPreferences.setInt("p_id", int.parse(id!));
            Get.to(() => ProductDetalis());
          }
        } else {
          if (id != null) {
            sharedPreferences.setInt("a_id", int.parse(id!));
            Get.to(() => PetDetalisScreen());
          }
        }
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (image != "assets/images/image 21.png")
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      // bottomLeft: Radius.circular(30),
                      // bottomRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(10),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: imageNetworkCheck(image),
                      fit: BoxFit.fill,
                      imageBuilder: (context, imageProvider) => Container(
                        width: 200,
                        height: 156,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(
                        Icons.error,
                        color: Colors.red,
                      ),
                    ),
                  ),
                // if (image != "assets/images/image 21.png")
                //   Image.network(
                //     imageNetworkCheck(image),
                //     width: 100,
                //     height: 100,
                //   ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '$name',
                  style: MangeStyles().getMediumStyle(
                    color: ColorManager.ktextblackk,
                    fontSize: FontSize.s16,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '\$$price',
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
              child: GestureDetector(
                onTap: () {
                  //int.parse(id ?? "0")
                  FavoritModel favoritModel = FavoritModel(
                    id: isProduct
                        ? int.parse(id ?? "0") + 500
                        : int.parse(id ?? "0") + 1000,
                    des: '',
                    price: double.parse(price ?? "50.0"),
                    titleEn: name ?? '',
                    title: name ?? '',
                    image: image ?? '',
                  );
                  homeController.addfavorite(context, favoritModel);
                  print("finish");
                },
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
                  child: FutureBuilder<bool>(
                    future: homeController.isProductInFavorites(
                      isProduct
                          ? int.parse(id ?? "0") + 500
                          : int.parse(id ?? "0") + 1000,
                    ),
                    builder:
                        (BuildContext context, AsyncSnapshot<bool> snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        // Future is still loading, return a placeholder widget or loading indicator
                        return CircularProgressIndicator();
                      } else if (snapshot.hasError) {
                        // An error occurred while fetching the favorite status
                        return Text('Error: ${snapshot.error}');
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
                                Icons.favorite_border_outlined,
                                size: 32,
                                color: Colors.white,
                              );
                      }
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
