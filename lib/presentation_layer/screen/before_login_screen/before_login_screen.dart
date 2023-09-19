import 'package:animal_app/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:animal_app/presentation_layer/components/custombutten.dart';
import 'package:flutter/material.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../auth_screen/login_screen/login_screen.dart';

class BeforeLoginScreen extends StatelessWidget {
  const BeforeLoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: appbar(title: "Login", isBack: false),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset("assets/json/login.json"),
            SizedBox(
              height: 20,
            ),
            InfoWidget(
              builder: (context, deviceInfo) {
                return CustomButton(
                  width: deviceInfo.localWidth * 0.8,
                  haigh: 55,
                  color: ColorManager.kPrimary,
                  text: "You must log in",
                  fontSize: 18,
                  press: () {
                    Get.to(() => LoginScreen());
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
