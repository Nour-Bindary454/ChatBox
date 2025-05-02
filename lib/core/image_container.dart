import 'package:chatting_app/core/colors.dart';
import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  ImageContainer(
      {super.key,
      required this.usersImage,
      required this.isBorder,
      required this.isOnline,
      required this.onTap
      });
  final String usersImage;
  final bool isBorder;
  final bool isOnline;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: 65,
          height: 65,
          alignment: Alignment.bottomRight,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: isBorder
                  ? Border.all(color: white, width: 2)
                  : Border.all(color: Colors.transparent),
              image: DecorationImage(
                image: AssetImage(usersImage),
                fit: BoxFit.cover,
              )),
          child: isOnline
              ? CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.green,
                )
              : Container()),
    );
  }
}
