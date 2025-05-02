import 'package:flutter/material.dart';

class SwipeContainer extends StatelessWidget {
  SwipeContainer({super.key, required this.image, required this.color});
  final String image;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 40,
      height: 40,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      alignment: Alignment.center,
      child: Image.asset(
        image,
      ),
    );
  }
}
