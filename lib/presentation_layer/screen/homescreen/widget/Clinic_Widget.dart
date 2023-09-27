import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/Small_Circal.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/TimeWithHistory.dart';
import 'package:animal_app/presentation_layer/utlis/image_checker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ClinicWidget extends StatelessWidget {
  const ClinicWidget({
    super.key,
    required this.name,
    required this.adress,
    required this.from,
    required this.to,
    required this.image,
  });
  final String name, adress, from, to, image;
  @override
  Widget build(BuildContext context) {
    print(image);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 320,
      height: 50,
      decoration: BoxDecoration(
        color: ColorManager.kTextblack,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: ColorManager.kPrimary),
        boxShadow: [
          // BoxShadow(
          //   color: Colors.grey,
          //   blurRadius: 5.0,
          //   //   spreadRadius: 2.0,
          //   offset: Offset(2, 8),
          // ), flutter pub run flutter_launcher_icons
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        //  mainAxisSize: MainAxisSize.max,
        children: [
          image.contains("svg")
              ? CircleAvatar(
                  backgroundColor: ColorManager.background,
                  radius: 40,
                  child: SvgPicture.network(image),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CircleAvatar(
                    backgroundColor: ColorManager.background,
                    radius: 40,
                    backgroundImage: NetworkImage(imageNetworkCheck(image)),
                  ),
                ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
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
                      adress,
                      style: MangeStyles().getMediumStyle(
                        color: ColorManager.ktextblackk,
                        fontSize: FontSize.s16,
                      ),
                    ),
                  ],
                ),
                TimeWithReviwe(reviwe: '4.8', time: '${from} - ${to}'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
