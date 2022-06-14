import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../../utills/style.dart';

class SignupController extends GetxController {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  void onInit() {
    super.onInit();
  }

  DateTime now = new DateTime.now();
  var formatter = new DateFormat('yyyy-MM-dd');
  String date = '';
  bool pickedDate = false;
  String initalvalueController = 'Gender';
  void changeGender(String gender) {
    initalvalueController = gender;
    update();
  }

  bool passwordVisible = true;
  void visibilitypass() {
    passwordVisible = !passwordVisible;
    update();
  }

  bool confirmPassword = true;
  void confirmPass() {
    confirmPassword = !confirmPassword;
    update();
  }

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

      // Last Date
      // textDirection: TextDirection.LTR,
      // Header Text or Button Direction ltr or rtl
      initialDatePickerMode: DatePickerMode.day, // Day or Year Mode
      //   selectableDayPredicate: (DateTime val) =>
      //       val.weekday == 6 || val.weekday == 7 ? false : true, // WeekDay Off
      // selectableDayPredicate: (DateTime val) =>
      //     val.isBefore(val) ? false : true,
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
