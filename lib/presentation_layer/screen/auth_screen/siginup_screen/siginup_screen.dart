import 'package:animal_app/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:animal_app/presentation_layer/components/custombutten.dart';
import 'package:animal_app/presentation_layer/components/customtextfild.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:animal_app/presentation_layer/screen/auth_screen/auth_widget/TextWithButtonTExt.dart';
import 'package:animal_app/presentation_layer/screen/auth_screen/siginup_screen/widget/AccpetPrivecy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login_screen/login_screen.dart';

class SiginUp_Screen extends StatelessWidget {
  const SiginUp_Screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      body: Container(
        alignment: Alignment.center,
        child: InfoWidget(
          builder: (context, deviceInfo) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: deviceInfo.screenHeight * 0.05,
                  ),
                  Text(
                    'انشاء حساب جديد',
                    style: MangeStyles().getBoldStyle(
                      color: ColorManager.white,
                      fontSize: FontSize.s25,
                    ),
                  ),
                  CircleAvatar(
                    radius: 80,
                    backgroundColor: ColorManager.background,
                    backgroundImage:
                        AssetImage('assets/icons/logoa_animal (2).png'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextfeild(
                    valid: (p0) {},
                    onsaved: (p0) {},
                    titel: 'الاسم الكامل',
                    width: 15,
                    height: 100,
                    icon: Icons.person,
                  ),
                  SizedBox(
                    height: 20,
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
                    height: 20,
                  ),
                  CustomTextfeild(
                    valid: (p0) {},
                    onsaved: (p0) {},
                    titel: 'كلمة السر',
                    width: 15,
                    height: 100,
                    icon: Icons.lock,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextfeild(
                    valid: (p0) {},
                    onsaved: (p0) {},
                    titel: 'تاكيد كلمة السر',
                    width: 15,
                    height: 100,
                    icon: Icons.lock,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  AccpetPrivecy(),
                  CustomButton(
                    width: deviceInfo.localWidth * 0.8,
                    haigh: 60,
                    color: ColorManager.kPrimary,
                    text: 'انشاء الحساب',
                    press: () {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextWithButtonTExt(
                    text1: 'امتلك  حساب؟',
                    text2: 'تسجيل الدخول',
                    onTap: () {
                      Get.to(() => Login_Screen());
                    },
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
