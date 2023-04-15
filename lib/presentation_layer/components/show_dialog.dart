import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

void showDilog(BuildContext context, String massg,
    {QuickAlertType? type, bool? butn, void Function()? onConfirmBtnTap}) {
  QuickAlert.show(
    context: context,
    type: type ?? QuickAlertType.success,
    text: massg,
    confirmBtnText: 'موافق',
    cancelBtnText: 'No',
    confirmBtnColor: Colors.green,
    onConfirmBtnTap: onConfirmBtnTap ??
        () {
          if (butn == true) {
            Get.back();
            Future.delayed(Duration(milliseconds: 100));
            Get.back();
          } else {
            Get.back();
          }
        },
  );
}
