import 'package:doctor_appointment/utills/style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class customTextField extends StatelessWidget {
  customTextField(
      {Key? key,
      required this.text,
      required this.validator,
      required this.textFieldController})
      : super(key: key);

  String text;
  TextEditingController? textFieldController;
  final String? Function(String?)? validator;
  //final TextEditingController? textcontroller;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Style.textFieldContainerColor,
      child: TextFormField(
        controller: textFieldController,
        style: TextStyle(
          fontFamily: 'OpenSansSemiBold',
          color: Style.textFieldTextColor,
          fontSize: MediaQuery.of(context).size.width * 0.036,
        ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: text,
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
