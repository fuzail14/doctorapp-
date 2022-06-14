import 'package:flutter/material.dart';
import '../../../utills/constantText.dart';

class WelcomeToDocAppointmentTextColumn extends StatelessWidget {
  const WelcomeToDocAppointmentTextColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ConstantText.WelcomeText,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.075, //36
            fontFamily: 'NexaBold',
            color: Color(0xFF000000),
          ),
        ),
        Text(
          ConstantText.DoctorAppointmentText,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.075,
            fontFamily: 'OpenSans',
            color: Color(0xFF07a385),
          ),
        ),
      ],
    );
  }
}
