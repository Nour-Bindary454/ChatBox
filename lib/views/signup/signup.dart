import 'package:chatting_app/core/arrow_back.dart';
import 'package:chatting_app/core/colors.dart';
import 'package:chatting_app/core/default_button.dart';
import 'package:chatting_app/core/text_field_cust.dart';
import 'package:chatting_app/cupits/signpCubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Signup extends StatelessWidget {
  Signup({super.key});
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          Navigator.pushReplacementNamed(context, 'home');
        } else if (state is SignupError) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Signup Failed'),
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
                    bottom: 4,
                    right: 0,
                    child: Container(
                      width: 50,
                      height: 10,
                      decoration: BoxDecoration(
                        color: green,
                      ),
                    ),
                  ),
                  Text(
                    'Sign up with Email',
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
                'Get chatting with friends and family today by',
                style: TextStyle(
                    color: greyTxt,
                    fontSize: 14,
                    fontFamily: 'circular_std',
                    fontWeight: FontWeight.w400),
              ),
              Text(
                'signing up for our chat app!',
                style: TextStyle(
                    color: greyTxt,
                    fontSize: 14,
                    fontFamily: 'circular_std',
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 30),
              TextFieldCust(
                onChanged: () {},
                controller: nameController,
                label: 'Your name',
                obscureText: false,
                color: primarycolor,
              ),
              SizedBox(height: 30),
              TextFieldCust(
                onChanged: () {},
                controller: _emailController,
                label: 'Your email',
                obscureText: false,
                color: primarycolor,
              ),
              SizedBox(height: 30),
              TextFieldCust(
                onChanged: () {},
                controller: _passwordController,
                label: 'Password',
                obscureText: true,
                color: primarycolor,
              ),
              SizedBox(height: 30),
              TextFieldCust(
                onChanged: () {},
                controller: _confirmPasswordController,
                label: 'Confirm Password',
                obscureText: true,
                color: primarycolor,
              ),
              SizedBox(
                height: 70,
              ),
              DefaultButton(
                onPressed: () {
                  context.read<SignupCubit>().signup(
                        _emailController.text,
                        _passwordController.text,
                        _confirmPasswordController.text,
                      );
                },
                text: 'Create Account',
                txtColor: Colors.white,
                bgColor: primarycolor,
              ),
            ],
          ),
        ));
      },
    );
  }
}
