import 'package:flutter/material.dart';
import '../../../utills/style.dart';

class SubmitButtonContainer extends StatelessWidget {
  const SubmitButtonContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.width * 0.020,
          bottom: MediaQuery.of(context).size.width * 0.020),
      //height: 34,
      width: MediaQuery.of(context).size.width * 0.400, //149
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(16),
        color: Style.drawerGreenColor,
      ),
      child: Center(
        child: Text(
          "Submit",
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.044, //16
              color: Style.whiteColor,
              fontFamily: "OpenSansSemiBold"),
        ),
      ),
    );
  }
}
