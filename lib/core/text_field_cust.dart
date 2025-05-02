import 'package:chatting_app/core/colors.dart';
import 'package:flutter/material.dart';

class TextFieldCust extends StatefulWidget {
  const TextFieldCust(
      {super.key,
      required this.label,
      required this.obscureText,
      required this.color,
      required this.controller,
      required this.onChanged});
  final String label;
  final bool obscureText;
  final Color color;
  final TextEditingController controller;
  final void Function()? onChanged;

  @override
  State<TextFieldCust> createState() => _TextFieldCustState();
}

class _TextFieldCustState extends State<TextFieldCust> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: TextStyle(
                color: widget.color,
                fontWeight: FontWeight.w500,
                fontSize: 14,
                fontFamily: 'circular_std'),
          ),
          TextField(
           // onChanged: (value) => widget.onChanged!(),
            cursorErrorColor: Colors.red,
            showCursor: true,
            controller: widget.controller,
            obscureText: widget.obscureText,
            obscuringCharacter: '*',
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: primarycolor),
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: primarycolor)),
            ),
          )
        ],
      ),
    );
  }
}
