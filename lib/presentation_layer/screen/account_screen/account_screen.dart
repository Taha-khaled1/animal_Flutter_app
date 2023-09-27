import 'package:animal_app/main.dart';
import 'package:animal_app/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:animal_app/presentation_layer/components/appbar1.dart';
import 'package:animal_app/presentation_layer/components/custombutten.dart';
import 'package:animal_app/presentation_layer/components/navbar.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/strings_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:animal_app/presentation_layer/screen/account_screen/widget/customListtile.dart';
import 'package:animal_app/presentation_layer/screen/edit_profile_screen/edit_profile_screen.dart';
import 'package:animal_app/presentation_layer/screen/follow_order/follow_order.dart';
import 'package:animal_app/presentation_layer/screen/screenseting/privacy_policy.dart';
import 'package:animal_app/presentation_layer/screen/screenseting/sharescreen.dart';
import 'package:animal_app/presentation_layer/screen/screenseting/terms.dart';
import 'package:animal_app/presentation_layer/screen/support_screen/support_problem_account_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      appBar: appbarscreen(AppStrings.account_information.tr),
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
                    AppStrings.account.tr,
                    style: MangeStyles().getBoldStyle(
                      color: ColorManager.ktextblackk,
                      fontSize: FontSize.s18,
                    ),
                  ),
                ),
                CustomListtile(
                  widget: Icon(Icons.person),
                  titel: AppStrings.account_information.tr,
                  onTap: () {
                    Get.to(EditProfileScreen());
                  },
                ),
                CustomListtile(
                  widget: Icon(
                    Icons.policy_outlined,
                    color: Colors.black,
                  ),
                  titel: AppStrings.trackRequests.tr,
                  onTap: () {
                    Get.to(() => FollowOrderScreen());
                  },
                ),
                CustomListtile(
                  widget: Icon(Icons.privacy_tip_outlined),
                  titel: AppStrings.privacy_policy.tr,
                  onTap: () {
                    Get.to(PrivacyPolicy());
                  },
                ),
                CustomListtile(
                  widget: Icon(Icons.policy_outlined),
                  titel: AppStrings.terms_and_conditions.tr,
                  onTap: () {
                    Get.to(TermsAndConditionsPage());
                  },
                ),
                CustomListtile(
                  widget: Icon(Icons.share),
                  titel: AppStrings.share_app.tr,
                  onTap: () {
                    Get.to(ShareApp());
                  },
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  child: Text(
                    AppStrings.help.tr,
                    style: MangeStyles().getBoldStyle(
                      color: ColorManager.ktextblackk,
                      fontSize: FontSize.s18,
                    ),
                  ),
                ),
                CustomListtile(
                  widget: Icon(Icons.call),
                  titel: AppStrings.connect_with_us.tr,
                  onTap: () {
                    Get.to(
                      SupportProblemScreen(),
                    );
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                CustomSwitch(),
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
                    text: AppStrings.sign_out.tr,
                    press: () async {
                      setState(() {
                        sharedPreferences.remove("token");
                        sharedPreferences.remove("id");
                        Get.offAll(() => Example());
                        pageIndex = 2;
                      });
                    },
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

void siginOut() {
  // pageIndex = 2;
}

class CustomSwitch extends StatefulWidget {
  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool _value = sharedPreferences.getString('lang') == 'ar' ? false : true;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile.adaptive(
      value: _value,
      onChanged: (value) {
        if (sharedPreferences.getString('lang') == 'ar') {
          print('@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@');
          sharedPreferences.setString("lang", 'en');
          Get.updateLocale(Locale('en'));

          print(sharedPreferences.getString('lang'));
        } else {
          print('########################################');
          sharedPreferences.setString("lang", 'ar');
          Get.updateLocale(Locale('ar'));
        }
        setState(() {
          _value = !_value;
        });
      },
      title: Text(
        AppStrings.chang_lang.tr,
        style: MangeStyles().getBoldStyle(
          color: ColorManager.ktextblackk,
          fontSize: FontSize.s18,
        ),
      ),
    );
  }
}
