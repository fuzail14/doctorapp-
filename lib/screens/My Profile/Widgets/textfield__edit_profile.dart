import 'package:flutter/material.dart';

class NameTextFormField extends StatelessWidget {
  NameTextFormField({Key? key, required this.controller}) : super(key: key);
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: "Muhammad Bilal Khan",
          hintStyle: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.033, //12
              fontFamily: "OpenSansRegular"),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffC4C4C4))),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffC4C4C4)),
          ),
          contentPadding: EdgeInsets.only(bottom: 10)),
    );
  }
}
