import '../../../main.dart';

bool isLogin() {
  if (sharedPreferences.getInt('id') == null ||
      sharedPreferences.getString('name') == null ||
      sharedPreferences.getString('token') == null) {
    return false;
  }
  return true;
}
