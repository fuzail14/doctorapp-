import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RowItemsTreatmentScreen extends StatelessWidget {
  RowItemsTreatmentScreen({Key? key, required this.num}) : super(key: key);
  String num;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: Get.height * 0.010, //0.034
          left: Get.width * 0.053,
          right: Get.width * 0.140), //25,19,50
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Color(0xffF7F8FA),
            radius: 10,
            child: ClipRect(
              child: Text(
                num,
                style: TextStyle(fontSize: 11, color: Color(0xff868686)),
              ),
            ),
          ),
          SizedBox(
            width: Get.width * 0.036, //13
          ),
          Text(
            "Service Name",
            style: TextStyle(
                fontSize: Get.width * 0.039, color: Color(0xff868686)),
          ),
          Spacer(),
          Container(
              height: 25,
              width: 33,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xff07A385).withOpacity(0.17),
              ),
              child: Center(child: Text("1"))),
        ],
      ),
    );
  }
}
