import 'package:chatting_app/core/contact_listtile.dart';
import 'package:chatting_app/core/default_grey_txt.dart';
import 'package:chatting_app/core/divider_small.dart';
import 'package:chatting_app/core/stack_cust.dart';
import 'package:chatting_app/core/title_row.dart';
import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
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
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return StackCust(
        containerheight: 0.75,
        upperWidget: TitleRow(
            onTapSearch: () {},
            onTapRightIcon: () {},
            title: 'Contacts',
            rightIcon: 'assets/images/icons/user-add.png'),
        widget: Column(
          children: [
            DividerSmall(),
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text('My Contacts',
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
                    return ContactListTile(
                      listTileTapped: () {},
                      name: chatName[index],
                      image: chatImage[index],
                      isOnline: false,
                      isBorder: false,
                      isTrailing: true,
                      subTitle: DefaultGreyTxt(text: 'Sleeping'),
                    );
                  }),
            )
          ],
        ));
  }
}
