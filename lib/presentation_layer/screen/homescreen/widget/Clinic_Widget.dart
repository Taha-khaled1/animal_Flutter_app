import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/Small_Circal.dart';
import 'package:flutter/material.dart';

class ClinicWidget extends StatelessWidget {
  const ClinicWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('assets/images/unsplash.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'رعاية الحيوانات الأليفة',
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
                      'ابو ظبي',
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
                      color: Color(0xffF89D3D),
                      iconData: Icon(
                        Icons.star,
                        size: 20,
                        color: Color.fromARGB(255, 209, 192, 45),
                      ),
                    ),
                    SizedBox(
                      width: 4,
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
                      color: Color.fromARGB(255, 175, 244, 192),
                      image: 'assets/images/saaa.png',
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '01:00 - 08:00 PM',
                      style: MangeStyles().getMediumStyle(
                        color: ColorManager.ktextblackk,
                        fontSize: FontSize.s14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
