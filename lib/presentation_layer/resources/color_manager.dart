import 'package:flutter/material.dart';

class ColorManager {
  static Color kPrimary2 = Color(0xffAA5908);
  static const Color white = const Color(0xff1c252c);
  static Color ktextw = Color(0xff709AFF);
  static Color kTextblack = Color(0xffFFFFFF);
  static Color ktextblackk = Color(0xff050414);
  static Color background = Color(0xffFfffff);
  static Color grey2 = Color(0xffEDEDED);
  static Color icon = Color(0xff709AFF);
  static Color kPrimary = Color(0xff1BBCB6);
  static const primaryColorbu = Color(0xFF2697FF);
  static const secondaryColor = Color(0xFF2A2D3E);
  static const bgColor = Color(0xFF8c8c8c);
  // static Color kPrimary2 =  Color(0xff1A428A);
  static Color kTextlightgray = Color(0xffA8A8A8);
  // static Color kTextgray =  Color(0xffBCBCBC);
  // static Color kTextblue =  Color(0xff385CAD);
  // static Color kTextblack =  Color(0xff000000);
  // // new colors
  // static Color backgroundcatogeryimage =  Color(0xff1d63aa);
  // // static Color lightPrimary =  Color(0xCCd17d11); // color with 80% opacity
  // static Color backgroundpersonalimage =  Color(0xff63edff);
  // static Color grey2 =  Color(0xffEDEDED);
  // static Color switchcolor =  Color(0xff86FFC5);
  // static Color white =  Color(0xffFFFFFF);
  // static Color navbar =  Color(0xffC0C0C0);
  // static Color ktextlabny =  Color(0xff3AB0FF);
  static Color error = Color(0xffe61f34); // red color
  static Color controlercolor = Color(0xff385CAD);
  // //------------------------------------------------------------------------
  static Color containacolor1 = Color(0xff1817b3);
  static Color textfieldColor = Color(0xff1BBCB6);
  static Color containacolor2 = Color(0xff709AFF);
  static Color containacolor3 = Color(0xff223f5d);

  Gradient x = LinearGradient(
    colors: [
      Color(0xff66a6ff),
      Color(0xff89f7fe),
    ],
  );

  static Gradient y = LinearGradient(
    colors: [
      Color(0xff6991c7),
      Color(0xffa3bded),
    ],
  );

  static Gradient z = LinearGradient(
    colors: [
      Color(0xff000000),
      Color(0xff434343),
    ],
  );
  static Gradient t = LinearGradient(
    colors: [
      containacolor2,
      kPrimary2,
    ],
  );

  List<Color> colors = [
    Colors.purple,
    Colors.pink,
    Colors.amber[600]!,
    Colors.teal
  ];
}
