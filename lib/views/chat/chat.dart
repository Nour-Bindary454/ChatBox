import 'package:chatting_app/core/chat_bottom_sheet.dart';
import 'package:chatting_app/core/chattingStack.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat(
      {super.key,
      required this.name,
      required this.status,
      required this.image,
      required this.isOnline,
      required this.onTapVideoCall});
  final String name;
  final String status;
  final String image;
  final bool isOnline;
  final void Function() onTapVideoCall;

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final _collection = FirebaseFirestore.instance;
  late User signedInUser; //this will hold the email
  String? messageText; //this will hold the message
  final messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return ChattingStack(
        onChanged: (value) {
          messageText = value;
        },
        sendButton: () {
          _collection.collection('messages').add({
            'text': messageText,
            'sender': signedInUser.email,
          });
        },
        onTapAttach: () {
          showModalBottomSheet(
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) {
                return StatefulBuilder(
                  builder: (context, setState) {
                    return ChatBottomSheet();
                  },
                );
              });
        },
        onTapAudioCall: () {},
        onTapVideoCall: () {},
        onTapCamera: () {},
        onTapFiles: () {},
        onTapMic: () {},
        isBorder: false,
        isOnline: widget.isOnline,
        isTrailing: true,
        subTitle: Text(widget.status, style: TextStyle(fontSize: 12)),
        name: widget.name,
        image: widget.image,
        messages: SizedBox(
          height: height * 0.7,
          child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Text('gjgj');
              }),
        ));
  }
}
