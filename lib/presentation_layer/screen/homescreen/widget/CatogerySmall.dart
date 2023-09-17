import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:animal_app/presentation_layer/screen/more_product/more_product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utlis/image_checker.dart';

class CatogerySmall extends StatelessWidget {
  const CatogerySmall({
    Key? key,
    this.name,
    this.image,
  }) : super(key: key);
  final String? name, image;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => MoreProductScreen());
      },
      child: Column(
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
            child: Image.network(
              imageNetworkCheck(image),
              width: 120,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '$name',
            style: MangeStyles().getMediumStyle(
              color: ColorManager.kPrimary2,
              fontSize: FontSize.s16,
            ),
          ),
        ],
      ),
    );
  }
}
