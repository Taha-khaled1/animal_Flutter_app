import 'package:animal_app/presentation_layer/components/appbar1.dart';
import 'package:flutter/material.dart';

class Appointment extends StatelessWidget {
  const Appointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarscreen('حجز الخدمه'),
    );
  }
}
