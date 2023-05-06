import 'package:animal_app/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:animal_app/presentation_layer/components/appbar1.dart';
import 'package:animal_app/presentation_layer/components/custombutten.dart';
import 'package:animal_app/presentation_layer/components/customtextfild.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';

import 'package:flutter/material.dart';

class ForgotPassword_Screen extends StatelessWidget {
  const ForgotPassword_Screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      appBar: appbarscreen('نسيت كلمة السر'),
      body: Container(
        alignment: Alignment.topCenter,
        child: InfoWidget(
          builder: (context, deviceInfo) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: deviceInfo.screenHeight * 0.15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      'لا تقلق من حدوث ذالك فقط ادخل البريد الاكتروني الخاص بك وسيتم ارسال لك كود لاعادة كتابة كلمة السر',
                      style: TextStyle(
                        color: ColorManager.white,
                        fontSize: FontSize.s18,
                        fontFamily: FontConstants.fontFamily,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CustomTextfeild(
                    valid: (p0) {},
                    onsaved: (p0) {},
                    titel: 'البريد الاكتروني',
                    width: 15,
                    height: 100,
                    icon: Icons.email,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CustomButton(
                    width: deviceInfo.localWidth * 0.8,
                    haigh: 60,
                    color: ColorManager.kPrimary,
                    text: 'تاكيد',
                    press: () {},
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
