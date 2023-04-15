import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "اسم المستخدم غير صالح";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "البريد الاكتروني غير صالح";
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "رقم الهاتف غير صالح";
    }
  }

  if (val.isEmpty) {
    return "لايمكن ترك هذه الحقل فارغا";
  }

  if (val.length < min) {
    return "لايمكن ان يكون هذه الحقل اقل من $min";
  }

  if (val.length > max) {
    return "لايمكن ان يكون هذه الحقل اكبر من  $max";
  }
}
