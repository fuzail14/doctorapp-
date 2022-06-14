import 'package:flutter/material.dart';
import '../../../utills/style.dart';

class SelectPatientRow extends StatelessWidget {
  SelectPatientRow({Key? key, required this.patientName}) : super(key: key);
  String patientName;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "DC-No",
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.039,
              fontFamily: "OpenSansSemiBold",
              color: Style.drawerGreenColor),
        ),
        Text(
          patientName,
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.033,
              fontFamily: "OpenSansSemiBold",
              color: Style.blackColor),
        ),
        Icon(Icons.check)
      ],
    );
  }
}
