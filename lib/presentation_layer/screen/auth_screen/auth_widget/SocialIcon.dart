import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    super.key,
    required this.image,
    this.onTap,
  });
  final String image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 47,
        height: 47,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.contain),
        ),
      ),
    );
  }
}
