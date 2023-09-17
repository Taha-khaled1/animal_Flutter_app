import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/routes_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:animal_app/presentation_layer/screen/service_detalis/service_detalis_screen.dart';
import 'package:animal_app/presentation_layer/utlis/image_checker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../main.dart';

class CatogeryCard extends StatelessWidget {
  const CatogeryCard({
    Key? key,
    this.name,
    this.image,
    this.id,
  }) : super(key: key);
  final String? name, image, id;

  // final CatogeryData? catogeryData;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (id != null) {
          sharedPreferences.setInt("s_id", int.parse(id!));
          Get.to(() => ServiceDetalis());
        }

        // Get.toNamed(
        //   Routes.moreproduct,
        //   arguments: [catogeryData!.id ?? 6],
        // );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10, left: 6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(imageNetworkCheck(image)),
              // child: Image.asset(
              //   'assets/images/unsplash.png',
              //   fit: BoxFit.cover,
              // ),
            ),
            SizedBox(
              height: 7,
            ),
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(30),
            //   child: SizedBox(
            //     child: Image.asset(
            //       'assets/images/unsplash.png',
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 30,
              child: Text(
                '$name',
                textAlign: TextAlign.center,
                style: MangeStyles().getBoldStyle(
                  color: ColorManager.ktextblackk,
                  fontSize: FontSize.s14,
                ),
                overflow: TextOverflow.clip,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
