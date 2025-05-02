import 'package:flutter/material.dart';


class StackCust extends StatelessWidget {
  const StackCust(
      {super.key,
      required this.containerheight,
      required this.widget,
    required  this.upperWidget});

  final Widget upperWidget;
  final Widget widget;
  final double containerheight;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        color: Colors.black,
        child: Stack(
          children: [
          upperWidget,
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
              
                height: height * containerheight,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: widget,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
