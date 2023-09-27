import 'dart:convert';

import 'package:animal_app/data_layer/models/home_model.dart';
import 'package:animal_app/main.dart';
import 'package:animal_app/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:animal_app/presentation_layer/components/appbar1.dart';
import 'package:animal_app/presentation_layer/components/custombutten.dart';
import 'package:animal_app/presentation_layer/components/show_dialog.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/strings_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:animal_app/presentation_layer/screen/auth_screen/login_screen/login_screen.dart';
import 'package:animal_app/presentation_layer/utlis/is_login/is_login.dart';
import 'package:animal_app/presentation_layer/utlis/translate.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../../../resources/font_manager.dart';
import 'package:http/http.dart' as http;

class Appointment extends StatefulWidget {
  const Appointment(
      {super.key,
      required this.price,
      required this.name,
      required this.nameEn,
      required this.id,
      required this.vendor_id});
  final double price;
  final String name, nameEn;
  final int id, vendor_id;
  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  Time _time = Time(hour: 11, minute: 30, second: 20);
  bool iosStyle = true;
  String data = '';
  Time? isnewTime;
  void onTimeChanged(Time newTime) {
    setState(() {
      _time = newTime;
      print(newTime);
    });
  }

  var paymentIntent = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarscreen('حجز الخدمه'),
      backgroundColor: ColorManager.background,
      body: InfoWidget(
        builder: (context, deviceInfo) {
          return ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                child: Text(
                  'معلومات الخدمه',
                  style: MangeStyles().getBoldStyle(
                    color: ColorManager.ktextblackk,
                    fontSize: FontSize.s18,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: deviceInfo.localWidth * 0.05),
                width: deviceInfo.localWidth * 0.9,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(2, 4),
                      color: Colors.grey[400]!,
                    ),
                    BoxShadow(
                      offset: Offset(-2, -3),
                      color: Colors.grey[400]!,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: ColorManager.kPrimary2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Text(
                        translation(ar: widget.name, en: widget.nameEn),
                        style: MangeStyles().getBoldStyle(
                          color: ColorManager.kPrimary2,
                          fontSize: FontSize.s18,
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      Text(
                        '${widget.price}AED',
                        style: MangeStyles().getBoldStyle(
                          color: ColorManager.kPrimary2,
                          fontSize: FontSize.s18,
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: ColorManager.kPrimary2,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Text(
                  'اختار تاريخ الحجز',
                  style: MangeStyles().getBoldStyle(
                    color: ColorManager.ktextblackk,
                    fontSize: FontSize.s18,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SfDateRangePicker(
                selectionColor: ColorManager.kPrimary,
                todayHighlightColor: ColorManager.kPrimary2,
                onSelectionChanged: (dateRangePickerSelectionChangedArgs) {
                  data = dateRangePickerSelectionChangedArgs.value
                      .toString()
                      .substring(0, 10);
                  print("object : $data");
                  print(
                    dateRangePickerSelectionChangedArgs.value
                        .toString()
                        .substring(0, 10),
                  );
                },
                selectionMode: DateRangePickerSelectionMode.single,
                initialSelectedRange: PickerDateRange(
                  DateTime.now().subtract(
                    const Duration(days: 4),
                  ),
                  DateTime.now().add(
                    const Duration(days: 3),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Text(
                  'اختار وقت الحجز',
                  style: MangeStyles().getBoldStyle(
                    color: ColorManager.ktextblackk,
                    fontSize: FontSize.s18,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    showPicker(
                      context: context,
                      value: _time,
                      onChange: onTimeChanged,
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: deviceInfo.localWidth * 0.05),
                  width: deviceInfo.localWidth * 0.9,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(2, 4),
                        color: Colors.grey[400]!,
                      ),
                      BoxShadow(
                        offset: Offset(-2, -3),
                        color: Colors.grey[400]!,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: ColorManager.kPrimary2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        Text(
                          'الوقت الحدد',
                          style: MangeStyles().getBoldStyle(
                            color: ColorManager.kPrimary2,
                            fontSize: FontSize.s18,
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Text(
                          '${_time.hour}:${_time.minute}',
                          style: MangeStyles().getBoldStyle(
                            color: ColorManager.kPrimary2,
                            fontSize: FontSize.s18,
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: ColorManager.kPrimary2,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: deviceInfo.localWidth * 0.05),
                child: CustomButton(
                  width: 185,
                  haigh: 60,
                  color: ColorManager.kPrimary,
                  text: 'الاستمرار لعملية الدفع',
                  press: () async {
                    if (isLogin()) {
                      if (data.isEmpty) {
                        return;
                      }
                      makePayment();
                    } else {
                      showDilog(
                        context,
                        AppStrings.about_content.tr,
                        onConfirmBtnTap: () {
                          Get.to(() => LoginScreen());
                        },
                      );
                    }

                    // Get.to(() => Appointment());
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Future<void> makePayment() async {
    try {
      //STEP 1: Create Payment Intent
      paymentIntent = await createPaymentIntent(
          ((widget.price * 100).round()).toString(), 'aed');

      //STEP 2: Initialize Payment Sheet
      await Stripe.instance
          .initPaymentSheet(
              paymentSheetParameters: SetupPaymentSheetParameters(
                  paymentIntentClientSecret: paymentIntent![
                      'client_secret'], //Gotten from payment intent
                  style: ThemeMode.light,
                  merchantDisplayName: 'Ikay'))
          .then((value) {});

      //STEP 3: Display Payment sheet
      displayPaymentSheet();
    } catch (err) {
      print(err.toString());
    }
  }

  displayPaymentSheet() async {
    try {
      await Stripe.instance.presentPaymentSheet().then((value) async {
        paymentIntent =
            null; // Clear paymentIntent variable after successful payment.
        print('Payment made successfully.');
        await orderItems();
        showDilog(context, "Payment made successfully");
      }).onError((error, stackTrace) {
        showDilog(context, "Error while displaying Payment Sheet");
        print('Error while displaying Payment Sheet: $error');
      });
    } on StripeException catch (e) {
      showDilog(context, "Error while displaying Payment Sheet");

      print('Stripe error: $e');
    } catch (e) {
      showDilog(context, "Error while displaying Payment Sheet");

      print('General error while displaying Payment Sheet: $e');
    }
  }

  createPaymentIntent(String amount, String currency) async {
    try {
      //Request body
      Map<String, dynamic> body = {
        'amount': amount,
        'currency': currency,
      };

      //Make post request to Stripe
      var response = await http.post(
        Uri.parse('https://api.stripe.com/v1/payment_intents'),
        headers: {
          'Authorization':
              'Bearer sk_test_51MU9CFCCrii3tAGhjMS2lA168mdfX5xkvJpdM5aBOWVDyaczVSCyPDI4UNilOo6QkK8gDr8NaLiwxLKjY5Bv2HqT006FQ6Vg7g',
          'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: body,
      );
      return json.decode(response.body);
    } catch (err) {
      throw Exception(err.toString());
    }
  }

  Future<void> orderItems() async {
    print(sharedPreferences.getString("token"));
    print("+++++++++++++++++++++++++++++++++");
    final url = 'https://elegantae.net/api/client-account/service-order';
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${sharedPreferences.getString("token")}',
    };

    final body = jsonEncode({
      "vendor_id": widget.vendor_id,
      "service_id": widget.id,
      "date": "$data ${_time.hour}:${_time.minute}",
      "payment_method": "stripe"
    });

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: headers,
        body: body,
      );

      if (response.statusCode == 200) {
        // Handle success response
        print('Order placed successfully.');
      } else {
        // Handle error response
        print('Error placing order: ${response.body}');
      }
    } catch (error) {
      print('Error occurred: $error');
    }
  }
}
