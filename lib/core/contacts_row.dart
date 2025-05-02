import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactsRow extends StatelessWidget {
  const ContactsRow(
      {super.key,
      this.arrow,
      required this.isArrow,
      required this.name,
      required this.subTitle,
      this.trailing,
      required this.isTrailing,
      required this.image});
  final Widget? arrow;
  final bool isArrow;
  final String name;
  final Widget subTitle;
  final Widget? trailing;
  final bool isTrailing;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: isArrow ? arrow : SizedBox(),
        ),
        CircleAvatar(radius: 25, backgroundImage: AssetImage(image)),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                  fontFamily: 'caros',
                  fontSize: 16,
                  color: Color(0xff000E08),
                  fontWeight: FontWeight.w600),
            ),
            subTitle
          ],
        ),
        Container(
          child: isTrailing ? trailing : Container(),
        )
      ],
    );
  }
}
