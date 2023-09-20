import 'package:animal_app/main.dart';
import 'package:animal_app/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:animal_app/presentation_layer/components/custombutten.dart';
import 'package:animal_app/presentation_layer/components/customtextfild.dart';
import 'package:animal_app/presentation_layer/components/navbar.dart';
import 'package:animal_app/presentation_layer/components/show_dialog.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:animal_app/presentation_layer/screen/auth_screen/auth_widget/TextWithButtonTExt.dart';
import 'package:animal_app/presentation_layer/screen/auth_screen/login_screen/login_screen.dart';
import 'package:animal_app/presentation_layer/screen/auth_screen/siginup_screen/widget/AccpetPrivecy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:quickalert/models/quickalert_type.dart';

class SiginupScreen extends StatefulWidget {
  const SiginupScreen({Key? key}) : super(key: key);

  @override
  State<SiginupScreen> createState() => _SiginupScreenState();
}

class _SiginupScreenState extends State<SiginupScreen> {
  final _formKey = GlobalKey<FormState>();

// 2. Create variables to hold the form data
  String? _name;
  String? _email;
  String? _password;
  String? _passwordConfirmation;
  bool isload = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      body: Container(
        alignment: Alignment.center,
        child: Form(
          key: _formKey,
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
                      valid: (value) {
                        if (value!.isEmpty) return 'Please enter a name';
                        return null;
                      },
                      onsaved: (value) {
                        _name = value;
                      },
                      titel: 'الاسم الكامل',
                      width: 15,
                      height: 100,
                      icon: Icons.person,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextfeild(
                      valid: (value) {
                        if (value!.isEmpty) return 'Please enter an email';
                        // You can add more validation for email format
                        return null;
                      },
                      onsaved: (value) {
                        _email = value;
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
                      obsecuer: true,
                      valid: (value) {
                        if (value!.isEmpty) return 'Please enter a password';
                        return null;
                      },
                      onsaved: (value) {
                        _password = value;
                      },
                      onChanged: (value) {
                        _password = value;
                      },
                      titel: 'كلمة السر',
                      width: 15,
                      height: 100,
                      icon: Icons.lock,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextfeild(
                      obsecuer: true,
                      valid: (value) {
                        if (value != _password) return 'Passwords do not match';
                        return null;
                      },
                      onsaved: (value) {
                        _passwordConfirmation = value;
                      },
                      titel: 'تاكيد كلمة السر',
                      width: 15,
                      height: 100,
                      icon: Icons.lock,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    AccpetPrivecy(),
                    !isload
                        ? CustomButton(
                            width: deviceInfo.localWidth * 0.8,
                            haigh: 60,
                            color: ColorManager.kPrimary,
                            text: 'انشاء الحساب',
                            press: () async {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                bool isRegistered = await registerUser(
                                  name: _name!,
                                  email: _email!,
                                  password: _password!,
                                  passwordConfirmation: _passwordConfirmation!,
                                  userType:
                                      'customer', // This is static as per your API spec
                                );

                                if (isRegistered) {
                                  print('Successfully registered!');
                                  Get.offAll(() => Example());
                                } else {
                                  isload = false;
                                  setState(() {});
                                  print('Failed to register.');
                                  showDilog(
                                    context,
                                    "Failed to register.",
                                    type: QuickAlertType.error,
                                  );
                                }
                              }
                            },
                          )
                        : Center(
                            child: CircularProgressIndicator(),
                          ),
                    SizedBox(
                      height: 15,
                    ),
                    TextWithButtonTExt(
                      text1: 'امتلك  حساب؟',
                      text2: 'تسجيل الدخول',
                      onTap: () async {
                        Get.to(() => LoginScreen());
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Future<bool> registerUser({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
    required String userType,
  }) async {
    isload = true;
    setState(() {});
    final String url = 'https://elegantae.net/api/auth/register';
    final response = await http.post(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: jsonEncode({
        'name': name,
        'email': email,
        'password': password,
        'password_confirmation': passwordConfirmation,
        'user_type': userType,
      }),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body)['data'];

      sharedPreferences.setInt('id', data['user']['id']);
      sharedPreferences.setString('name', data['user']['name']);
      sharedPreferences.setString('email', data['user']['email']);
      sharedPreferences.setString('phone', data['user']['Number']);
      sharedPreferences.setString('token', data['token']);
      return true;
    } else {
      print('Registration failed with status: ${response.statusCode}.');
      print('Error body: ${response.body}.');
      return false;
    }
  }
}
