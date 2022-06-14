import 'package:flutter/material.dart';

class buttonStyle extends StatelessWidget {
  buttonStyle(this.buttonText);
  String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.070, //50
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFfd7670),
      ),
      alignment: Alignment.center,
      child: Text(
        buttonText,
        style: TextStyle(
          color: Color(0xFFffffff),
          fontFamily: 'OpenSans',
        ),
      ),
    );
  }
}
