import 'package:animal_app/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:animal_app/presentation_layer/components/appbar1.dart';
import 'package:animal_app/presentation_layer/components/custombutten.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:animal_app/presentation_layer/screen/auth_screen/resert_password_screen/resert_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      appBar: appbarscreen('تأكيد بواسطة البريد الالكتروني'),
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
                  PinputExample(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: deviceInfo.localWidth * 0.1, vertical: 8),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'اعادة ارسال الكود',
                          style: MangeStyles().getBoldStyle(
                            color: ColorManager.kPrimary2,
                            fontSize: FontSize.s18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CustomButton(
                    width: deviceInfo.localWidth * 0.8,
                    haigh: 60,
                    color: ColorManager.kPrimary,
                    text: 'تاكيد',
                    press: () {
                      Get.to(() => ResertPasswordScreen());
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

/// This is the basic usage of Pinput
/// For more examples check out the demo directory
class PinputExample extends StatefulWidget {
  const PinputExample({Key? key}) : super(key: key);

  @override
  State<PinputExample> createState() => _PinputExampleState();
}

class _PinputExampleState extends State<PinputExample> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    const borderColor = Color.fromRGBO(23, 171, 144, 0.4);

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        border: Border.all(color: borderColor),
      ),
    );

    // return TextField(
    //   contextMenuBuilder: (_, EditableTextState editableTextState) {
    //     print('HEHE');
    //     return AdaptiveTextSelectionToolbar(
    //       anchors: editableTextState.contextMenuAnchors,
    //       children: editableTextState.contextMenuButtonItems.map((ContextMenuButtonItem buttonItem) {
    //         return CupertinoButton(
    //           borderRadius: null,
    //           color: const Color(0xffaaaa00),
    //           disabledColor: const Color(0xffaaaaff),
    //           onPressed: buttonItem.onPressed,
    //           padding: const EdgeInsets.all(10.0),
    //           pressedOpacity: 0.7,
    //           child: SizedBox(
    //             width: 200.0,
    //             child: Text(
    //               CupertinoTextSelectionToolbarButton.getButtonLabel(context, buttonItem),
    //             ),
    //           ),
    //         );
    //       }).toList(),
    //     );
    //   },
    // );

    /// Optionally you can use form to validate the Pinput
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Directionality(
            // Specify direction if desired
            textDirection: TextDirection.ltr,
            child: Pinput(
              controller: pinController,
              focusNode: focusNode,
              androidSmsAutofillMethod:
                  AndroidSmsAutofillMethod.smsUserConsentApi,
              listenForMultipleSmsOnAndroid: true,
              defaultPinTheme: defaultPinTheme,
              validator: (value) {
                return value == '2222' ? null : 'Pin is incorrect';
              },
              // onClipboardFound: (value) {
              //   debugPrint('onClipboardFound: $value');
              //   pinController.setText(value);
              // },
              hapticFeedbackType: HapticFeedbackType.lightImpact,
              onCompleted: (pin) {
                debugPrint('onCompleted: $pin');
              },
              onChanged: (value) {
                debugPrint('onChanged: $value');
              },
              cursor: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 9),
                    width: 22,
                    height: 1,
                    color: focusedBorderColor,
                  ),
                ],
              ),
              focusedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: focusedBorderColor),
                ),
              ),
              submittedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  color: fillColor,
                  borderRadius: BorderRadius.circular(19),
                  border: Border.all(color: focusedBorderColor),
                ),
              ),
              errorPinTheme: defaultPinTheme.copyBorderWith(
                border: Border.all(color: Colors.redAccent),
              ),
            ),
          ),
          // TextButton(
          //   onPressed: () {
          //     focusNode.unfocus();
          //     formKey.currentState!.validate();
          //   },
          //   child: const Text('Validate'),
          // ),
        ],
      ),
    );
  }
}
