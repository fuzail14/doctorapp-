import 'package:flutter/material.dart';

class Style {
  static final green = Color(0xFF4b9d91);
  static final textFieldTextColor = Color(0xFF8a8a8a);
  static final textFieldContainerColor = Color(0xFFf3f3f3);
  static final splashIntroTextColor = Color(0xFFa6a6a6);
  static final drawerGreenColor = Color(0xff07A385);
  static final whiteColor = Color(0xffFFFFFF);
  static final blackColor = Color(0xff535353);
  static final dividerColor = Color(0xffC4C4C4);
  static final greyColor = Color(0xff868686);

  static const TextStyle customTextFieldStyle = TextStyle(
    color: Color(0xFF8a8a8a),
    fontSize: 13, //0.036
    fontFamily: 'OpenSansSemiBold',
  );

  static Container SigninSignupButtonContainer = Container(
    height: 50, //50,0.070
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Color(0xFFfd7670),
    ),
    alignment: Alignment.center,
  );
  static snackbar(String text) {
    return SnackBar(
      content: Text(text),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(15.0), topLeft: Radius.circular(15.0)),
      ),
      duration: Duration(seconds: 2),
    );
  }
}
