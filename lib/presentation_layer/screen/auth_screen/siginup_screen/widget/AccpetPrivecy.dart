import 'package:animal_app/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:animal_app/presentation_layer/screen/auth_screen/siginup_screen/siginup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccpetPrivecy extends StatelessWidget {
  const AccpetPrivecy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context, deviceInfo) {
        return Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: deviceInfo.localWidth * 0.03,
            ),
            child: Row(
              children: [
                GetBuilder<SiginUpController>(
                  init: SiginUpController(),
                  builder: (controller) {
                    return Checkbox(
                      value: controller.checkboxValue,
                      onChanged: (value) {
                        controller.changeCheckBox(value!);
                      },
                    );
                  },
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'أوافق على شروط الخدمة وسياسة الخصوصية',
                    style: MangeStyles().getBoldStyle(
                      color: ColorManager.kPrimary2,
                      fontSize: FontSize.s16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
