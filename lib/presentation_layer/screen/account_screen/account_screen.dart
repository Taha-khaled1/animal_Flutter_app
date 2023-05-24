import 'package:animal_app/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:animal_app/presentation_layer/components/appbar1.dart';
import 'package:animal_app/presentation_layer/components/custombutten.dart';
import 'package:animal_app/presentation_layer/components/navbar.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:animal_app/presentation_layer/screen/account_screen/widget/customListtile.dart';
import 'package:animal_app/presentation_layer/screen/edit_profile_screen/edit_profile_screen.dart';
import 'package:animal_app/presentation_layer/screen/screenseting/aboutpage.dart';
import 'package:animal_app/presentation_layer/screen/screenseting/sharescreen.dart';
import 'package:animal_app/presentation_layer/screen/screenseting/terms.dart';
import 'package:animal_app/presentation_layer/screen/support_screen/support_problem_account_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      appBar: appbarscreen('معلومات الحساب'),
      body: InfoWidget(
        builder: (context, deviceInfo) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: ListView(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  child: Text(
                    'الحساب',
                    style: MangeStyles().getBoldStyle(
                      color: ColorManager.ktextblackk,
                      fontSize: FontSize.s18,
                    ),
                  ),
                ),
                CustomListtile(
                  widget: Icon(Icons.person),
                  titel: 'معلومات الحساب',
                  onTap: () {
                    Get.to(EditProfileScreen());
                  },
                ),
                CustomListtile(
                  widget: Icon(Icons.privacy_tip_outlined),
                  titel: 'سياسة الخصوصيه',
                  onTap: () {
                    // Get.to(page);
                  },
                ),
                CustomListtile(
                  widget: Icon(Icons.policy_outlined),
                  titel: 'شروط والاحكام',
                  onTap: () {
                    Get.to(TermsAndConditionsPage());
                  },
                ),
                CustomListtile(
                  widget: Icon(Icons.share),
                  titel: 'مشاركة التطبيق',
                  onTap: () {
                    Get.to(ShareApp());
                  },
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  child: Text(
                    'المساعده',
                    style: MangeStyles().getBoldStyle(
                      color: ColorManager.ktextblackk,
                      fontSize: FontSize.s18,
                    ),
                  ),
                ),
                CustomListtile(
                  widget: Icon(Icons.call),
                  titel: 'تواصل معنا',
                  onTap: () {
                    Get.to(
                      SupportProblemScreen(),
                    );
                  },
                ),
                CustomListtile(
                  widget: Icon(Icons.info_outline),
                  titel: 'معلومات عنا',
                  onTap: () {
                    Get.to(AboutPage());
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: deviceInfo.localWidth * 0.1),
                  child: CustomButton(
                    width: deviceInfo.localWidth * 0.8,
                    haigh: 60,
                    color: ColorManager.kPrimary,
                    text: 'تسجيل الخروج',
                    press: () {},
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
