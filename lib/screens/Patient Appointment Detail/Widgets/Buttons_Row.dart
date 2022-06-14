import 'package:flutter/material.dart';

import '../../../utills/style.dart';

class ButtonRow extends StatelessWidget {
  ButtonRow({Key? key, required this.image, required this.text})
      : super(key: key);
  String image;
  String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          height: 18,
        ),
        SizedBox(
          width: 13,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 12,
              color: Color(0xff868686),
              fontFamily: "OpenSansSemiBold"),
        ),
        Spacer(),
        Icon(
          Icons.arrow_forward_ios_outlined,
          size: 13,
          color: Style.drawerGreenColor,
        ),
      ],
    );
  }
}
