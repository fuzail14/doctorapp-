import 'package:flutter/material.dart';

class CustomEditProfileText extends StatelessWidget {
  CustomEditProfileText({Key? key, required this.text}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: MediaQuery.of(context).size.width * 0.036, //13
          fontFamily: "OpenSansSemiBold",
          color: Color(0xff565656)),
    );
  }
}
