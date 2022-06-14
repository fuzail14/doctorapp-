import 'package:flutter/material.dart';

import '../../Sign_Up/signup_widgets/Circle_Avatar.dart';

class DrawerItems extends StatelessWidget {
  DrawerItems(
      {Key? key, required this.image, required this.text, required this.onTap})
      : super(key: key);
  String image;
  String text;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatarSocialApps(
        backgroundColor: Color(0x07A385).withOpacity(0.15),
        image: image,
      ),
      title: Text(
        text,
        style: TextStyle(
            color: (text == "Logout") ? Color(0xff07A385) : Color(0xff565656),
            fontSize: MediaQuery.of(context).size.width * 0.039, //14
            fontFamily: "OpenSansRegular"),
      ),
    );
  }
}
