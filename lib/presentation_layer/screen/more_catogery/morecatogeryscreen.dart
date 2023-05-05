import 'package:animal_app/presentation_layer/components/appbar1.dart';
import 'package:animal_app/presentation_layer/components/navbar.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/catogery_card.dart';
import 'package:flutter/material.dart';

class MoreCatogeryScreen extends StatelessWidget {
  const MoreCatogeryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      appBar: appbarscreen('الخدمات'),
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Wrap(
            alignment: WrapAlignment.start,
            children: [
              for (int i = 0; i < 15; i++) CatogeryCard(),
            ],
          ),
        ),
      ),
    );
  }
}
