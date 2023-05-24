import 'package:animal_app/presentation_layer/resources/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../application_layer/utils/statusrequst.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? HandWidget(url: JsonAssets.loading2)
        : statusRequest == StatusRequest.offlinefailure
            ? HandWidget(url: JsonAssets.empty)
            : statusRequest == StatusRequest.serverfailure
                ? SizedBox(
                    height: 60,
                    child: Text('يوجد مشكله ما يرجي اعادة المحاوله لاحقا'),
                  )
                : statusRequest == StatusRequest.erorr
                    ? SizedBox(
                        height: 60,
                        child: Text('يوجد مشكله ما يرجي اعادة المحاوله'),
                      )
                    : widget;
  }
}

class HandWidget extends StatelessWidget {
  const HandWidget({
    Key? key,
    required this.url,
  }) : super(key: key);
  final String url;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(url, width: 200, height: 150, fit: BoxFit.contain),
    );
  }
}
