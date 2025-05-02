import 'package:chatting_app/core/colors.dart';
import 'package:chatting_app/core/contact_listtile.dart';
import 'package:chatting_app/core/default_grey_txt.dart';
import 'package:chatting_app/core/divider_small.dart';
import 'package:chatting_app/core/image_container.dart';
import 'package:chatting_app/core/smedia_icons.dart';
import 'package:chatting_app/core/stack_cust.dart';
import 'package:chatting_app/core/title.dart';
import 'package:chatting_app/views/chat/chat.dart';
import 'package:chatting_app/views/home/widgets/swipe_container.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> usersImage = [
    'assets/images/users/person_two.png',
    'assets/images/users/person_three.png',
    'assets/images/users/person_four.png',
    'assets/images/users/person_five.png',
    'assets/images/users/person_six.png',
  ];
  List<String> usersName = ['My status', 'Adil', 'Mariana', 'Dean', 'Max'];
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
  List<bool> notify = [true, false, true, false, true, true, false, false];
  List<bool> online = [true, false, true, false, true, true, false, false];
  bool isNotifyed = true;
  Widget _buildSwipeActionLeft() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SwipeContainer(
              image: 'assets/images/icons/notification.png',
              color: Colors.black),
          SwipeContainer(
              image: 'assets/images/icons/trash.png', color: Colors.red),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return StackCust(
        containerheight: 0.6,
        upperWidget: Column(
          children: [
            SafeArea(
                child: SizedBox(
              height: 10,
            )),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmediaIcons(
                    color: circleColor,
                    onTap: () {},
                    image: Image(
                        image: AssetImage('assets/images/icons/search.png')),
                  ),
                  TitleCust(title: 'Home'),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage:
                        AssetImage('assets/images/users/person_two.png'),
                  )
                ],
              ),
            ),
            SizedBox(height: 25),
            SizedBox(
              height: 85,
              child: ListView.builder(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.only(right: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ImageContainer(
                              onTap: () {},
                              isOnline: false,
                              usersImage: usersImage[index],
                              isBorder: true,
                            ),
                            Text(
                              usersName[index],
                              style: TextStyle(
                                  color: white,
                                  fontSize: 14,
                                  fontFamily: 'caros',
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                  itemCount: usersImage.length),
            )
          ],
        ),
        widget: Column(
          children: [
            DividerSmall(),
            SizedBox(
              height: height * 0.575,
              width: width,
              child: ListView.builder(
                  itemCount: chatImage.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Dismissible(
                        key: UniqueKey(),
                        background: _buildSwipeActionLeft(),
                        child: ContactListTile(
                          listTileTapped: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Chat(
                                          image: chatImage[index],
                                          name: chatName[index],
                                          isOnline: true,
                                          onTapVideoCall: () {},
                                          status: 'Hi there',
                                        )));
                          },
                          name: chatName[index],
                          image: chatImage[index],
                          isOnline: true,
                          isBorder: false,
                          isTrailing: true,
                          subTitle: DefaultGreyTxt(
                            text: 'Hi there',
                          ),
                          trailing: Column(
                            children: [
                              DefaultGreyTxt(
                                text: '2h ago',
                              ),
                              isNotifyed
                                  ? Container(
                                      height: 25,
                                      width: 25,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.red,
                                      ),
                                      child: Text(
                                        '4',
                                        style: TextStyle(
                                          color: white,
                                          fontSize: 12,
                                          fontFamily: 'circular-std',
                                        ),
                                      ),
                                    )
                                  : Container()
                            ],
                          ),
                        ));
                  }),
            )
          ],
        ));
  }
}
