import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utills/style.dart';

class TabBarContainers extends StatelessWidget {
  TabBarContainers(
      {Key? key,
      required this.appointmentStatus,
      required this.patientName,
      required this.doctorName,
      required this.appointmentType,
      required this.date,
      required this.day,
      required this.time})
      : super(key: key);
  String appointmentStatus;
  String patientName;
  String doctorName;
  String appointmentType;
  String date;
  String day;
  String time;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(17),
      ),
      elevation: 1,
      child: Container(
        padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height * 0.034), //25
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage("images/invoiceBackgroundImg.png"),
            fit: BoxFit.contain,
          ),
        ),
        //height: MediaQuery.of(context).size.height * 0.215, //156
        child: Padding(
          padding: EdgeInsets.only(
              top: 8, left: Get.width * 0.070, right: Get.width * 0.070),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "DC-No",
                style: TextStyle(
                    fontSize: Get.width * 0.039, color: Color(0xff25A870)),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    patientName,
                    style: TextStyle(
                        fontSize: Get.width * 0.033, color: Color(0xff535353)),
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(top: 5, bottom: 5, left: 7, right: 7),
                    color: (appointmentStatus == 'Attended'
                        ? Color(0xff1c14ff00)
                        : Color(0xffFFF1D9)),
                    // height: 25,
                    // width: 66,
                    child: Center(
                      child: Text(
                        appointmentStatus,
                        style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width * 0.033, //12
                          color: (appointmentStatus == 'Attended')
                              ? Color(0xff4EC018)
                              : Color(0xffEDB36C),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    doctorName,
                    style: TextStyle(
                        fontSize: Get.width * 0.033, color: Color(0xff535353)),
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(top: 5, bottom: 5, left: 7, right: 7),
                    // height: 25,
                    // width: 66,
                    child: Text(
                      appointmentType,
                      style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width * 0.033, //12
                          color: Color(0xff828282),
                          fontFamily: "OpenSansRegular"),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.022, //17
              ),
              Container(
                //height: Get.height * 0.048, //34
                padding: EdgeInsets.only(top: 5, bottom: 5),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xff0CA386),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 9, right: 9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.date_range_outlined,
                        color: Style.whiteColor,
                        size: MediaQuery.of(context).size.width * 0.060,
                      ),
                      Text(
                        date,
                        style: TextStyle(
                            color: Style.whiteColor,
                            fontSize: Get.width * 0.039),
                      ),
                      Text(
                        day,
                        style: TextStyle(
                            color: Style.whiteColor,
                            fontSize: Get.width * 0.039),
                      ),
                      Text(
                        time,
                        style: TextStyle(
                            color: Style.whiteColor,
                            fontSize: Get.width * 0.039),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
