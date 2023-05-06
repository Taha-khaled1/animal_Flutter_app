import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:flutter/material.dart';

class TextWithButtonTExt extends StatelessWidget {
  const TextWithButtonTExt({
    super.key,
    required this.text1,
    required this.text2,
    this.width,
  });
  final String text1, text2;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: MangeStyles().getBoldStyle(
            color: ColorManager.white,
            fontSize: FontSize.s20,
          ),
        ),
        SizedBox(
          width: width ?? 10,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            text2,
            style: MangeStyles().getBoldStyle(
              color: ColorManager.kPrimary2,
              fontSize: FontSize.s20,
            ),
          ),
        ),
      ],
    );
  }
}
