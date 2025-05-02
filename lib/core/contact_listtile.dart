import 'package:chatting_app/core/image_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactListTile extends StatelessWidget {
  ContactListTile(
      {super.key,
      required this.name,
      required this.image,
      required this.isOnline,
      required this.isBorder,
      required this.subTitle,
      this.trailing,
      required this.isTrailing,
      required this.listTileTapped});
  final String name;
  final String image;
  final bool isOnline;
  final bool isBorder;
  final Widget subTitle;
  final Widget? trailing;
  final bool isTrailing;
  final void Function() listTileTapped;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: listTileTapped,
        leading: ImageContainer(
            onTap: () {},
            isOnline: isOnline,
            usersImage: image,
            isBorder: isBorder),
        title: Text(
          name,
          style: TextStyle(
              fontFamily: 'caros',
              fontSize: 20,
              color: Color(0xff000E08),
              fontWeight: FontWeight.w600),
        ),
        subtitle: subTitle,
        trailing: isTrailing ? trailing : Text(''));
  }
}
