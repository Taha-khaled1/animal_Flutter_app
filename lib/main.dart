import 'package:animal_app/application_layer/constant/myapp.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences sharedPreferences;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();

  runApp(
    DevicePreview(
      builder: (context) {
        return MyApp();
      },
    ),
  );
}
