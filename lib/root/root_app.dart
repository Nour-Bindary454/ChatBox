import 'package:chatting_app/cupits/cubit/login_cubit.dart';
import 'package:chatting_app/cupits/signpCubit/signup_cubit.dart';
import 'package:chatting_app/views/calls/calls.dart';
import 'package:chatting_app/views/chat/chat.dart';
import 'package:chatting_app/views/contacts/contacts.dart';
import 'package:chatting_app/views/home/home.dart';
import 'package:chatting_app/views/incomingCall/incoming_call.dart';
import 'package:chatting_app/views/mainLayOut/main_lay_out.dart';
import 'package:chatting_app/views/onboarding/onboarding.dart';
import 'package:chatting_app/views/settings/settings.dart';
import 'package:chatting_app/views/signup/signup.dart';
import 'package:chatting_app/views/splash/splash.dart';
import 'package:chatting_app/views/videoCall/video_call.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../views/signin/signin.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
        BlocProvider(
          create: (context) => SignupCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          'splash': (context) => Splash(),
          'onboarding': (context) => OnBoarding(),
          'signin': (context) => Signin(),
          'signup': (context) => Signup(),
          'home': (context) => Home(),
          'calls': (context) => Calls(),
          'settings': (context) => Settings(),
          'contacts': (context) => Contacts(),
          'mainLayOut': (context) => mainLayOut(),
          'incomingCall': (context) => IncomingCall(),
          'videoCall': (context) => VideoCall(),
        },
        initialRoute: 'splash',
        //  home:
        //Calls()
        //VideoCall()
        // StorageScreen(),
        //mainLayOut(),
        //     Chat(
        //   image: 'assets/images/users/person_two.png',
        //   name: 'John Doe',
        //   isOnline: false,
        //   onTapVideoCall: () {},
        //   status: 'Sleeping',
        // ),
        //     UserProfile(
        //   usersImage: 'assets/images/users/person_two.png',
        //   name: 'John Doe',
        //   userName: '@johndoe',
        //   address: '123 Main Street, Anytown USA',
        //   email: 'w6Tjz@example.com',
        //   phoneNumber: '123-456-7890',
        //   mediaSharedNumber: '255',
        // )
      ),
    );
  }
}
