import 'package:flutter/material.dart';

import 'font_manager.dart';

class MangeStyles {
  TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color,
      {bool? isover}) {
    return TextStyle(
      fontSize: fontSize,
      fontFamily: FontConstants.fontFamily,
      color: color,
      fontWeight: fontWeight,
      overflow: isover == null ? TextOverflow.ellipsis : null,
    );
  }

// regular style

  TextStyle getRegularStyle(
      {double fontSize = FontSize.s12, required Color color, bool? isover}) {
    return _getTextStyle(fontSize, FontWeightManager.regular, color);
  }

// medium style

  TextStyle getMediumStyle(
      {double fontSize = FontSize.s12, required Color color, bool? isover}) {
    return _getTextStyle(fontSize, FontWeightManager.medium, color);
  }

// medium style

  TextStyle getLightStyle(
      {double fontSize = FontSize.s12, required Color color, bool? isover}) {
    return _getTextStyle(fontSize, FontWeightManager.light, color);
  }

// bold style

  TextStyle getBoldStyle(
      {double fontSize = FontSize.s12, required Color color, bool? isover}) {
    return _getTextStyle(fontSize, FontWeightManager.bold, color);
  }

// semibold style

  TextStyle getSemiBoldStyle(
      {double fontSize = FontSize.s12, required Color color, bool? isover}) {
    return _getTextStyle(fontSize, FontWeightManager.semiBold, color);
  }

  TextStyle getTitel(
      {double fontSize = FontSize.s12, required Color color, bool? isover}) {
    return _getTextStyle(fontSize, FontWeightManager.semiBold, color);
  }
}
