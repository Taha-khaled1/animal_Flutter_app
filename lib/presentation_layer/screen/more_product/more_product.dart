import 'package:animal_app/presentation_layer/Infowidget/models/device_info.dart';
import 'package:animal_app/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:animal_app/presentation_layer/components/appbar1.dart';
import 'package:animal_app/presentation_layer/screen/more_product/more_product_controller/more_product_controller.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoreProductScreen extends StatelessWidget {
  const MoreProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print(Get.arguments);
    final MoreProductController controller = Get.put(MoreProductController());
    return Scaffold(
      backgroundColor: ColorManager.background,
      appBar: appbarscreen('النتائج'),
      body: GetBuilder<MoreProductController>(
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InfoWidget(
              builder: (context, deviceInfo) {
                return 1 == 2
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Align(
                          //   alignment: Alignment.topRight,
                          //   child: Text(
                          //     'النتائج',
                          //     style: MangeStyles().getRegularStyle(
                          //       color: ColorManager.kPrimary,
                          //       fontSize: FontSize.s25,
                          //     ),
                          //   ),
                          // ),
                          // const SizedBox(
                          //   height: 10,
                          // ),
                          Expanded(
                            child: GridView.builder(
                              // controller: controller.controller,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                childAspectRatio:
                                    getChildAspectRatio(deviceInfo),
                              ),
                              itemCount: 8,
                              itemBuilder: (BuildContext context, int index) {
                                return ProductWidget(
                                  image: 'assets/images/image 22.png',
                                );
                              },
                            ),
                          ),

                          // if (controller.isLoadMoreRunning == true)
                          //   const Padding(
                          //     padding: EdgeInsets.only(top: 10, bottom: 40),
                          //     child: Center(
                          //       child: CircularProgressIndicator(),
                          //     ),
                          //   ),
                          // if (controller.hasNextPage == false)
                          //   Center(
                          //     child: Text(
                          //       'تم تجلب كل المنتجات',
                          //       style: MangeStyles().getRegularStyle(
                          //         color: ColorManager.kPrimary,
                          //         fontSize: FontSize.s20,
                          //       ),
                          //     ),
                          //   ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      );
              },
            ),
          );
        },
      ),
    );
  }
}

double getChildAspectRatio(DeviceInfo deviceInfo) {
  print(deviceInfo.localHeight);
  if (deviceInfo.localHeight < 680) {
    return 0.57;
  } else if (deviceInfo.localHeight < 845) {
    return 0.60;
  } else if (deviceInfo.localHeight < 1000) {
    return 0.85;
  } else {
    return 1.2;
  }
}
