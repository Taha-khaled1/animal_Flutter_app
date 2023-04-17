import 'package:animal_app/application_layer/ShardFunction/valid.dart';
import 'package:animal_app/presentation_layer/components/custombutten.dart';
import 'package:animal_app/presentation_layer/components/customtextfild.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/screen/screenseting/changcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quickalert/quickalert.dart';

import '../../resources/font_manager.dart';
import '../../resources/styles_manager.dart';

void changepass(BuildContext context) {
  final ChangePassController changepasscontroller =
      Get.put(ChangePassController());
  Get.bottomSheet(
    isScrollControlled: true,
    Container(
      height: 520,
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Form(
        key: changepasscontroller.formkeysigin,
        child: ListView(
          children: [
            const SizedBox(
              height: 7,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'تغير كلمة المرور',
                style: MangeStyles().getSemiBoldStyle(
                  color: ColorManager.kPrimary,
                  fontSize: FontSize.s18,
                ),
              ),
            ),
            CustomTextfeild(
              text: ' كلمة المرور القديم',
              valid: (p0) {
                return validInput(p0.toString(), 2, 50, 'password');
              },
              onsaved: (p0) {
                return changepasscontroller.oldpass = p0.toString();
              },
              titel: ' كلمة المرور القديم',
              width: double.infinity * 0.85,
              height: 122,
            ),
            CustomTextfeild(
              text: ' كلمة المرور الجديد',
              valid: (p0) {
                return validInput(p0.toString(), 2, 50, 'password');
              },
              onsaved: (p0) {
                return changepasscontroller.pasws = p0.toString();
              },
              titel: ' كلمة المرور الجديد',
              width: 400,
              height: 122,
            ),
            const SizedBox(height: 15),
            CustomTextfeild(
              text: 'تاكيد  كلمة المرور',
              valid: (p0) {
                return validInput(p0.toString(), 2, 50, 'password');
              },
              onsaved: (p0) {
                return changepasscontroller.confirempass = p0.toString();
              },
              titel: 'تاكيد  كلمة المرور',
              width: double.infinity * 0.85,
              height: 122,
            ),
            const SizedBox(height: 15),
            CustomButton(
              width: double.infinity,
              haigh: 60,
              color: ColorManager.kPrimary,
              text: 'حفظ',
              press: () {
                if (changepasscontroller.formkeysigin.currentState!
                    .validate()) {
                  changepasscontroller.formkeysigin.currentState!.save();
                  QuickAlert.show(
                    context: context,
                    type: QuickAlertType.success,
                    text: 'تم تغير  كلمة المرور بنجاح',
                    onConfirmBtnTap: () {
                      Get.back();
                      Future.delayed(Duration(milliseconds: 100));
                      Get.back();
                    },
                  );
                }
              },
            )
          ],
        ),
      ),
    ),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),
    ),
  );
}
