// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';


// int pageIndex = 0;

// class Example extends StatefulWidget {
//   @override
//   _ExampleState createState() => _ExampleState();
// }

// class _ExampleState extends State<Example> {
//   GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
//   static const List<Widget> _widgetOptions = <Widget>[
//     HomeScreen(),
//     AddProperty(),

//     SettingsScreen(),
//   ];
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
//           print(
//             '$pageIndex : $index : ${sharedPreferences.getString('token')}',
//           );
//           if (index == 1 && sharedPreferences.getString('token') == null) {
//             print('cccc');
//             return aleartToken(context);
//           }
//           setState(() {
//             pageIndex = index;
//             print('$pageIndex : $index');
//           });
//         },
//         letIndexChange: (index) => true,
//       ),
//       body: Center(
//         child: _widgetOptions.elementAt(pageIndex),
//       ),
//     );
//   }
// }
