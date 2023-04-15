import 'package:animal_app/presentation_layer/components/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/components/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/components/resources/routes_manager.dart';
import 'package:animal_app/presentation_layer/components/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatogeryCard extends StatelessWidget {
  const CatogeryCard({
    Key? key,
  }) : super(key: key);
  // final CatogeryData? catogeryData;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Get.toNamed(
        //   Routes.moreproduct,
        //   arguments: [catogeryData!.id ?? 6],
        // );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 13),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/unsplash.png'),
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
              height: 50,
              child: Text(
                'حلاقة شعر',
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
