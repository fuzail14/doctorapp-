import 'package:flutter/material.dart';

class ProfileInfoRow extends StatelessWidget {
  ProfileInfoRow({Key? key, required this.leftText, required this.rightText})
      : super(key: key);
  String leftText;
  String rightText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftText,
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.036, //13
              fontFamily: "OpenSansSemiBold",
              color: Color(0xff565656)),
        ),
        Text(
          rightText,
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.033, //12
              fontFamily: "OpenSansRegular",
              color: Color(0xff808080)),
        ),
      ],
    );
  }
}
