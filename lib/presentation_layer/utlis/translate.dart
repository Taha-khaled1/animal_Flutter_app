import 'package:animal_app/main.dart';

String translation({required String ar, required String en}) {
  if (sharedPreferences.getString('lang') == 'ar') {
    return ar;
  } else {
    return en;
  }
}
