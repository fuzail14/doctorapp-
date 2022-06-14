import 'package:doctor_appointment/screens/Invoice/Wigdets/textStyle.dart';
import 'package:flutter/material.dart';

class ApplicationNumberRow extends StatelessWidget {
  const ApplicationNumberRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "App No",
          style: InvoiceTextStyle.BoldBlack12TextStyle,
        ),
        Container(
          color: Color(0xffF7F8FA),
          height: 25,
          width: 66,
          child: Center(
            child: Text("2345",
                style: InvoiceTextStyle.BoldBlack12TextStyle.copyWith(
                    fontFamily: "OpenSansSemiBold")),
          ),
        ),
      ],
    );
  }
}
