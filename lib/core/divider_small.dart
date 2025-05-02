import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DividerSmall extends StatelessWidget {
  const DividerSmall({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return  Divider(
              color: Color(0xffE6E6E6),
              thickness: 3,
              indent: width * 0.45,
              endIndent: width * 0.45,
            );
  }
}