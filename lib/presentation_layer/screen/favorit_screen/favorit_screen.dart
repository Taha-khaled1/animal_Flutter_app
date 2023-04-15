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
      appBar: appbarscreen('المفضله'),
      body: Container(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              width: double.infinity,
              child: Row(
                children: [
                  CircleAvatar(),
                  Column(
                    children: [
                      Text(
                        'قطه',
                        style: MangeStyles().getBoldStyle(
                          color: ColorManager.kTextblack,
                          fontSize: FontSize.s18,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'افحص التافصيل',
                        style: MangeStyles().getBoldStyle(
                          color: ColorManager.kTextblack,
                          fontSize: FontSize.s18,
                        ),
                      ),
                    ],
                  ),
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
