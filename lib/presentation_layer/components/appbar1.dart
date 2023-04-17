import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget appbarscreen(String title) {
  return AppBar(
    elevation: 0,
    backgroundColor: ColorManager.background,
    leading: BackButton(
      color: ColorManager.kPrimary,
    ),
    centerTitle: true,
    title: Text(
      title,
      style: MangeStyles().getBoldStyle(
        color: ColorManager.ktextblackk,
        fontSize: FontSize.s18,
      ),
    ),
    toolbarHeight: 75,
  );
}
