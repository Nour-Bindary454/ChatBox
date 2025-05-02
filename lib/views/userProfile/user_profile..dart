import 'package:chatting_app/core/colors.dart';
import 'package:chatting_app/core/default_grey_txt.dart';
import 'package:chatting_app/core/divider_small.dart';
import 'package:chatting_app/core/image_container.dart';
import 'package:chatting_app/core/stack_cust.dart';
import 'package:chatting_app/views/userProfile/widgets/action_container.dart';
import 'package:chatting_app/views/userProfile/widgets/data_txt.dart';
import 'package:chatting_app/views/userProfile/widgets/media_container.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile(
      {super.key,
      required this.usersImage,
      required this.name,
      required this.userName,
      required this.email,
      required this.address,
      required this.phoneNumber,
      required this.mediaSharedNumber});
  final String usersImage;
  final String name;
  final String userName;
  final String email;
  final String address;
  final String phoneNumber;
  final String mediaSharedNumber;
  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return StackCust(
      containerheight: 0.65,
      upperWidget: Column(
        children: [
          SafeArea(child: SizedBox()),
          Container(
            alignment: Alignment.centerLeft,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: ImageIcon(
                  AssetImage('assets/images/back.png'),
                  color: white,
                )),
          ),
          ImageContainer(
              usersImage: widget.usersImage,
              isBorder: false,
              isOnline: false,
              onTap: () {}),
          Text(
            widget.name,
            style: TextStyle(
                color: white, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          DefaultGreyTxt(text: widget.userName),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ActionContainer(
                    icon: 'assets/images/icons/message.png', onTap: () {}),
                ActionContainer(
                    icon: 'assets/images/icons/video_call.png', onTap: () {}),
                ActionContainer(
                    icon: 'assets/images/icons/audio_call.png', onTap: () {}),
                ActionContainer(
                    icon: 'assets/images/icons/More.png', onTap: () {}),
              ],
            ),
          )
        ],
      ),
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DividerSmall(),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: DefaultGreyTxt(text: 'Display Name'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: DataTxt(text: widget.name),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: DefaultGreyTxt(text: 'Email Address'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: DataTxt(text: widget.email),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: DefaultGreyTxt(text: 'Address'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: DataTxt(text: widget.address),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: DefaultGreyTxt(text: 'Phone Number'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: DataTxt(text: widget.phoneNumber),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DefaultGreyTxt(text: 'Media Shared'),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'View All',
                    style: TextStyle(
                        color: green,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'caros'),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MediaContainer(
                  image: 'assets/images/users/person_four.png',
                ),
                MediaContainer(
                  image: 'assets/images/users/person_four.png',
                ),
                Container(
                  height: 95,
                  width: 95,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.pink,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              'assets/images/users/person_four.png'))),
                  child: Stack(
                    children: [
                      Container(
                        height: 95,
                        width: 95,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(139, 0, 0, 0),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          '+${widget.mediaSharedNumber}',
                          style: TextStyle(
                              color: white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'circular-std'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
