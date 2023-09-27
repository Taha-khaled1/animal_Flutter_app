import 'dart:convert';

import 'package:animal_app/application_layer/utils/valid.dart';
import 'package:animal_app/main.dart';
import 'package:animal_app/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:animal_app/presentation_layer/components/appbar1.dart';
import 'package:animal_app/presentation_layer/components/custombutten.dart';
import 'package:animal_app/presentation_layer/components/customtextfild.dart';
import 'package:animal_app/presentation_layer/components/show_dialog.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/strings_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:animal_app/presentation_layer/resources/values_manager.dart';
import 'package:animal_app/presentation_layer/screen/account_screen/widget/customListtile.dart';
import 'package:animal_app/presentation_layer/screen/edit_profile_screen/controller/edit_profile_controller.dart';
import 'package:animal_app/presentation_layer/utlis/image_checker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../application_layer/utils/statusrequst.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final GlobalKey<FormState> formkeysigin = GlobalKey();
  StatusRequest statusRequest1 = StatusRequest.none;
  String? name, phone, email, address;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      appBar: appbarscreen(AppStrings.account_information.tr),
      body: InfoWidget(
        builder: (context, deviceInfo) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: deviceInfo.localWidth * AppDeviceSize.m5,
              ),
              child: Form(
                key: formkeysigin,
                child: ListView(
                  shrinkWrap: false,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: NetworkImage(
                          imageNetworkCheck(
                            sharedPreferences.getString("profile_image"),
                          ),
                        ),
                        child: Transform.translate(
                          offset: const Offset(40, 50),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Icon(Icons.edit_outlined),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 1.2,
                    ),
                    Text(
                      AppStrings.name.tr,
                      style: MangeStyles().getBoldStyle(
                        color: ColorManager.kTextlightgray,
                        fontSize: FontSize.s20,
                      ),
                    ),
                    CustomTextfeild(
                      inialvalue: sharedPreferences.getString("name"),
                      // inialvalue: sharedPreferences.getString('name'),
                      valid: (p0) {
                        return validInput(p0.toString(), 3, 100, 'type');
                      },
                      onsaved: (p0) {
                        return name = p0.toString();
                      },
                      titel: AppStrings.enter.tr,
                      width: deviceInfo.localWidth * 0.02,
                      height: 70,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      AppStrings.email.tr,
                      style: MangeStyles().getBoldStyle(
                        color: ColorManager.kTextlightgray,
                        fontSize: FontSize.s20,
                      ),
                    ),
                    CustomTextfeild(
                      inialvalue: sharedPreferences.getString('email'),
                      //     ? 'لايوجد رقم هاتف'
                      //     : sharedPreferences.getString('phone')!,
                      valid: (p0) {
                        return validInput(p0.toString(), 5, 100, 'email');
                      },
                      onsaved: (p0) {
                        return email = p0.toString();
                      },
                      titel: AppStrings.enter.tr,
                      width: deviceInfo.localWidth * 0.02,
                      height: 70,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'رقم الهاتف',
                      style: MangeStyles().getBoldStyle(
                        color: ColorManager.kTextlightgray,
                        fontSize: FontSize.s20,
                      ),
                    ),
                    CustomTextfeild(
                      inialvalue: sharedPreferences.getString('phone'),
                      //     ? 'لايوجد رقم هاتف'
                      //     : sharedPreferences.getString('phone')!,
                      valid: (p0) {
                        return validInput(p0.toString(), 1, 100, 'type');
                      },
                      onsaved: (p0) {
                        return phone = p0.toString();
                      },
                      titel: AppStrings.enter.tr,
                      width: deviceInfo.localWidth * 0.02,
                      height: 70,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      AppStrings.add_address.tr,
                      style: MangeStyles().getBoldStyle(
                        color: ColorManager.kTextlightgray,
                        fontSize: FontSize.s20,
                      ),
                    ),
                    CustomTextfeild(
                      inialvalue: sharedPreferences.getString('address'),
                      // readOnly: true,
                      isBoarder: BorderStyle.none,
                      valid: (p0) {
                        return validInput(p0.toString(), 5, 100, 'address');
                      },
                      onsaved: (p0) {
                        return address = p0.toString();
                      },
                      titel: 'Abudabhi 201,82299',
                      width: deviceInfo.localWidth * 0.02,
                      height: 70,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: deviceInfo.localWidth * 0.02),
                      child: CustomButton(
                        width: deviceInfo.localWidth * 0.9,
                        haigh: 60,
                        color: ColorManager.kPrimary,
                        text: AppStrings.save.tr,
                        press: () async {
                          if (formkeysigin.currentState!.validate()) {
                            formkeysigin.currentState!.save();
                            try {
                              await updateProfile(
                                name: name!,
                                phone: phone!,
                                address: address ??
                                    'Abudabhi 201,82299 ابوظبي', // Replace with a variable if the address can change.
                                photoPath: phone ??
                                    "", // You'll need to handle photo uploads separately.
                              );
                              // Maybe show a success snackbar/message to the user.
                            } catch (error) {
                              // Handle any errors that might occur during the API call.
                              print(error);
                            }
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> updateProfile({
    required String name,
    required String phone,
    required String address,
    required String photoPath,
  }) async {
    print(sharedPreferences.getString('token'));
    const url = 'https://elegantae.net/api/profile/update-profile';
    var headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer ${sharedPreferences.getString('token')}',
      // 'Cookie':
      //     'XSRF-TOKEN=eyJpdiI6InBkTTNJL0ZtQXgwNGpLblVBOXMyU0E9PSIsInZhbHVlIjoid3l6M3pnRXV4bWJibEhxWkorRUhiRGh4OWFMY3JJenFqNlpidkRsakVNQklWcWt6aTNQSTVnTTR6c29RY3k4cTN4clRuZC85MHNyL1BaY3Vic1hHeHdIWFNWTzZnbmtOVjFZZjgraDM1azFabVIzVk96WDVYUDd2c3RrMkM5SXMiLCJtYWMiOiIxMzNmY2M1MTA3NWFkZDdmNTVkNmM0MDZiNzFiZjdhZDQwNTMxMGE0MTZkY2M0MDFhMzgwYzc2YTViZDJmYzI4IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IkpzTTJYdEFEZy9KTmVvU0xGWEJxM1E9PSIsInZhbHVlIjoiUjYwd3BNZEVSZ1NMTHpXcUl4cStwSFFTeFlLV1MzWkhUMmgyZjZEdU53UldiVlQrQm43Y0d2V2tEUU1PbE5GSmIyYnZ4NkRydS91bEp1djdYU0RoanRDUFo3a0R1UUhZZjJQbTd1ODZvOUdLWWIxU3ZpanlCV3BFVnJkRzRFWjgiLCJtYWMiOiI3Nzk0ODg2ZDkxZDIxYmUxOWZhZjUwNTA1Njc0MTk1MTY2MmM0N2IwMWFmMjI3NDE3MWFhMGY4MmQ1OWNkMjBlIiwidGFnIjoiIn0%3D',
    };

    final body = jsonEncode({
      'name': name,
      'Number': phone,
      'phone': phone,
      'address': address,
      // 'About': "About",
      // 'Gender': "male",
      'email': email,
      // 'DOB': "DOB",
      // 'street_address': "street_address",
      // 'image': photoPath,
    });

    final response =
        await http.post(Uri.parse(url), headers: headers, body: body);

    if (response.statusCode == 200) {
      // Handle successful response
      var data = jsonDecode(response.body);
      if (data['success'] == true) {
        sharedPreferences.setString('email', email!);
        sharedPreferences.setString('phone', phone!);
        sharedPreferences.setString('name', name!);
        sharedPreferences.setString('address', address!);
        print('success updating profile: ${response.body}');
        Get.back();
        showDilog(context, "تم التحديث بنجاح");
      } else {
        // Handle the error message if any.
        print(data['message']);
      }
    } else {
      // Handle the error
      print('Error updating profile: ${response.body}');
    }
  }
}

class Editpay extends StatelessWidget {
  const Editpay({
    super.key,
    required this.size,
  });
  final double size;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EditProfileController>(
      init: EditProfileController(),
      builder: (controller) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: size),
          child: Container(
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/credit-card.png',
                  width: 55,
                  height: 45,
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  controller.pay,
                  style: MangeStyles().getBoldStyle(
                    color: ColorManager.ktextblackk,
                    fontSize: FontSize.s22,
                  ),
                ),
                const Expanded(child: SizedBox()),
                TextButton(
                  onPressed: () {
                    handleAttachmentPressed(context, controller);
                  },
                  child: Text(
                    'تعديل',
                    style: MangeStyles().getBoldStyle(
                      color: ColorManager.kPrimary,
                      fontSize: FontSize.s18,
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

String x = '';
void handleAttachmentPressed(
    BuildContext context, EditProfileController controller) {
  showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) => SafeArea(
      child: SizedBox(
        height: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            CustomListtile(
              // color: ColorManager.ktextblackk,
              widget: Image.asset('assets/icons/bank.png'),
              onTap: () async {
                controller.changepay('تحويل بنكي');
              },
              titel: 'تحويل بنكي',
            ),
            CustomListtile(
              widget: Image.asset('assets/icons/visa.png'),
              onTap: () {
                controller.changepay('فيزا كارد');
              },
              titel: 'فيزا كارد',
            ),
            CustomListtile(
              widget: const Icon(
                Icons.attach_money,
                textDirection: TextDirection.rtl,
              ),
              onTap: () {
                controller.changepay('تحويل رقمي');
              },
              titel: 'تحويل رقمي',
            ),
          ],
        ),
      ),
    ),
  );
}
                    // HandlingDataView(
                    //   statusRequest: statusRequest1,
                    //   widget: CustomButton(
                    //     width: deviceInfo.localWidth,
                    //     haigh: 60,
                    //     color: ColorManager.kPrimary,
                    //     text: 'حفظ',
                    //     press: () async {
                    //       if (formkeysigin.currentState!.validate()) {
                    //         formkeysigin.currentState!.save();

                    //         statusRequest1 = StatusRequest.loading;
                    //         setState(() {});
                    //         var respon = await cahngeProfileRes(name!, phone!);
                    //         statusRequest1 = handlingData(respon);
                    //         try {
                    //           if (StatusRequest.success == statusRequest1) {
                    //             statusRequest1 = StatusRequest.none;
                    //             sharedPreferences.setString(
                    //                 'phone', phone.toString());

                    //             sharedPreferences.setString(
                    //                 'name', name.toString());
                    //             Get.back();
                    //             Get.back();
                    //             showDilog(context, 'تم تغير المعلومات بنجاح');
                    //           } else {
                    //             statusRequest1 = StatusRequest.serverfailure;
                    //           }
                    //         } catch (e) {
                    //           statusRequest1 = StatusRequest.erorr;
                    //         }

                    //         setState(() {});
                    //       }
                    //     },
                    //   ),
                    // ),
