import 'package:flutter/material.dart';

class SmediaIcons extends StatefulWidget {
  const SmediaIcons(
      {super.key,
      required this.color,
      required this.onTap,
      required this.image});
  final Color color;
  final void Function() onTap;

  final Image image;

  @override
  State<SmediaIcons> createState() => _SmediaIconsState();
}

class _SmediaIconsState extends State<SmediaIcons> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border(
                bottom: BorderSide(color: widget.color),
                left: BorderSide(color: widget.color),
                right: BorderSide(color: widget.color),
                top: BorderSide(color: widget.color))),
        child:widget.image,
      ),
    );
  }
}
