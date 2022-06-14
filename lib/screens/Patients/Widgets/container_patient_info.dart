import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utills/style.dart';

class PatientInfoContainer extends StatelessWidget {
  PatientInfoContainer({Key? key, required this.genderText}) : super(key: key);
  String genderText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.080, //46
      width: Get.width,
      color: (genderText == "M") ? Style.whiteColor : Color(0xffF8F8F8),
      child: Padding(
        padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.058,
            top: 8,
            right: MediaQuery.of(context).size.width * 0.067), //21,8,27
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "DC-No",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.033, //12
                      fontFamily: "OpenSansSemiBold",
                      color: Style.drawerGreenColor),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.009, //5
                ),
                Text(
                  "Patient Name",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.028, //10
                      fontFamily: "OpenSansRegular",
                      color: Color(0xff808080)),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "15 October 2021",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.028, //10
                      fontFamily: "OpenSansRegular",
                      color: Color(0xff808080)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.009, //5
                ),
                Text(
                  "03463802800",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.033, //12
                      fontFamily: "OpenSansRegular",
                      color: Color(0xff808080)),
                ),
              ],
            ),
            Column(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xffEBEBEB),
                  radius: 15,
                  child: ClipRect(
                    child: Text(
                      genderText,
                      style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width * 0.028, //10
                          fontFamily: "OpenSansRegular",
                          color: (genderText == "M")
                              ? Style.drawerGreenColor
                              : Color(0xffDE3905)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
