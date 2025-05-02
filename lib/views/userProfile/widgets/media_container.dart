import 'package:flutter/material.dart';

class MediaContainer extends StatelessWidget {
  const MediaContainer({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      width: 95,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.pink,
          image: DecorationImage(image: AssetImage(image))),
    );
  }
}
