import 'package:animal_app/presentation_layer/components/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/components/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/components/resources/styles_manager.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget appbar(String title) {
  return AppBar(
    elevation: 0,
    backgroundColor: ColorManager.kPrimary2,
    leading: BackButton(
      color: ColorManager.kTextblack,
    ),
    centerTitle: true,
    title: Text(
      title,
      style: MangeStyles().getBoldStyle(
        color: ColorManager.kTextblack,
        fontSize: FontSize.s18,
      ),
    ),
    toolbarHeight: 75,
  );
}
