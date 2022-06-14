import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../utills/style.dart';

class RepeatedAppBar extends StatelessWidget with PreferredSizeWidget {
  RepeatedAppBar({Key? key, required this.text}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        text,
        style: TextStyle(
            fontSize: 16,
            color: Style.whiteColor,
            fontFamily: "OpenSansSemiBold"),
      ),
      flexibleSpace: Image.asset(
        //"images/testEclipse.png",
        "images/dashboardEclipse.png",
        alignment: Alignment.topLeft,
        height: 85,
      ),
      //Container(
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     alignment: Alignment.topLeft,
      //     //image: AssetImage("images/dashboardEclipse.png"),
      //     image: AssetImage("images/testEclipse.png"),
      //   ),
      // ),
      //),
      centerTitle: true,
      toolbarHeight: 91,
      backgroundColor: Style.drawerGreenColor,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70);
}
