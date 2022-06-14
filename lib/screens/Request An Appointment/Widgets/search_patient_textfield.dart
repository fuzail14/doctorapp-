import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utills/style.dart';

class SearchPatientTextField extends StatelessWidget {
  const SearchPatientTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: Get.width,
      decoration: BoxDecoration(
          color: Color(0xffEFEFEF), borderRadius: BorderRadius.circular(30)),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          suffixIcon: Icon(
            Icons.search,
            color: Color(0xffB5B3B6),
          ),
          border: InputBorder.none,
          hintText: "Search Patients",
          hintStyle: Style.customTextFieldStyle.copyWith(
            fontSize: MediaQuery.of(context).size.width * 0.036,
          ),
          //0.036
          contentPadding: EdgeInsets.only(
            top: 5,
            bottom: 10,
            left: 28,
          ), //left 27,0.075
        ),
      ),
    );
  }
}
