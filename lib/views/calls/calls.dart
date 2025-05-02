import 'package:chatting_app/core/contact_listtile.dart';
import 'package:chatting_app/core/default_grey_txt.dart';
import 'package:chatting_app/core/divider_small.dart';
import 'package:chatting_app/core/stack_cust.dart';
import 'package:chatting_app/core/title_row.dart';
import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  List<String> chatName = [
    'Adil',
    'Mariana',
    'Dean',
    'Max',
    'Adil',
    'Mariana',
    'Dean',
    'Max'
  ];
  List<String> chatImage = [
    'assets/images/users/person_three.png',
    'assets/images/users/person_four.png',
    'assets/images/users/person_five.png',
    'assets/images/users/person_six.png',
    'assets/images/users/person_three.png',
    'assets/images/users/person_four.png',
    'assets/images/users/person_five.png',
    'assets/images/users/person_six.png',
  ];
  List<String> callTime = [
    'Today, 12:00 AM',
    'Today, 7:35 AM',
    'Today, 8:02 AM',
    'Yesterday, 9:03 AM',
    'Yesterday, 12:04 PM',
    'Monday, 12:05 PM',
    'Monday, 12:06 PM',
    '3/3/24, 12:07 PM',
  ];
  List<String> callImage = [
    'assets/images/icons/icoming.png',
    'assets/images/icons/call_red.png',
    'assets/images/icons/call_purble.png',
    'assets/images/icons/icoming.png',
    'assets/images/icons/call_red.png',
    'assets/images/icons/call_purble.png',
    'assets/images/icons/icoming.png',
    'assets/images/icons/call_purble.png',
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return StackCust(
        containerheight: 0.75,
        upperWidget: TitleRow(
            onTapSearch: () {},
            rightIcon: 'assets/images/icons/call_plus.png',
            title: 'Calls',
            onTapRightIcon: () {}),
        widget: Column(
          children: [
            DividerSmall(),
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text('Recent',
                    style: TextStyle(
                        fontFamily: 'caros',
                        fontSize: 16,
                        fontWeight: FontWeight.w600))),
            SizedBox(
              height: height * 0.695,
              width: width,
              child: ListView.builder(
                  itemCount: chatImage.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return 
                    ContactListTile(
                      listTileTapped: () {},
                      name: chatName[index],
                      image: chatImage[index],
                      isOnline: false,
                      isBorder: false,
                      isTrailing: true,
                      subTitle: Row(
                        children: [
                          Image.asset(
                            callImage[index],
                          ),
                          DefaultGreyTxt(
                            text: callTime[index],
                          ),
                        ],
                      ),
                      trailing: Container(
                        width: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: ImageIcon(
                                AssetImage('assets/images/icons/call.png'),
                                color: Color(0xff989E9C),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: ImageIcon(
                                AssetImage(
                                    'assets/images/icons/video_call.png'),
                                color: Color(0xff989E9C),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ));
  }
}
