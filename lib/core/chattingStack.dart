import 'package:chatting_app/core/arrow_back.dart';
import 'package:chatting_app/core/colors.dart';

import 'package:chatting_app/core/contacts_row.dart';

import 'package:flutter/material.dart';

class ChattingStack extends StatefulWidget {
  const ChattingStack(
      {super.key,
      required this.name,
      required this.image,
      required this.isOnline,
      required this.isBorder,
      required this.subTitle,
      required this.isTrailing,
      required this.messages,
      required this.onTapCamera,
      required this.onTapMic,
      required this.onTapAttach,
      required this.onTapAudioCall,
      required this.onTapVideoCall,
      required this.onTapFiles,
      required this.onChanged,
      required this.sendButton});
  final String name;
  final String image;
  final bool isOnline;
  final bool isBorder;
  final Widget subTitle;
  final bool isTrailing;
  final Widget messages;
  final void Function() onTapCamera;
  final void Function() onTapMic;
  final void Function() onTapAttach;
  final void Function() onTapAudioCall;
  final void Function() onTapVideoCall;
  final void Function() onTapFiles;
  final void Function() sendButton;
  final void Function(String value) onChanged;
  @override
  State<ChattingStack> createState() => _ChattingStackState();
}

class _ChattingStackState extends State<ChattingStack> {
  bool isWriting = true;
  String? messageText;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: ArrowBack(),
        title: ContactsRow(
          image: widget.image,
          isArrow: false,
          name: widget.name,
          subTitle: widget.subTitle,
          isTrailing: widget.isTrailing,
          trailing: Row(
            children: [
              SizedBox(width: 70),
              InkWell(
                onTap: widget.onTapAudioCall,
                child:
                    ImageIcon(AssetImage('assets/images/icons/audio_call.png')),
              ),
              SizedBox(width: 15),
              InkWell(
                onTap: widget.onTapVideoCall,
                child:
                    ImageIcon(AssetImage('assets/images/icons/video_call.png')),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              width: width,
              height: height * 0.12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: widget.onTapAttach,
                      child: ImageIcon(
                          AssetImage('assets/images/icons/attach.png'))),
                  Container(
                      width: width * 0.6,
                      height: height * 0.07,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffF3F6F6),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                              width: width * 0.44,
                              child: TextField(
                                onChanged: (value) {
                                  messageText = value;
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Write your message',
                                  hintStyle: TextStyle(
                                      color: Color(0xff797C7B),
                                      fontFamily: 'circular_std',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              )),
                          InkWell(
                              onTap: widget.onTapFiles,
                              child: ImageIcon(
                                  AssetImage('assets/images/icons/files.png'))),
                        ],
                      )),
                  isWriting
                      ? ElevatedButton(
                          onPressed: widget.sendButton,
                          child: Icon(
                            Icons.send,
                            color: white,
                            size: 20,
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: primarycolor,
                              shape: CircleBorder(),
                              fixedSize: Size(40, 40)),
                        )
                      : Row(
                          children: [
                            InkWell(
                                onTap: widget.onTapCamera,
                                child: ImageIcon(AssetImage(
                                    'assets/images/icons/camera.png'))),
                            InkWell(
                                onTap: widget.onTapMic,
                                child: ImageIcon(AssetImage(
                                    'assets/images/icons/microphone.png'))),
                          ],
                        ),
                ],
              ),
            ),
          ),
          widget.messages
        ],
      ),
    );
  }
}
