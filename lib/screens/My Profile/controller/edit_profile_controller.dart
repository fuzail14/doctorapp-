import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../../utills/style.dart';

class EditAndUpdateProfileController extends GetxController {
  Rx<String>? phoneNumber = "03118438438".obs;
  Rx<TextEditingController> nameController = TextEditingController().obs;
  Rx<String>? name = "Muhammad Bilal Khan".obs;
  Rx<String> patientAge = "26".obs;
  Rx<String> initalvalueGender = 'Male'.obs;

  Rx<DateTime> now = new DateTime.now().obs;
  var formatter = new DateFormat('dd-MM-yyyy');
  Rx<String> date = ''.obs;
  RxBool pickedDate = false.obs;
  Future<Null> selectDate(BuildContext context) async {
    DateTime? _datePicker = await showDatePicker(
      context: context,
      initialDate: now.value,
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

    if (_datePicker != null && _datePicker != now.value) {
      now.value = _datePicker;
      date.value = now.value.year.toString() +
          '-' +
          now.value.month.toString() +
          '-' +
          now.value.day.toString();
      pickedDate.value = true;
      // update();
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  RxList<String> genderList = <String>["Male", "Female"].obs;
  RxList<String> type = <String>[
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20'
  ].obs;
}
