import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/screen/favorit_screen/favorit_screen.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/home_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

int pageIndex = 0;

// class Example extends StatefulWidget {
//   @override
//   _ExampleState createState() => _ExampleState();
// }

// class _ExampleState extends State<Example> {
//   GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
//   // static const List<Widget> _widgetOptions = <Widget>[
//   //   HomeScreen(),
//   //   // AddProperty(),

//   //   // SettingsScreen(),
//   // ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: CurvedNavigationBar(
//         key: _bottomNavigationKey,
//         index: 0,
//         height: 60.0,
//         items: <Widget>[
//           Icon(
//             Icons.home,
//             color: ColorManager.kTextblack,
//           ),
//           Icon(
//             Icons.add,
//             color: ColorManager.kTextblack,
//           ),
//           // Icon(
//           //   Icons.person,
//           //   color: ColorManager.kTextblack,
//           // ),
//           Icon(
//             Icons.settings,
//             color: ColorManager.kTextblack,
//           ),
//         ],
//         color: ColorManager.icon,
//         buttonBackgroundColor: ColorManager.icon,
//         backgroundColor: Color(0xff1c252b),
//         animationCurve: Curves.easeInOut,
//         animationDuration: Duration(seconds: 1),
//         onTap: (index) {
//           // print(
//           //   '$pageIndex : $index : ${sharedPreferences.getString('token')}',
//           // );
//           // if (index == 1 && sharedPreferences.getString('token') == null) {
//           //   print('cccc');
//           //   return aleartToken(context);
//           // }
//           setState(() {
//             pageIndex = index;
//             print('$pageIndex : $index');
//           });
//         },
//         letIndexChange: (index) => true,
//       ),
//       // body: Center(
//       //   child: _widgetOptions.elementAt(pageIndex),
//       // ),
//     );
//   }
// }

class CurvedNavigationBarCus extends StatefulWidget {
  const CurvedNavigationBarCus({super.key});

  @override
  State<CurvedNavigationBarCus> createState() => _CurvedNavigationBarCusState();
}

class _CurvedNavigationBarCusState extends State<CurvedNavigationBarCus> {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      key: _bottomNavigationKey,
      index: 0,
      height: 60.0,
      items: <Widget>[
        Icon(
          Icons.settings,
          color: ColorManager.kPrimary2,
        ),
        Image.asset(
          'assets/icons/Wishlist.png',
        ),
        Image.asset(
          'assets/icons/home.png',
          color: ColorManager.kPrimary2,
        ),
        Image.asset(
          'assets/icons/shopping.png',
        ),
        Icon(
          Icons.category_outlined,
          color: ColorManager.kPrimary2,
        ),
      ],
      color: ColorManager.background,
      buttonBackgroundColor: ColorManager.kPrimary,
      backgroundColor: ColorManager.background,
      animationCurve: Curves.easeInOut,
      animationDuration: Duration(seconds: 1),
      onTap: (index) {
        print('$pageIndex : $index');
        if (index == 1) {
          Get.to(() => FavoritScreen());
        } else if (index == 2) {
          Get.to(() => HomeScreen());
        }
        setState(
          () {
            pageIndex = index;
            print('$pageIndex : $index');
          },
        );
      },
      letIndexChange: (index) => true,
    );
  }
}
