import 'package:chatting_app/core/colors.dart';
import 'package:flutter/cupertino.dart';

class TitleCust extends StatelessWidget {
  const TitleCust({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return  Text(title,
                      style: TextStyle(
                          fontSize: 20, color: white, fontFamily: 'caros'));
  }
}