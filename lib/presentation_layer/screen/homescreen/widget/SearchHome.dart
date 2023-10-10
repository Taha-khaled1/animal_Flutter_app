import 'package:animal_app/main.dart';
import 'package:animal_app/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:animal_app/presentation_layer/resources/strings_manager.dart';
import 'package:animal_app/presentation_layer/screen/more_product/more_product.dart';
import 'package:flutter/material.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:get/get.dart';

class SearchHome extends StatelessWidget {
  const SearchHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context, deviceInfo) {
        return Container(
          margin: EdgeInsets.symmetric(
              vertical: 8, horizontal: deviceInfo.localWidth * 0.05),
          decoration: BoxDecoration(
            border: Border.all(color: ColorManager.kPrimary, width: 1.5),
            color: ColorManager.background,
            borderRadius: BorderRadius.circular(20),
            // gradient: ColorManager.y,
            boxShadow: [
              // BoxShadow(
              //   color: Colors.grey,
              //   blurRadius: 5.0,
              //   spreadRadius: 2.0,
              //   offset: Offset(2.0, 2.0),
              // ),
            ],
          ),
          child: TextFormField(
            onChanged: (value) {
              sharedPreferences.setString('search', value);
            },
            style: TextStyle(color: ColorManager.white, fontSize: 14),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  width: 1,
                  color: ColorManager.kPrimary,
                ),
              ),
              hintText: ' ${AppStrings.search.tr} ......',
              prefixIcon: IconButton(
                onPressed: () {
                  if (sharedPreferences.getString('search') != null) {
                    Get.to(() => MoreProductScreen());
                  }
                },
                icon: Icon(
                  Icons.search,
                  size: 28,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
