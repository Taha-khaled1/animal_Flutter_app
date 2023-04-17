import 'package:animal_app/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:animal_app/presentation_layer/components/appbar1.dart';
import 'package:animal_app/presentation_layer/components/custombutten.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
import 'package:day_night_time_picker/lib/state/time.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../resources/font_manager.dart';

class Appointment extends StatefulWidget {
  const Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  Time _time = Time(hour: 11, minute: 30, second: 20);
  bool iosStyle = true;
  Time? isnewTime;
  void onTimeChanged(Time newTime) {
    setState(() {
      _time = newTime;
      print(newTime);
    });
  }

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
                        'حلاقة الشعر',
                        style: MangeStyles().getBoldStyle(
                          color: ColorManager.kPrimary2,
                          fontSize: FontSize.s18,
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      Text(
                        '100AED',
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
                  press: () {
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
}
