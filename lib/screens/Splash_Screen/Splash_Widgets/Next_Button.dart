import 'package:flutter/material.dart';

import '../../../utills/constantText.dart';

class NextButton extends StatelessWidget {
  NextButton({Key? key, required this.onpress}) : super(key: key);
  final void Function()? onpress;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.400,
      height: MediaQuery.of(context).size.height * 0.075,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Color(0xFFFFFFFF).withOpacity(0.1),
      ),
      child: TextButton(
        onPressed: onpress,
        child: Text(
          ConstantText.NextButtonText,
          style: TextStyle(
            color: Color(0xFFffffff),
            fontSize: MediaQuery.of(context).size.width * 0.055,
          ),
        ),
      ),
    );
  }
}
