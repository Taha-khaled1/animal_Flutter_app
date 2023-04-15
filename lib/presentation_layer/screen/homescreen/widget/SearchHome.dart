import 'package:flutter/material.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';

class SearchHome extends StatelessWidget {
  const SearchHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: ColorManager.background,
        borderRadius: BorderRadius.circular(20),
        // gradient: ColorManager.y,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 2.0),
          ),
        ],
      ),
      child: TextField(
        style: TextStyle(color: ColorManager.kTextblack, fontSize: 15),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: ColorManager.kPrimary2,
            ),
          ),
          hintText: 'البحث هنا ......',
          prefixIcon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 35,
                color: Colors.grey,
              )),
        ),
      ),
    );
  }
}
