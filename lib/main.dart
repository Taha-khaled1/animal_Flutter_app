import 'package:animal_app/application_layer/constant/myapp.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'data_layer/database/connectSqlflite.dart';

SqlDb? sqlDb;
late SharedPreferences sharedPreferences;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setString('lang', 'ar');
  sqlDb = SqlDb();
  Stripe.publishableKey =
      'pk_test_51MU9CFCCrii3tAGhhhWlPda7dhODreaYeE8HtdP4gvjoIalVprrKcl7QHnEfLFzvlHC7jrlOpYMR8ncwLjDeOh5V00PcfEjAX9';
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MyApp();
      },
    ),
  );
}
