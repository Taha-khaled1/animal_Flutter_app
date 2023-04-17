import 'package:animal_app/application_layer/ShardFunction/valid.dart';
import 'package:animal_app/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:animal_app/presentation_layer/components/customtextfild.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:animal_app/presentation_layer/support_screen/support_controller/support_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../resources/font_manager.dart';

class SupportProblemScreen extends StatelessWidget {
  const SupportProblemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SupportController controller = Get.put(SupportController());
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
      body: InfoWidget(
        builder: (context, deviceInfo) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    color: ColorManager.controlercolor,
                    image: const DecorationImage(
                      image: AssetImage('assets/images/support.png'),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -55),
                  child: Container(
                    height: 589,
                    width: deviceInfo.localWidth >= 600
                        ? deviceInfo.localWidth * 0.75
                        : deviceInfo.localWidth * 0.85,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: ColorManager.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5.0,
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        SingleChildScrollView(
                          child: Form(
                            key: controller.formkeysigin,
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'ابقى معنا على تواصل',
                                    style: MangeStyles().getBoldStyle(
                                      color: ColorManager.kTextblack,
                                      fontSize: FontSize.s22,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'إذا كان هناك أي مشاكل تريد إخبارنا بها أو أي شيء يمكننا مساعدتك فيه. ما عليك سوى ملء المربع أدناه وسنتواصل معك في أسرع وقت ممكن',
                                    style: MangeStyles().getBoldStyle(
                                      color: ColorManager.kTextlightgray,
                                      fontSize: FontSize.s14,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'الاسم واللقب',
                                    style: MangeStyles().getBoldStyle(
                                      color: ColorManager.kPrimary,
                                      fontSize: FontSize.s20,
                                    ),
                                  ),
                                ),
                                CustomTextfeild(
                                  valid: (p0) {
                                    return validInput(
                                        p0.toString(), 2, 100, 'name');
                                  },
                                  onsaved: (p0) {
                                    return controller.name = p0!;
                                  },
                                  titel: 'الاسم واللقب',
                                  width: deviceInfo.localWidth * 0.85,
                                  height: 70,
                                  isenabledBorder: false,
                                ),
                                const SizedBox(height: 8),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'البريد الالكتروني',
                                    style: MangeStyles().getBoldStyle(
                                      color: ColorManager.kPrimary,
                                      fontSize: FontSize.s20,
                                    ),
                                  ),
                                ),
                                CustomTextfeild(
                                  valid: (p0) {
                                    return validInput(
                                        p0.toString(), 5, 100, 'email');
                                  },
                                  onsaved: (p0) {
                                    return controller.email = p0!;
                                  },
                                  titel: 'البريد الاكتروني',
                                  width: deviceInfo.localWidth * 0.85,
                                  height: 70,
                                  isenabledBorder: false,
                                ),
                                const SizedBox(height: 8),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'الرسالة',
                                    style: MangeStyles().getBoldStyle(
                                      color: ColorManager.kPrimary,
                                      fontSize: FontSize.s20,
                                    ),
                                  ),
                                ),
                                CustomTextfeild(
                                  fillColor: ColorManager.grey2,
                                  maxLines: 8,
                                  valid: (p0) {
                                    return validInput(
                                        p0.toString(), 10, 400, 'massge');
                                  },
                                  onsaved: (p0) {
                                    return controller.message = p0!;
                                  },
                                  titel: 'اترك رسالتك هنا ...',
                                  width: deviceInfo.localWidth * 0.85,
                                  height: 140,
                                  isBoarder: BorderStyle.none,
                                ),
                              ],
                            ),
                          ),
                        ),
                        CircleButton(
                          color1: ColorManager.controlercolor,
                          onTap: () {},
                          iconData: 'assets/icons/send.svg',
                        ),
                        // Positioned(
                        //   bottom: 0,
                        //   left: 0,
                        //   right: 0,
                        //   child: Transform.translate(
                        //     offset: const Offset(0, 30),
                        //     child: GetBuilder<SupportController>(
                        //       builder: (controller) {
                        //         return HandlingDataView(
                        //           statusRequest: controller.statusRequest,
                        //           widget: CircleButton(
                        //             color1: ColorManager.controlercolor,
                        //             onTap: () {
                        //               controller.contactUs(context);
                        //             },
                        //             iconData: 'assets/icons/send.svg',
                        //           ),
                        //         );
                        //       },
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
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

class CircleButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final String iconData;
  final Color? color1;
  final Color? color2;
  final double? size;
  final double? sizedsvg;
  const CircleButton({
    Key? key,
    required this.onTap,
    required this.iconData,
    this.color1,
    this.color2,
    this.size,
    this.sizedsvg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sized = 70.0;

    return InkResponse(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: size ?? sized,
        height: size ?? sized,
        decoration: BoxDecoration(
          color: color1,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconData,
          color: color2,
          width: sizedsvg ?? 35,
        ),
      ),
    );
  }
}
