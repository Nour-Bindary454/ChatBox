import 'package:chatting_app/core/arrow_back.dart';
import 'package:chatting_app/core/calls_action_container.dart';
import 'package:chatting_app/core/colors.dart';
import 'package:flutter/material.dart';

class VideoCall extends StatefulWidget {
  const VideoCall({super.key});

  @override
  State<VideoCall> createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(children: [
      Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/person_call.jpg'),
          fit: BoxFit.cover,
        )),
      ),
      Positioned(top: 35, left: 10, child: ArrowBack()),
      Positioned(
          top: 35,
          right: 10,
          child: Container(
            width: 120,
            height: 130,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/person_call_two.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(25)),
          )),
      Positioned(
        left: width * 0.05,
        right: width * 0.05,
        bottom: 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CallsActionContainer(
              onTap: () {},
              color: Color.fromARGB(104, 255, 255, 255),
              image: 'assets/images/icons/microphone.png',
            ),
            CallsActionContainer(
              onTap: () {},
              color: Color.fromARGB(104, 255, 255, 255),
              image: 'assets/images/icons/volume_full.png',
            ),
            CallsActionContainer(
              onTap: () {},
              color: Color.fromARGB(104, 255, 255, 255),
              image: 'assets/images/icons/video_call.png',
            ),
            CallsActionContainer(
              onTap: () {},
              color: green,
              image: 'assets/images/icons/chat_messages.png',
            ),
            CallsActionContainer(
              onTap: () {},
              color: Color(0xffEA3736),
              image: 'assets/images/icons/remove.png',
            ),
          ],
        ),
      )
    ]);
  }
}
