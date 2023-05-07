import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/Small_Circal.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/TimeWithHistory.dart';
import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class GroomingWidget extends StatelessWidget {
  const GroomingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: 320,
      height: 50,
      decoration: BoxDecoration(
        color: ColorManager.kTextblack,
        borderRadius: BorderRadius.circular(20),
        // border: Border.all(color: ColorManager.kPrimary),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5.0,
            //   spreadRadius: 2.0,
            offset: Offset(2, 8),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        //  mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(
            'assets/images/pngegg (33) 1.png',
            height: 100,
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 10),
          //   child: CircleAvatar(
          //     backgroundColor: ColorManager.background,
          //     radius: 40,
          //     backgroundImage: AssetImage('assets/images/pngegg (33) 1.png'),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    )
                  ],
                ),
                TimeWithReviwe(reviwe: '4.8', time: '01:00 - 08:00 PM'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
