import 'package:chatting_app/core/colors.dart';
import 'package:flutter/material.dart';

class DefaultGreyTxt extends StatelessWidget {
  const DefaultGreyTxt({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'circular_std',
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: greyTxt),
    );
  }
}
