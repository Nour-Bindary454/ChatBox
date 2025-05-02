import 'package:chatting_app/core/colors.dart';
import 'package:chatting_app/views/calls/calls.dart';
import 'package:chatting_app/views/contacts/contacts.dart';
import 'package:chatting_app/views/home/home.dart';
import 'package:chatting_app/views/settings/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mainLayOut extends StatefulWidget {
  const mainLayOut({super.key});

  @override
  State<mainLayOut> createState() => _mainLayOutState();
}

class _mainLayOutState extends State<mainLayOut> {
  int selectedIndex = 0;
  List<Widget> screens = [Home(), Calls(), Contacts(), Settings()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: TextStyle(
            fontFamily: 'caros',
            fontSize: 16,
          ),
          unselectedLabelStyle: TextStyle(
              fontFamily: 'caros', fontSize: 16, fontWeight: FontWeight.w400),
          backgroundColor: white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: primarycolor,
          unselectedItemColor: greyTxt,
          showSelectedLabels: true,
          selectedIconTheme:
              CupertinoIconThemeData(color: primarycolor, fill: 1),
          iconSize: 25,
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/icons/message.png')),
              label: 'Message',
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icons/call.png')),
                label: 'Calls'),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/icons/user.png')),
              label: 'Contacts',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/icons/settings.png'),
              ),
              label: 'Settings',
            ),
          ]),
    );
  }
}
