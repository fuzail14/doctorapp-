import 'package:doctor_appointment/Widgets/appbar.dart';
import 'package:flutter/material.dart';

import '../../../utills/style.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RepeatedAppBar(
        text: "Terms & Condition",
      ),
      body: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.042,
            left: MediaQuery.of(context).size.width * 0.067,
            right: MediaQuery.of(context).size.width * 0.067), //32,24,24
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Terms & \nConditions",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.067, //24
                    fontFamily: "OpenSansSemiBold",
                    color: Style.blackColor),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.027, //20
              ),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.039, //14
                    fontFamily: "OpenSansRegular",
                    color: Color(0xff808080)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
