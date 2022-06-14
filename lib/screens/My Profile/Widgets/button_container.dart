import 'package:flutter/material.dart';

import '../../../utills/style.dart';

class ButtonContainerMyProfile extends StatelessWidget {
  ButtonContainerMyProfile({Key? key, required this.buttonText})
      : super(key: key);
  String buttonText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.060, //40
      width: MediaQuery.of(context).size.width * 0.350, //117
      decoration: BoxDecoration(
          color: Color(0xffFD7670), borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.039, //14
              fontFamily: "OpenSansSemiBold",
              color: Style.whiteColor),
        ),
      ),
    );
  }
}
