import 'package:animal_app/presentation_layer/components/appbar1.dart';
import 'package:animal_app/presentation_layer/components/navbar.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../main.dart';
import '../../utlis/translate.dart';
import 'favorit_controller.dart';

class FavoritScreen extends StatelessWidget {
  const FavoritScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      appBar: appbarscreen('المفضله'),
      body: GetBuilder<FavoritController>(
        init: FavoritController(),
        builder: (controller) {
          return FutureBuilder(
            future: controller.getData(),
            // initialData: InitialData,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
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
                            backgroundImage: NetworkImage(
                                snapshot.data?[index]['image'].toString() ??
                                    ''),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 16),
                              Text(
                                translation(
                                    ar: snapshot.data?[index]['title'] ?? "",
                                    en: snapshot.data?[index]['titleEn'] ?? ""),
                                style: MangeStyles().getBoldStyle(
                                  color: ColorManager.ktextblackk,
                                  fontSize: FontSize.s18,
                                ),
                              ),
                              const SizedBox(height: 1),
                              Text(
                                'افحص التافصيل',
                                style: MangeStyles().getBoldStyle(
                                  color: Colors.grey,
                                  fontSize: FontSize.s18,
                                ),
                              ),
                            ],
                          ),
                          const Expanded(child: SizedBox()),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
