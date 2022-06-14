import 'package:flutter/material.dart';

class CircleAvatarSocialApps extends StatelessWidget {
  CircleAvatarSocialApps(
      {Key? key, required this.image, required this.backgroundColor})
      : super(key: key);
  String image;
  Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      radius: 15,
      child: ClipRect(
        child: Image.asset(
          image,
        ),
      ),
    );
  }
}
