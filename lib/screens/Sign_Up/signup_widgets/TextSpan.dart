import 'package:doctor_appointment/screens/Sign_Up/view/sign_up.dart';
import 'package:flutter/material.dart';
import '../../../utills/constantText.dart';

class SignUpTextSpan extends StatelessWidget {
  const SignUpTextSpan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: ConstantText.SignText,
        style: TextStyle(
          color: Color(0xFF59615d),
          fontSize: MediaQuery.of(context).size.width * 0.075,
          fontFamily: 'OpenSans',
        ),
        children: <InlineSpan>[
          TextSpan(
            text: ConstantText.UpText,
            style: TextStyle(
              color: Color(0xFF4b9d91),
              fontSize: MediaQuery.of(context).size.width * 0.075, //30
              fontFamily: 'OpenSans',
            ),
          ),
        ],
      ),
    );
  }
}
