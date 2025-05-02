import 'package:chatting_app/core/colors.dart';
import 'package:chatting_app/core/smedia_icons.dart';
import 'package:chatting_app/core/title.dart';
import 'package:flutter/cupertino.dart';

class TitleRow extends StatelessWidget {
  const TitleRow({super.key,
  required this.onTapSearch,
  required this.onTapRightIcon,
  required this.title,
  required this.rightIcon,
  });
final void Function() onTapSearch;
final void Function() onTapRightIcon;
final String title;
final String rightIcon;


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
          margin: EdgeInsets.only(top: height * 0.07, left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SmediaIcons(
                  color: circleColor,
                  onTap: onTapSearch,
                  image: Image.asset('assets/images/icons/search.png')),
              TitleCust(title: title),
              SmediaIcons(
                  color: circleColor,
                  onTap: onTapRightIcon,
                  image: Image.asset(rightIcon))
            ],
          ),
        );
  }
}