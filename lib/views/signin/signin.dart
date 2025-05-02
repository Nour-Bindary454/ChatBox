import 'package:chatting_app/core/arrow_back.dart';
import 'package:chatting_app/core/colors.dart';
import 'package:chatting_app/core/default_button.dart';
import 'package:chatting_app/core/divider_cust.dart';
import 'package:chatting_app/core/smedia_icons.dart';
import 'package:chatting_app/core/text_field_cust.dart';
import 'package:chatting_app/cupits/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          Navigator.pushNamed(context, 'mainLayOut');
        } else if (state is LoginError) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Login Failed'),
          ));
        }
      },
      builder: (context, state) {
        return Scaffold(
            body: SingleChildScrollView(
          child: Column(
            children: [
              SafeArea(child: SizedBox()),
              Container(alignment: Alignment.topLeft, child: ArrowBack()),
              SizedBox(height: 50),
              Stack(
                children: [
                  Positioned(
                    bottom: 2,
                    left: 0,
                    child: Container(
                      width: 55,
                      height: 10,
                      decoration: BoxDecoration(
                        color: green,
                      ),
                    ),
                  ),
                  Text(
                    'Log in to Chatbox',
                    style: TextStyle(
                        color: Color(0xff000E08),
                        fontSize: 18,
                        fontFamily: 'caros',
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Welcome back! Sign in using your social',
                style: TextStyle(
                    color: greyTxt,
                    fontSize: 14,
                    fontFamily: 'circular_std',
                    fontWeight: FontWeight.w400),
              ),
              Text(
                'account or email to continue us',
                style: TextStyle(
                    color: greyTxt,
                    fontSize: 14,
                    fontFamily: 'circular_std',
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmediaIcons(
                    color: Colors.black,
                    image: Image.asset('assets/images/facebook.png'),
                    onTap: () {},
                  ),
                  SmediaIcons(
                    color: Colors.black,
                    image: Image.asset('assets/images/google.png'),
                    onTap: () {},
                  ),
                  SmediaIcons(
                    color: Colors.black,
                    image: Image.asset(
                      'assets/images/Vector.png',
                      color: Colors.black,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: 30),
              DividerCust(
                  txtcolor: Color(0xFF797C7B), dividercolor: Color(0xFFCDD1D0)),
              SizedBox(height: 20),
              TextFieldCust(

                onChanged: () {},
                controller: emailController,
                label: 'Your email',
                obscureText: false,
                color: primarycolor,
              ),
              SizedBox(height: 30),
              TextFieldCust(
                onChanged: () {},
                controller: passwordController,
                label: 'Password',
                obscureText: true,
                color: primarycolor,
              ),
              SizedBox(
                height: 100,
              ),
              DefaultButton(
                onPressed: () {
                  final email = emailController.text;
                  final password = passwordController.text;
                  context.read<LoginCubit>().loginwithemailandpassword(
                      email.toString(), password.toString());
                },
                text: 'Log in',
                txtColor: Colors.white,
                bgColor: primarycolor,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text('Forgot Password?',
                      style: TextStyle(
                          color: primarycolor, fontFamily: 'circular_std'))),
            ],
          ),
        ));
      },
    );
  }
}
