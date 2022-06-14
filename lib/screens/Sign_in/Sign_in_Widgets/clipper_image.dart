import 'package:flutter/material.dart';

class CLipperImage extends StatelessWidget {
  const CLipperImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.368,
      width: MediaQuery.of(context).size.width,
      child: Image(
        image: AssetImage("images/clipperimage.png"),
        fit: BoxFit.fill,
      ),
    );
  }
}
