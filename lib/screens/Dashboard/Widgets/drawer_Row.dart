import 'package:flutter/material.dart';

import '../../../utills/style.dart';

class AppBarTexTRow extends StatelessWidget {
  AppBarTexTRow({Key? key, required this.drawerOnPressed}) : super(key: key);
  void Function()? drawerOnPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: drawerOnPressed,
          icon: Icon(
            Icons.view_headline,
            color: Color(0xffFFFFFF),
          ),
        ),
        Text(
          "Dashboard",
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.044,
              color: Style.whiteColor,
              fontFamily: "OpenSans"),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none,
              color: Style.whiteColor,
            ))
      ],
    );
  }
}
