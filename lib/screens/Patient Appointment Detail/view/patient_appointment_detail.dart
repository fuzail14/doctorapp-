import 'package:doctor_appointment/Widgets/appbar.dart';
import 'package:doctor_appointment/screens/Invoice/View/invoice.dart';
import 'package:doctor_appointment/screens/Treatments/View/treatments.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Routes/app_pages.dart';
import '../../../utills/style.dart';

class PatientAppointmentDetail extends StatelessWidget {
  const PatientAppointmentDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RepeatedAppBar(
        text: "Sarfraz",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: Get.width * 0.055,
                  right: Get.width * 0.055,
                  top: Get.height * 0.036), //top 26
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17),
                ),
                elevation: 10,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: Get.height * 0.036,
                          left: Get.width * 0.055,
                          right: Get.width * 0.055), //26,20,20
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            color: Color(0xffF7F8FA),
                            height: 25,
                            width: 66,
                            child: Center(
                              child: Text(
                                "DC-131",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Style.blackColor,
                                    fontFamily: "OpenSansSemiBold"),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.phone,
                                color: Style.drawerGreenColor,
                                size: Get.width * 0.030, //12
                              ),
                              SizedBox(
                                width: 11,
                              ),
                              Text(
                                "+92-332-1234567",
                                style: TextStyle(
                                    fontSize: Get.width * 0.030, //11
                                    color: Style.greyColor,
                                    fontFamily: "OpenSansRegular"),
                              ),
                            ],
                          ),
                          Divider(
                            color: Style.dividerColor,
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Appointment Number",
                                style: TextStyle(
                                    fontSize: Get.width * 0.033, //12
                                    color: Style.blackColor,
                                    fontFamily: "OpenSansSemiBold"),
                              ),
                              Container(
                                height: 18,
                                width: 18,
                                color: Color(0xffF7F8FA),
                                child: Center(
                                  child: Text(
                                    "7",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Style.blackColor,
                                        fontFamily: "OpenSansRegular"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Divider(
                            color: Style.dividerColor,
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total Appointment ",
                                style: TextStyle(
                                    fontSize: Get.width * 0.033, //12
                                    color: Style.blackColor,
                                    fontFamily: "OpenSansSemiBold"),
                              ),
                              Container(
                                height: 18,
                                width: 18,
                                color: Color(0xffF7F8FA),
                                child: Center(
                                  child: Text(
                                    "6",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Style.blackColor,
                                        fontFamily: "OpenSansRegular"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Divider(
                            color: Style.dividerColor,
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          InkWell(
                            onTap: () {
                              //Get.to(() => Treatments());
                              Get.toNamed(Routes.treatment);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Treatments",
                                  style: TextStyle(
                                      fontSize: Get.width * 0.033, //12
                                      color: Style.blackColor,
                                      fontFamily: "OpenSansSemiBold"),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: Get.width * 0.033,
                                  color: Style.drawerGreenColor,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Divider(
                            color: Style.dividerColor,
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          InkWell(
                            onTap: () {
                              //Get.to(() => Invoice());
                              Get.toNamed(Routes.invoice);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Invoice",
                                  style: TextStyle(
                                      fontSize: Get.width * 0.033, //12
                                      color: Style.blackColor,
                                      fontFamily: "OpenSansSemiBold"),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: Get.width * 0.033, //13
                                  color: Style.drawerGreenColor,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Divider(
                            color: Style.dividerColor,
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          Text(
                            "Patient Detail",
                            style: TextStyle(
                                fontSize: Get.width * 0.033, //12
                                color: Style.drawerGreenColor,
                                fontFamily: "OpenSansSemiBold"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 104,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Style.textFieldContainerColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
