import 'package:animal_app/data_layer/models/OrderModel.dart';
import 'package:animal_app/data_layer/resbonse.dart';
import 'package:animal_app/main.dart';
import 'package:animal_app/presentation_layer/components/navbar.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animal_app/application_layer/utils/handling.dart';
import 'package:animal_app/application_layer/utils/statusrequst.dart';

import 'package:animal_app/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:animal_app/presentation_layer/components/appbar1.dart';
import 'package:animal_app/presentation_layer/handlingView/handlingview.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/strings_manager.dart';

class FollowOrderScreen extends StatefulWidget {
  const FollowOrderScreen({Key? key}) : super(key: key);

  @override
  State<FollowOrderScreen> createState() => _FollowOrderScreenState();
}

class _FollowOrderScreenState extends State<FollowOrderScreen> {
  late StatusRequest statusRequest2;
  OrderModel? cartItemModel;
  getCartItemt() async {
    try {
      statusRequest2 = StatusRequest.loading;
      var response = await getfollowOrderRespon();
      statusRequest2 = handlingData(response);
      if (statusRequest2 == StatusRequest.success) {
        cartItemModel = await OrderModel.fromJson(response);
      } else {
        statusRequest2 = StatusRequest.failure;
      }
    } catch (e) {
      statusRequest2 = StatusRequest.erorr;
    }
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void initState() {
    getCartItemt();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      appBar: appbarScreenWithBack(AppStrings.dashboard.tr),
      body: InfoWidget(
        builder: (context, deviceInfo) {
          return HandlingDataView(
            statusRequest: statusRequest2,
            widget: Padding(
              padding: const EdgeInsets.all(16),
              child: DataTable2(
                columnSpacing: 12,
                horizontalMargin: 10,
                minWidth: 600,
                columns: [
                  DataColumn2(
                    label: Text(
                      '#',
                      style: TextStyle(color: Colors.black),
                    ),
                    size: ColumnSize.L,
                  ),
                  DataColumn2(
                    label: Text(
                      AppStrings.status.tr,
                      style: TextStyle(color: Colors.black),
                    ),
                    size: ColumnSize.L,
                  ),
                  DataColumn(
                    label: Text(
                      AppStrings.total_price.tr,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      "عدد المنتجات",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
                rows: List<DataRow>.generate(
                  cartItemModel?.data?.length ?? 0,
                  (index) => DataRow(
                    cells: [
                      DataCell(
                        Text(
                          '$index',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          cartItemModel?.data![index].orderStatus.toString() ??
                              "",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          cartItemModel?.data![index].subTotal ?? "title ",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          cartItemModel?.data![index].orderDetails?.length
                                  .toString() ??
                              "0",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

PreferredSizeWidget appbarScreenWithBack(String title) {
  return AppBar(
    backgroundColor: ColorManager.background,
    // flexibleSpace: Container(
    //   decoration: BoxDecoration(
    //     image: DecorationImage(
    //       image: AssetImage('assets/images/appbarimag.jpg'),
    //       fit: BoxFit.cover,
    //     ),
    //   ),
    // ),
    elevation: 0,
    // backgroundColor: ColorManager.background,
    leading: BackButton(
      color: ColorManager.kPrimary,
    ),
    centerTitle: true,
    title: Text(
      title,
      style: MangeStyles().getBoldStyle(
        color: ColorManager.kTextblack,
        fontSize: FontSize.s18,
      ),
    ),
    toolbarHeight: 40, leadingWidth: 40,
  );
}
