import 'dart:convert';

import 'package:animal_app/main.dart';
import 'package:animal_app/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:animal_app/presentation_layer/components/custombutten.dart';
import 'package:animal_app/presentation_layer/components/customtextfild.dart';
import 'package:animal_app/presentation_layer/components/navbar.dart';
import 'package:animal_app/presentation_layer/components/show_dialog.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/strings_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:animal_app/presentation_layer/screen/auth_screen/auth_widget/DoubleDivider.dart';
import 'package:animal_app/presentation_layer/screen/auth_screen/auth_widget/SocialIcon.dart';
import 'package:animal_app/presentation_layer/screen/auth_screen/auth_widget/TextWithButtonTExt.dart';
import 'package:animal_app/presentation_layer/screen/auth_screen/forgot%20_password_screen/forgot_password_screen.dart';
import 'package:animal_app/presentation_layer/screen/auth_screen/siginup_screen/siginup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:quickalert/quickalert.dart';

String email = "";
String pass = "";

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future<void> login(String email, String password) async {
      try {
        print('fffffffffffffffffffffffffffffffffffffffffff');
        // Make a post request with the email and password
        final response = await http.post(
          Uri.parse('https://elegantae.net/api/auth/login'),
          body: {
            'email': email,
            'password': pass,
            "user_type": "customer",
            "device_token": "Device Token From Firebase"
          },
        );

        if (response.statusCode == 200) {
          final message = jsonDecode(response.body)['message'];
          print(response.body);
          if (message == 'Incorrect Data') {
            showDilog(
              context,
              AppStrings.invalid_credentials.tr,
              type: QuickAlertType.info,
              onConfirmBtnTap: () {
                Get.back();
              },
            );
          } else {
            final data = jsonDecode(response.body)['data'];

            sharedPreferences.setInt('id', data['user']['id']);
            sharedPreferences.setString('name', data['user']['name'] ?? "");
            sharedPreferences.setString('email', data['user']['email']);
            sharedPreferences.setString('phone', data['user']['phone'] ?? "");
            sharedPreferences.setString(
                'address', data['user']['address'] ?? "");
            sharedPreferences.setString(
                'profile_image', data['user']['profile_image'] ?? "");
            sharedPreferences.setString('token', data['token']);
            Get.offAll(() => Example());
            print("==============================================");
          }
        } else {
          print('zzzzzzzzzzzzzzzzzzzzzzzzzz');
          showDilog(
            context,
            AppStrings.invalid_credentials.tr,
            type: QuickAlertType.info,
            onConfirmBtnTap: () {
              Get.back();
            },
          );
        }
      } catch (e) {
        print("error : $e");
        showDilog(
          context,
          AppStrings.invalid_credentials.tr,
          type: QuickAlertType.info,
          onConfirmBtnTap: () {
            Get.back();
          },
        );
      }
    }

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
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text(
                      'مرحبًا،\nمرحبًا بعودتك مجددا',
                      style: MangeStyles().getBoldStyle(
                        color: ColorManager.white,
                        fontSize: FontSize.s25,
                      ),
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
                    onChanged: (p0) {
                      email = p0.toString();
                    },
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
                    obsecuer: true,
                    onChanged: (p0) {
                      pass = p0.toString();
                    },
                    titel: 'كلمة السر',
                    width: 15,
                    height: 100,
                    icon: Icons.lock,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: deviceInfo.localWidth * 0.03,
                      ),
                      child: TextButton(
                        onPressed: () {
                          Get.to(() => ForgotPassword_Screen());
                        },
                        child: Text(
                          'نسيت كلمة السر',
                          style: MangeStyles().getBoldStyle(
                            color: ColorManager.kPrimary2,
                            fontSize: FontSize.s20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  CustomButton(
                    width: deviceInfo.localWidth * 0.8,
                    haigh: 60,
                    color: ColorManager.kPrimary,
                    text: 'تسجيل الدخول',
                    press: () {
                      if (email.isNotEmpty && pass.isNotEmpty) {
                        login(email, pass);
                      }

                      // Get.to(() => Example());
                    },
                  ),
                  DoubleDivider(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialIcon(
                        image: 'assets/icons/facebook.png',
                        onTap: () {},
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      SocialIcon(
                        image: 'assets/icons/google.png',
                        onTap: () {
                          signInWithGoogle();
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextWithButtonTExt(
                    text1: 'ليس لديك حساب؟',
                    text2: 'اشتراك',
                    onTap: () {
                      Get.to(() => SiginupScreen());
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

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  UserCredential googelInfo =
      await FirebaseAuth.instance.signInWithCredential(credential);
  if (googelInfo.user != null) {}

  return await googelInfo;
}
