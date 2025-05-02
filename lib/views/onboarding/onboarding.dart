import 'package:chatting_app/core/colors.dart';
import 'package:chatting_app/core/default_button.dart';
import 'package:chatting_app/core/divider_cust.dart';
import 'package:chatting_app/core/smedia_icons.dart';

import 'package:chatting_app/views/onboarding/widgets/text_cust.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color(0xff0A1832),
          Color(0xff43116A),
          Color(0xff0A1832),
        ],
        begin: Alignment.topLeft,
        end: Alignment.centerRight,
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SafeArea(child: SizedBox()),
          Image.asset('assets/images/wlogo.png'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextCust(text: 'Connect', fontWeight: FontWeight.w400),
              TextCust(text: 'friends', fontWeight: FontWeight.w400),
              TextCust(text: 'easily', fontWeight: FontWeight.w600),
              TextCust(text: 'quickly', fontWeight: FontWeight.w600),
              Text('Our chat app is the perfect way to stay',
                  style: TextStyle(
                      color: lightgrey,
                      fontFamily: 'circular_std',
                      fontSize: 16,
                      fontWeight: FontWeight.w500)),
              Text('connected with friends and family.',
                  style: TextStyle(
                      color: lightgrey,
                      fontFamily: 'circular_std',
                      fontSize: 16,
                      fontWeight: FontWeight.w500)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SmediaIcons(
                color: grey,
                image: Image.asset('assets/images/facebook.png'),
                onTap: () {},
              ),
              SmediaIcons(
                color: grey,
                image: Image.asset('assets/images/google.png'),
                onTap: () {},
              ),
              SmediaIcons(
                color: grey,
                image: Image.asset('assets/images/Vector.png'),
                onTap: () {},
              ),
            ],
          ),
          DividerCust(
              txtcolor: Color(0xFFD6E4E0), dividercolor: Color(0xFFCDD1D0)),
          DefaultButton(
            text: 'Sign up within mail',
            onPressed: () {
              Navigator.pushNamed(context, 'signup');
            },
            txtColor: Colors.black,
            bgColor: Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Existing account?',
                  style: TextStyle(
                      color: lightgrey,
                      fontFamily: 'circular_std',
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'signin');
                },
                child: Text(
                  'Log in',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontFamily: 'circular_std',
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
