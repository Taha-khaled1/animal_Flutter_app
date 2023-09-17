import 'package:flutter_html/flutter_html.dart';
import 'package:animal_app/presentation_layer/components/appbar1.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:animal_app/presentation_layer/resources/strings_manager.dart';
import 'package:get/get.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 1,
        backgroundColor: ColorManager.background,
      ),
      backgroundColor: ColorManager.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Column(
            children: <Widget>[
              appbarscreen(AppStrings.about_us.tr),
              Html(
                data: AppStrings.about_content.tr,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
