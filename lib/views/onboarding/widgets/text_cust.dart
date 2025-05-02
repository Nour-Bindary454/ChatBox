import 'package:flutter/material.dart';

class TextCust extends StatelessWidget {
  const TextCust({super.key, required this.text, required this.fontWeight});
  final String text;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Color(0xffFFFFFF),
          fontSize: 68,
          fontWeight: fontWeight,
          fontFamily: 'caros'),
    );
  }
}
