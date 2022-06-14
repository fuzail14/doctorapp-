import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import '../../../utills/style.dart';

class AddNewPatientController extends GetxController {
  TextEditingController patientnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  String initalGenderValue = '';
  String initialAppointmentValue = '';

  void changeGenderAppointment(String gender) {
    initalGenderValue = gender;
    update();
  }

  void changeAppointmentType(String appointment) {
    initialAppointmentValue = appointment;
    update();
  }

  DateTime now = new DateTime.now();
  var formatter = new DateFormat('yyyy-MM-dd');
  String date = '';
  bool pickedDate = false;
  Future<Null> selectDate(BuildContext context) async {
    DateTime? _datePicker = await showDatePicker(
      context: context,
      initialDate: now,
      // Current Date
      firstDate: DateTime(1950),
      // First Date
      lastDate: DateTime(2050),
      builder: (context, child) => Theme(
        data: ThemeData().copyWith(
            colorScheme: ColorScheme.light(primary: Style.drawerGreenColor)),
        child: child!,
      ),
      initialDatePickerMode: DatePickerMode.day, // Day or Year Mode
    );
    if (_datePicker != null && _datePicker != now) {
      now = _datePicker;
      date = now.year.toString() +
          '-' +
          now.month.toString() +
          '-' +
          now.day.toString();
      pickedDate = true;
      update();
    }
  }
}
