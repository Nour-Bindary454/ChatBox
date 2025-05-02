import 'package:chatting_app/core/colors.dart';
import 'package:flutter/material.dart';

class CallsActionContainer extends StatelessWidget {
  const CallsActionContainer({
    super.key,
    required this.image,
    required this.color,
    required this.onTap,
  });
  final String image;
  final Color color;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        child: Image.asset(
          image,
          color: white,
        ),
      ),
    );
  }
}
