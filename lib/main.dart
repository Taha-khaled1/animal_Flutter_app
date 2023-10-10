import 'package:animal_app/application_layer/constant/myapp.dart';
import 'package:animal_app/presentation_layer/resources/msnge_api.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'data_layer/database/connectSqlflite.dart';
import 'data_layer/database/connectdatabase.dart';

SqlDb? sqlDb;
late SharedPreferences sharedPreferences;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setString('lang', 'ar');
  // await getStripeData();
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

dynamic getStripeData() async {
  Curd curd = Curd();
  var respons = await curd.getrequest(
    'https://elegantae.net/api/stripe-data-6c89222f-9725-4932-9dd5-33498d54b791',
    myheadersres: curd.myheadersfail,
  );
  sharedPreferences.setString('secret_key', respons['data']['secret_key']);
  sharedPreferences.setString(
      'publishable_key', respons['data']['publishable_key']);
  print(
      '${respons['data']['secret_key']} + ${respons['data']['publishable_key']}');
  return respons;
}
