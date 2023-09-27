import 'package:animal_app/presentation_layer/components/custombutten.dart';
import 'package:animal_app/presentation_layer/components/navbar.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/strings_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/Small_Circal.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/Titelmore.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/catogery_card.dart';
import 'package:animal_app/presentation_layer/screen/service_detalis/payment_service/appoint_ment.dart';
import 'package:animal_app/presentation_layer/screen/service_detalis/service_detalis_controller.dart';
import 'package:animal_app/presentation_layer/screen/shimmer_screen/shimmer_screen.dart';
import 'package:animal_app/presentation_layer/utlis/image_checker.dart';
import 'package:animal_app/presentation_layer/utlis/translate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServiceDetalis extends StatelessWidget {
  const ServiceDetalis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ServiceController>(
        init: ServiceController(),
        builder: (controller) {
          return !controller.isload
              ? Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 320,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              image: NetworkImage(
                                imageNetworkCheck(
                                  controller.serviceDetalisModel?.data!.imageUrl
                                      .toString(),
                                ),
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                translation(
                                    ar: controller.serviceDetalisModel?.data!
                                            .enServiceName ??
                                        "",
                                    en: controller.serviceDetalisModel?.data!
                                            .arServiceName ??
                                        ""),
                                style: MangeStyles().getBoldStyle(
                                  color: ColorManager.ktextblackk,
                                  fontSize: FontSize.s20,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                translation(
                                    ar: controller.serviceDetalisModel?.data!
                                            .enDescription ??
                                        "",
                                    en: controller.serviceDetalisModel?.data!
                                            .arDescription ??
                                        ""),
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                'العنوان وساعات العمل',
                                style: MangeStyles().getBoldStyle(
                                  color: ColorManager.ktextblackk,
                                  fontSize: FontSize.s20,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  SmallCircal(
                                    color: Color(0xffF89D3D),
                                    iconData: Icon(
                                      Icons.star,
                                      size: 20,
                                      color: Color.fromARGB(255, 209, 192, 45),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    controller.serviceDetalisModel?.data!.vendor
                                            ?.vendorRate ??
                                        "0.0",
                                    style: MangeStyles().getMediumStyle(
                                      color: ColorManager.ktextblackk,
                                      fontSize: FontSize.s14,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  SmallCircal(
                                    color: Color.fromARGB(255, 175, 244, 192),
                                    image: 'assets/images/saaa.png',
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    '${controller.serviceDetalisModel?.data!.vendor?.openingFrom} - ${controller.serviceDetalisModel?.data!.vendor?.openingTo}',
                                    style: MangeStyles().getMediumStyle(
                                      color: ColorManager.ktextblackk,
                                      fontSize: FontSize.s14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomButton(
                          width: 185,
                          haigh: 60,
                          color: ColorManager.kPrimary,
                          text: AppStrings.book_now.tr,
                          press: () {
                            Get.to(() => Appointment(
                                  vendor_id: controller.serviceDetalisModel
                                          ?.data!.vendor?.id ??
                                      1,
                                  name: controller.serviceDetalisModel?.data!
                                          .arServiceName ??
                                      "",
                                  nameEn: controller.serviceDetalisModel?.data!
                                          .enServiceName ??
                                      "",
                                  price: controller
                                      .serviceDetalisModel!.data!.price!
                                      .toDouble(),
                                  id: controller
                                          .serviceDetalisModel?.data!.id ??
                                      1,
                                ));
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Titelmore(
                          text1: AppStrings.service.tr,
                          text2: 'المزيد',
                          onTap: () {},
                        ),
                        SizedBox(
                          height: 200,
                          child: ListView.builder(
                            itemCount: controller
                                .serviceModel!.serviceCardModel?.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CatogeryCard(
                                  id: controller
                                      .serviceModel!.serviceCardModel?[index].id
                                      .toString(),
                                  image: controller.serviceModel!
                                      .serviceCardModel?[index].imageUrl,
                                  name: translation(
                                      ar: controller
                                              .serviceModel!
                                              .serviceCardModel?[index]
                                              .arServiceName ??
                                          "",
                                      en: controller
                                              .serviceModel!
                                              .serviceCardModel?[index]
                                              .enServiceName ??
                                          ""),
                                ),
                              );
                            },
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
