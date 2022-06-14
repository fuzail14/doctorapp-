import 'package:doctor_appointment/Widgets/appbar.dart';
import 'package:doctor_appointment/screens/Invoice/Wigdets/application_no_container.dart';
import 'package:doctor_appointment/screens/Invoice/Wigdets/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utills/style.dart';

class Invoice extends StatelessWidget {
  const Invoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RepeatedAppBar(
        text: 'Invoice',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: Get.width * 0.050,
                left: Get.width * 0.050,
                top: Get.height * 0.040,
                bottom: Get.height * 0.040,
              ), //18,18,30
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: Get.height * 0.028,
                          right: Get.width * 0.067,
                          left: Get.width * 0.067), //21,24,24
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ApplicationNumberRow(), //App no = 2345
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Thursday, 17 February 2022",
                            style: InvoiceTextStyle.RegularBlack12TextStyle
                                .copyWith(fontSize: Get.width * 0.039),
                          ),
                          SizedBox(height: 9),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Service Name ",
                                style: TextStyle(
                                    fontSize: Get.width * 0.039, //12
                                    color: Style.drawerGreenColor,
                                    fontFamily: "OpenSansSemiBold"),
                              ),
                              Text(
                                "100.00",
                                style: TextStyle(
                                    fontSize: Get.width * 0.039, //12
                                    color: Color(0xff868686),
                                    fontFamily: "OpenSansSemiBold"),
                              ),
                            ],
                          ),
                          SizedBox(height: 9),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Other Service  x 2",
                                style: TextStyle(
                                    fontSize: Get.width * 0.039, //12
                                    color: Style.drawerGreenColor,
                                    fontFamily: "OpenSansSemiBold"),
                              ),
                              Text(
                                "800.00",
                                style: TextStyle(
                                    fontSize: Get.width * 0.039, //12
                                    color: Color(0xff868686),
                                    fontFamily: "OpenSansSemiBold"),
                              ),
                            ],
                          ),
                          SizedBox(height: 14),
                        ],
                      ),
                    ),
                    Container(
                      //height: Get.height * 0.170, //128
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: Color(0xffF7F8FA).withOpacity(0.4),
                        image: DecorationImage(
                          image: ExactAssetImage(
                              "images/invoiceBackgroundImg.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: Get.height * 0.016,
                            right: Get.width * 0.067,
                            left: Get.width * 0.067), //11,24,24
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Treat Total",
                                  style: TextStyle(
                                      fontSize: Get.width * 0.039, //12
                                      color: Style.blackColor,
                                      fontFamily: "OpenSansRegular"),
                                ),
                                Text(
                                  "900.00",
                                  style: TextStyle(
                                      fontSize: Get.width * 0.039, //12
                                      color: Color(0xff868686),
                                      fontFamily: "OpenSansSemiBold"),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Paid",
                                  style: TextStyle(
                                      fontSize: Get.width * 0.039, //12
                                      color: Style.blackColor,
                                      fontFamily: "OpenSansRegular"),
                                ),
                                Text(
                                  "200.00",
                                  style: TextStyle(
                                      fontSize: Get.width * 0.039, //12
                                      color: Color(0xff868686),
                                      fontFamily: "OpenSansSemiBold"),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Discount",
                                  style: TextStyle(
                                      fontSize: Get.width * 0.039, //12
                                      color: Style.blackColor,
                                      fontFamily: "OpenSansRegular"),
                                ),
                                Text(
                                  "200.00",
                                  style: TextStyle(
                                      fontSize: Get.width * 0.039, //12
                                      color: Color(0xff868686),
                                      fontFamily: "OpenSansSemiBold"),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Previous Balance",
                                  style: TextStyle(
                                      fontSize: Get.width * 0.039, //12
                                      color: Style.blackColor,
                                      fontFamily: "OpenSansRegular"),
                                ),
                                Text(
                                  "200.00",
                                  style: TextStyle(
                                      fontSize: Get.width * 0.039, //12
                                      color: Color(0xff868686),
                                      fontFamily: "OpenSansSemiBold"),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: Get.height * 0.026, //20
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: Get.width * 0.067,
                          right: Get.width * 0.067), //24,24
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Attended by",
                                style: TextStyle(
                                    fontSize: Get.width * 0.039, //12
                                    color: Style.blackColor,
                                    fontFamily: "OpenSansRegular"),
                              ),
                              Text(
                                "user123",
                                style: TextStyle(
                                    fontSize: Get.width * 0.039, //12
                                    color: Color(0xff868686),
                                    fontFamily: "OpenSansSemiBold"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            "Invoice to :",
                            style: TextStyle(
                                fontSize: Get.width * 0.039, //12
                                color: Style.blackColor,
                                fontFamily: "OpenSansSemiBold"),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            "Received with Thanks from sarfaraz the sum Rs. 2000 an account of Treatment / Medicine Charges.",
                            style: TextStyle(
                                fontSize: Get.width * 0.039,
                                color: Style.blackColor,
                                fontFamily: "OpenSansRegular"),
                          ),
                          SizedBox(
                            height: Get.height * 0.25, //50
                          ),
                        ],
                      ),
                    )
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
