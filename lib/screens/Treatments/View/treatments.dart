import 'package:doctor_appointment/Widgets/appbar.dart';
import 'package:doctor_appointment/screens/Treatments/Widgets/container_service_quantity.dart';
import 'package:doctor_appointment/screens/Treatments/Widgets/row_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Treatments extends StatelessWidget {
  const Treatments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RepeatedAppBar(
        text: "Treatments",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextContainerServiceAndQuantity(), //Text
            RowItemsTreatmentScreen(num: '1'),
            SizedBox(
              height: Get.height * 0.010, //16,0.022
            ),
            Divider(
              color: Color(0xffCDCDCD),
              thickness: 1,
            ),
            RowItemsTreatmentScreen(num: '2'),
            SizedBox(
              height: Get.height * 0.010, //16
            ),
            Divider(
              color: Color(0xffCDCDCD),
              thickness: 1,
            ),
            RowItemsTreatmentScreen(num: '3'),
            SizedBox(
              height: Get.height * 0.010,
            ),
            Divider(
              color: Color(0xffCDCDCD),
              thickness: 1,
            ),
            RowItemsTreatmentScreen(num: '4'),
            SizedBox(
              height: Get.height * 0.010,
            ),
            Divider(
              color: Color(0xffCDCDCD),
              thickness: 1,
            ),
            RowItemsTreatmentScreen(num: '5'),
            SizedBox(
              height: Get.height * 0.010,
            ),
            Divider(
              color: Color(0xffCDCDCD),
              thickness: 1,
            ),
            RowItemsTreatmentScreen(num: '6'),
            SizedBox(
              height: Get.height * 0.010,
            ),
            Divider(
              color: Color(0xffCDCDCD),
              thickness: 1,
            ),
            RowItemsTreatmentScreen(num: '7'),
            SizedBox(
              height: Get.height * 0.010,
            ),
            Divider(
              color: Color(0xffCDCDCD),
              thickness: 1,
            ),
            RowItemsTreatmentScreen(num: '8'),
            SizedBox(
              height: Get.height * 0.010,
            ),
            Divider(
              color: Color(0xffCDCDCD),
              thickness: 1,
            ),
            RowItemsTreatmentScreen(num: '9'),
            SizedBox(
              height: Get.height * 0.010,
            ),
            Divider(
              color: Color(0xffCDCDCD),
              thickness: 1,
            ),
            RowItemsTreatmentScreen(num: '10'),
            SizedBox(
              height: Get.height * 0.010,
            ),
            Divider(
              color: Color(0xffCDCDCD),
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
