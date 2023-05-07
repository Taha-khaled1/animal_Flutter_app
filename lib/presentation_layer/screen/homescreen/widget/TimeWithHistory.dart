import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/Small_Circal.dart';
import 'package:flutter/material.dart';

class TimeWithReviwe extends StatelessWidget {
  const TimeWithReviwe({
    super.key,
    required this.time,
    required this.reviwe,
  });
  final String time, reviwe;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SmallCircal(
          color: Color(0xffF89D3D).withOpacity(0.7),
          iconData: Icon(
            Icons.star,
            size: 20,
            color: Colors.yellow,
          ),
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          reviwe,
          style: MangeStyles().getMediumStyle(
            color: ColorManager.ktextblackk,
            fontSize: FontSize.s14,
          ),
        ),
        SizedBox(
          width: 8,
        ),
        SmallCircal(
          color: Color.fromARGB(255, 175, 244, 192),
          image: 'assets/images/saaa.png',
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          time,
          style: MangeStyles().getMediumStyle(
            color: ColorManager.ktextblackk,
            fontSize: FontSize.s14,
          ),
        ),
      ],
    );
  }
}
