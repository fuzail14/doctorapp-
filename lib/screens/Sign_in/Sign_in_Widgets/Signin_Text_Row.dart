import 'package:flutter/material.dart';
import '../../../utills/constantText.dart';
import '../../../utills/style.dart';

class SignInTextRow extends StatelessWidget {
  const SignInTextRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          ConstantText.SignText,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.085,
            fontFamily: 'OpenSans',
            color: Color(0xFF59615d),
          ),
        ),
        Text(
          ConstantText.InText,
          style: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: MediaQuery.of(context).size.width * 0.085,
            color: Style.green,
          ),
        ),
      ],
    );
  }
}
