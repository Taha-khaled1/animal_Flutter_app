import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:flutter/material.dart';

import '../../../utlis/image_checker.dart';

class ImageWithBackButton extends StatelessWidget {
  const ImageWithBackButton({
    super.key,
    this.image,
  });
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          height: 320,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: NetworkImage(
                imageNetworkCheck(
                  image,
                ),
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 20,
          right: 10,
          child: BackButton(
            color: ColorManager.kPrimary,
          ),
        ),
      ],
    );
  }
}
