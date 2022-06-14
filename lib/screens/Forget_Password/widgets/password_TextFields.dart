import 'package:flutter/material.dart';
import '../../../utills/constantText.dart';
import '../../../utills/style.dart';

class PasswordTextFields extends StatelessWidget {
  PasswordTextFields(
      {Key? key,
      required this.obscureText,
      required this.validator,
      required this.suffixIcon,
      required this.hintText})
      : super(key: key);
  bool obscureText;
  String? Function(String?)? validator;
  Widget? suffixIcon;
  String? hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Style.textFieldContainerColor,
      child: TextFormField(
        obscureText: obscureText,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: Style.customTextFieldStyle.copyWith(
            fontSize: MediaQuery.of(context).size.width * 0.036,
          ), //0.036
          contentPadding: EdgeInsets.only(
            top: 10,
            bottom: 10,
            left: MediaQuery.of(context).size.width * 0.075,
          ), //left 27,0.075
        ),
      ),
    );
  }
}
