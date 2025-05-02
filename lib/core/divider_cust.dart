import 'package:flutter/material.dart';

class DividerCust extends StatelessWidget {
  const DividerCust({super.key, required this.txtcolor, required this.dividercolor});
final Color txtcolor;
final Color dividercolor;
  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(
                    color:dividercolor,
                    thickness: 1,
                    height: 30,
                    endIndent: 10,
                    indent: 35,
                  ),
                ),
                Text(
                  'OR',
                  style: TextStyle(
                      color: txtcolor,
                      fontFamily: 'circular_std',
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                Expanded(
                  child: Divider(
                    color: dividercolor,
                    thickness: 1,
                    height: 2,
                    endIndent: 35,
                    indent: 10,
                  ),
                ),
              ],
            );
  }
}