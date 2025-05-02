import 'package:chatting_app/core/colors.dart';
import 'package:flutter/material.dart';

class ActionContainer extends StatelessWidget {
  const ActionContainer({super.key, required this.icon, required this.onTap});
  final String icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xff051D13),
          shape: BoxShape.circle,
        ),
        child: ImageIcon(AssetImage(icon), color: white),
      ),
    );
  }
}
