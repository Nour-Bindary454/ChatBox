import 'package:flutter/material.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: ImageIcon(
          AssetImage('assets/images/back.png'),
          color: Colors.black,
        ));
  }
}
