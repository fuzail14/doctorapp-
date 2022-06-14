import 'package:flutter/material.dart';

import '../../../utills/style.dart';

class ButtonContainersDashboard extends StatelessWidget {
  ButtonContainersDashboard(
      {Key? key, required this.text, required this.image, required this.color})
      : super(key: key);
  String text;
  String image;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.187, //137
      width: MediaQuery.of(context).size.width * 0.430, //155
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(18)),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.032, //24
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.070, //51
            width: MediaQuery.of(context).size.width * 0.145, //51
            decoration: BoxDecoration(
                color: Style.whiteColor,
                borderRadius: BorderRadius.circular(12)),
            child: Image.asset(image),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.044, //16
              fontFamily: "OpenSansSemiBold",
              color: Style.whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
