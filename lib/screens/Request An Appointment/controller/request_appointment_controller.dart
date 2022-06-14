// import 'package:get/get.dart';
// import 'package:intl/intl.dart';
//
// class RequestAppointmentController extends GetxController {
//   int? currentDateDayIndex;
//   int? currentTimeIndex;
//   int? selectPatientIndex;
//   bool timePicked = false;
//
//   void onInit() {
//     super.onInit();
//
//     selectDate = [
//       (_dateFormatter.format(_currentDate.add(Duration(days: 0)))),
//       (_dateFormatter.format(_currentDate.add(Duration(days: 1)))),
//       (_dateFormatter.format(_currentDate.add(Duration(days: 2)))),
//       (_dateFormatter.format(_currentDate.add(Duration(days: 3)))),
//       (_dateFormatter.format(_currentDate.add(Duration(days: 4)))),
//       (_dateFormatter.format(_currentDate.add(Duration(days: 5)))),
//       (_dateFormatter.format(_currentDate.add(Duration(days: 6)))),
//       (_dateFormatter.format(_currentDate.add(Duration(days: 7)))),
//       (_dateFormatter.format(_currentDate.add(Duration(days: 8)))),
//       (_dateFormatter.format(_currentDate.add(Duration(days: 9))))
//     ];
//     selectDay = [
//       (_dayFormatter.format(_currentDate.add(Duration(days: 0)))),
//       (_dayFormatter.format(_currentDate.add(Duration(days: 1)))),
//       (_dayFormatter.format(_currentDate.add(Duration(days: 2)))),
//       (_dayFormatter.format(_currentDate.add(Duration(days: 3)))),
//       (_dayFormatter.format(_currentDate.add(Duration(days: 4)))),
//       (_dayFormatter.format(_currentDate.add(Duration(days: 5)))),
//       (_dayFormatter.format(_currentDate.add(Duration(days: 6)))),
//       (_dayFormatter.format(_currentDate.add(Duration(days: 7)))),
//       (_dayFormatter.format(_currentDate.add(Duration(days: 8)))),
//       (_dayFormatter.format(_currentDate.add(Duration(days: 9))))
//     ];
//   }
//
//   void changeIndexDateDay(int index) {
//     currentDateDayIndex = index;
//     update();
//   }
//
//   void changeIndexSelectPatient(int index) {
//     selectPatientIndex = index;
//     update();
//   }
//
//   //Selecting time
//   void changeIndexTimeZone(int index) {
//     currentTimeIndex = index;
//     update();
//   }
//
//   bool value = false;
//   void checkBoxValue(bool val) {
//     value = val;
//     update();
//   }
//
//   var appointmentTime = [
//     "09:00 AM",
//     "09:30 AM",
//     "10:00 AM",
//     "10:30 AM",
//     "12:00 PM",
//     "12:30 PM",
//     "01:30 PM",
//     "02:00 PM",
//     "03:00 PM",
//     "04:30 PM",
//     "05:00 PM",
//     "05:30 PM",
//   ];
//
//   final _currentDate = DateTime.now();
//   final _dateFormatter = DateFormat('dd-MM-yyyy');
//   final _dayFormatter = DateFormat('EE');
//   var selectDate = [];
//   var selectDay = [];
// }
