import 'package:chatting_app/core/colors.dart';
import 'package:chatting_app/core/contact_listtile.dart';
import 'package:chatting_app/core/default_grey_txt.dart';
import 'package:chatting_app/core/divider_small.dart';
import 'package:chatting_app/core/stack_cust.dart';
import 'package:chatting_app/core/title.dart';
import 'package:chatting_app/views/settings/widgets/icon_listtile.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  Settings({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: ImageIcon(
              AssetImage('assets/images/back.png'),
              color: white,
            )),
        centerTitle: true,
        title: TitleCust(title: 'Settings'),
        backgroundColor: Color(0xff000E08),
      ),
      body: StackCust(
          containerheight: 0.75,
          widget: Column(children: [
            DividerSmall(),
            ContactListTile(
              listTileTapped: () {},
              name: 'John Doe',
              image: 'assets/images/users/person_four.png',
              isOnline: false,
              isBorder: false,
              subTitle: DefaultGreyTxt(text: 'Sleeping'),
              isTrailing: true,
              trailing: InkWell(
                onTap: () {},
                child: ImageIcon(
                  AssetImage('assets/images/icons/qrcode.png'),
                  color: primarycolor,
                ),
              ),
            ),
            Divider(
              endIndent: 1,
              indent: 1,
              thickness: 1,
              color: Color(0xffF5F6F6),
            ),
            IconListTile(
              onTap: () {},
              icon: 'assets/images/icons/keys.png',
              title: 'Account',
              subtitle: 'Privacy, Security, Change number',
              issubtitle: true,
            ),
            IconListTile(
              onTap: () {},
              icon: 'assets/images/icons/message.png',
              title: 'Chat',
              subtitle: 'Chat history,theme,wallpapers',
              issubtitle: true,
            ),
            IconListTile(
              onTap: () {},
              icon: 'assets/images/icons/notification.png',
              title: 'Notifications',
              subtitle: 'Messeges,group and others',
              issubtitle: true,
            ),
            IconListTile(
              onTap: () {},
              icon: 'assets/images/icons/help.png',
              title: 'Storage and data',
              subtitle: 'Network usage,storage usage',
              issubtitle: true,
            ),
            IconListTile(
              onTap: () {},
              icon: 'assets/images/icons/data.png',
              title: 'Help',
              subtitle: 'Help center,contact us,privacy policy',
              issubtitle: true,
            ),
            IconListTile(
              onTap: () {},
              icon: 'assets/images/icons/users.png',
              title: 'Invite a friend',
              issubtitle: false,
            ),
          ]),
          upperWidget: Container()),
    );
  }
}
