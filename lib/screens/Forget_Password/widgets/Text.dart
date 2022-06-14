import 'package:flutter/material.dart';

import '../../../utills/constantText.dart';

class TextForgetPassScreen {
  static Text forgetPasswordText = Text(
    ConstantText.forgotPasswordText,
    style: TextStyle(
      fontFamily: "OpenSans",
      fontSize: 24,
      color: Color(0xFF59615D),
    ),
  );
  static Text introForgetPassText = Text(
    ConstantText.introForgetPasswordText,
    style: TextStyle(
      fontSize: 14,
      color: Color(0xFFA6A6A6),
    ),
    textAlign: TextAlign.center,
  );
  static Text weHaveSentYou = Text(
    ConstantText.weHaveSentYou,
    style: TextStyle(
      color: Color(0xFFA6A6A6),
      fontFamily: "OpenSansRegular",
    ),
  );
}
