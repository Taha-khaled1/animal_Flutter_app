import 'package:flutter/material.dart';

class SmallCircal extends StatelessWidget {
  const SmallCircal({
    super.key,
    this.image,
    required this.color,
    this.iconData,
  });
  final String? image;
  final Icon? iconData;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
      ),
      child: image == null
          ? iconData
          : Image.asset(
              image!,
              height: 30,
            ),
    );
  }
}
