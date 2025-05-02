import 'package:flutter/material.dart';

class DataTxt extends StatelessWidget {
  const DataTxt({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Color(0xff000E08),
          fontSize: 18,
          fontFamily: 'caros',
          fontWeight: FontWeight.w600),
    );
  }
}
