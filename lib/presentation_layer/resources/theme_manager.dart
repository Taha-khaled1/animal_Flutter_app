import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:flutter/material.dart';
// import 'package:animal_app/presentation_layer/resources/color_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    iconTheme: IconThemeData(color: ColorManager.icon),
    // main colors
    //   kTextblackColor: ColorManager.kkTextblack,
    fontFamily: 'Cairo',
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.black.withOpacity(0.8),
        fontWeight: FontWeight.bold,
      ),
      headline3: TextStyle(
        color: Colors.black.withOpacity(0.8),
        fontWeight: FontWeight.bold,
      ),
      headline5: TextStyle(
        color: Colors.black.withOpacity(0.8),
        fontWeight: FontWeight.bold,
      ),
      headline4: TextStyle(
        color: Colors.black.withOpacity(0.7),
        fontWeight: FontWeight.bold,
      ),
    ),
    // ripple effect color
    // cardview theme
    // cardTheme: CardTheme(
    //     color: ColorManager.white,
    //     shadowColor: ColorManager.grey,
    //     elevation: AppSize.s4),
    // // app bar theme
    // appBarTheme: AppBarTheme(
    //   centerTitle: true,
    //   color: ColorManager.kkTextblack2,
    //   elevation: AppSize.s4,
    //   shadowColor: ColorManager.kTextblack,
    //   titleTextStyle: MangeStyles()
    //       .getBoldStyle(fontSize: FontSize.s16, color: ColorManager.white),
    // ),
    // // // button theme
    // buttonTheme: ButtonThemeData(
    //   shape: const StadiumBorder(),
    //   disabledColor: ColorManager.error,
    //   buttonColor: ColorManager.kkTextblack,
    //   splashColor: ColorManager.kkTextblack,
    // ),

    // // elevated button them
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //     style: ElevatedButton.styleFrom(
    //         textStyle: getRegularStyle(
    //             color: ColorManager.white, fontSize: FontSize.s17),
    //         kTextblack: ColorManager.kTextblack,
    //         shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(AppSize.s12)))),

    // textTheme: TextTheme(
    //     displayLarge: getSemiBoldStyle(
    //         color: ColorManager.darkGrey, fontSize: FontSize.s16),
    //     headlineLarge: getSemiBoldStyle(
    //         color: ColorManager.darkGrey, fontSize: FontSize.s16),
    //     headlineMedium: getRegularStyle(
    //         color: ColorManager.darkGrey, fontSize: FontSize.s14),
    //     titleMedium:
    //         getMediumStyle(color: ColorManager.kTextblack, fontSize: FontSize.s16),
    //     titleSmall:
    //         getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16),
    //     bodyLarge: getRegularStyle(color: ColorManager.grey1),
    //     bodySmall: getRegularStyle(color: ColorManager.grey),
    //     bodyMedium:
    //         getRegularStyle(color: ColorManager.grey2, fontSize: FontSize.s12),
    //     labelSmall:
    //         getBoldStyle(color: ColorManager.kTextblack, fontSize: FontSize.s12)),

    // // input decoration theme (text form field)
    // inputDecorationTheme: InputDecorationTheme(
    //     // content padding
    //     contentPadding: const EdgeInsets.all(AppPadding.p8),
    //     // hint style
    //     hintStyle: MangeStyles()
    //         .getRegularStyle(color: ColorManager.grey2, fontSize: FontSize.s14),
    //     labelStyle: MangeStyles()
    //         .getMediumStyle(color: ColorManager.grey2, fontSize: FontSize.s14),
    //     errorStyle: MangeStyles().getRegularStyle(color: ColorManager.error),

    //     // enabled border style
    //     enabledBorder: OutlineInputBorder(
    //         borderSide:
    //             BorderSide(color: ColorManager.grey2, width: AppSize.s1_5),
    //         borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),

    //     // focused border style
    //     focusedBorder: OutlineInputBorder(
    //         borderSide:
    //             BorderSide(color: ColorManager.kTextblack, width: AppSize.s1_5),
    //         borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),

    //     // error border style
    // errorBorder: OutlineInputBorder(
    //     borderSide:
    //         BorderSide(color: ColorManager.error, width: AppSize.s1_5),
    //     borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
    // // focused border style
    // focusedErrorBorder: OutlineInputBorder(
    //     borderSide:
    //         BorderSide(color: ColorManager.kTextblack, width: AppSize.s1_5),
    //     borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)))),
    // // label style
  );
}
