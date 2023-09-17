import 'package:animal_app/presentation_layer/components/appbar1.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/catogery_card.dart';
import 'package:animal_app/presentation_layer/screen/shimmer_screen/shimmer_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utlis/translate.dart';
import 'morecatogery_controlller/morecatogery_controlller.dart';

class MoreCatogeryScreen extends StatelessWidget {
  const MoreCatogeryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      appBar: appbarscreen('الخدمات'),
      body: GetBuilder<MorecatogeryController>(
        init: MorecatogeryController(),
        initState: (_) {},
        builder: (_) {
          return !_.isload
              ? Align(
                  alignment: Alignment.topCenter,
                  child: SingleChildScrollView(
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      children: [
                        for (int i = 0;
                            i < (_.serviceModel!.serviceCardModel?.length ?? 0);
                            i++)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CatogeryCard(
                              image:
                                  _.serviceModel!.serviceCardModel?[i].imageUrl,
                              name: translation(
                                  ar: _.serviceModel!.serviceCardModel?[i]
                                          .arServiceName ??
                                      "",
                                  en: _.serviceModel!.serviceCardModel?[i]
                                          .enServiceName ??
                                      ""),
                            ),
                          ),
                      ],
                    ),
                  ),
                )
              : ShimmerLayout();
        },
      ),
    );
  }
}
