import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.txtColor,
      required this.bgColor});
  final void Function() onPressed;
  final String text;
  final Color txtColor;
  final Color bgColor;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            backgroundColor: bgColor,
            fixedSize: Size(width * 0.9, 50)),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: txtColor,
            fontFamily: 'caros',
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
