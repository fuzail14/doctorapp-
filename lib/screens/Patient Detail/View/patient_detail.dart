import 'package:doctor_appointment/Widgets/appbar.dart';
import 'package:flutter/material.dart';

import '../../../utills/style.dart';

class PatientDetail extends StatelessWidget {
  const PatientDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RepeatedAppBar(
        text: "Patient Detail",
      ),
      body: Container(
        height: 470,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.only(top: 19, left: 23, right: 23),
          child: Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(17),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 21, right: 16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset("images/clock.png"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Patient Treatment Plan",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "OpenSansRegular",
                              color: Style.drawerGreenColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Container(
                      height: 104,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Style.textFieldContainerColor,
                      ),
                      child: TextFormField(
                        style: TextStyle(
                            color: Color(0xff6D7B7A),
                            fontFamily: "OpenSansRegular",
                            fontSize: 15),
                        maxLines: 8,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.only(top: 10, left: 11, right: 11),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
