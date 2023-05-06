import 'package:get/get.dart';

class SiginUpController extends GetxController {
  bool checkboxValue = false;
  void changeCheckBox(bool value) {
    checkboxValue = value;
    update();
  }
}
