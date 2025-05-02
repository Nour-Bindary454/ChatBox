import 'package:chatting_app/core/colors.dart';
import 'package:chatting_app/core/default_grey_txt.dart';
import 'package:flutter/material.dart';

class IconListTile extends StatelessWidget {
  const IconListTile({
    super.key,
    required this.title,
    this.subtitle,
    required this.icon,
    required this.issubtitle,
    required this.onTap,
  });
  final String title;
  final String? subtitle;
  final bool issubtitle;
  final String icon;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Container(
        width: 50,
        height: 50,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Color(0xffF2F8F7)),
        child: ImageIcon(
          AssetImage(
            icon,
          ),
          color: greyTxt,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
            fontFamily: 'caros', fontSize: 16, fontWeight: FontWeight.w600),
      ),
      subtitle: issubtitle ? DefaultGreyTxt(text: subtitle!) : Text(''),
    );
  }
}
