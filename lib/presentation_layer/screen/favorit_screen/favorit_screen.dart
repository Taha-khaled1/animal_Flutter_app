import 'package:animal_app/presentation_layer/components/appbar1.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:flutter/material.dart';

class FavoritScreen extends StatelessWidget {
  const FavoritScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      appBar: appbarscreen('المفضله'),
      body: Container(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              height: 100,
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    backgroundImage: AssetImage('assets/images/catbag.png'),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 16),
                      Text(
                        'قطه',
                        style: MangeStyles().getBoldStyle(
                          color: ColorManager.ktextblackk,
                          fontSize: FontSize.s18,
                        ),
                      ),
                      SizedBox(height: 1),
                      Text(
                        'افحص التافصيل',
                        style: MangeStyles().getBoldStyle(
                          color: Colors.grey,
                          fontSize: FontSize.s18,
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
