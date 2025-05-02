import 'dart:ui';

import 'package:chatting_app/core/colors.dart';
import 'package:chatting_app/views/incomingCall/widgets/action_button.dart';
import 'package:flutter/material.dart';

class IncomingCall extends StatefulWidget {
  const IncomingCall({super.key});

  @override
  State<IncomingCall> createState() => _IncomingCallState();
}

class _IncomingCallState extends State<IncomingCall> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/person_call_two.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        BackdropFilter(
          //عشان اعمل بلور للصوره الي ورا
          filter:
              ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0), // تحديد درجة البلور
          child: Container(
            color:
                Colors.black.withOpacity(0), // لون خلفية شفاف عشان يبين البلور
          ),
        ),
        Positioned(
          left: width * 0.3,
          top: height * 0.25,
          child: Column(
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/person_call.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text('Nour',
                  style: TextStyle(
                      color: white,
                      fontSize: 25,
                      fontFamily: 'caros',
                      fontWeight: FontWeight.w600)),
              Text('Incoming call',
                  style: TextStyle(
                      color: Color(0xffDBE8E6),
                      fontSize: 18,
                      fontFamily: 'circular_std',
                      fontWeight: FontWeight.w400)),
            ],
          ),
        ),
        Positioned(
          bottom: 35,
          left: width * 0.1,
          right: width * 0.1,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ActionButton(
                    image: 'assets/images/icons/alarm.png',
                    text: 'Remind me',
                  ),
                  ActionButton(
                      image: 'assets/images/icons/message_filled.png',
                      text: 'Message')
                ],
              ),
              SizedBox(height: 35),
              Container(
                width: width * 0.8,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(85, 255, 255, 255)),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 25),
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: white,
                      ),
                      child: Image.asset('assets/images/icons/call_green.png'),
                    ),
                    Text('Slide to answer',
                        style: TextStyle(
                            color: Color(0xffDBE8E6),
                            fontSize: 18,
                            fontFamily: 'circular_std',
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
