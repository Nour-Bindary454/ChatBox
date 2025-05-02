import 'package:chatting_app/core/colors.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.image, required this.text});
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
        ),
        Text(
          text,
          style: TextStyle(
              color: white,
              fontSize: 16,
              fontFamily: 'circular_std',
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
