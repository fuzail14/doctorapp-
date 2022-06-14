import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../../utills/style.dart';
import 'package:doctor_appointment/utills/constantList.dart';

class AppointmentHistoryController extends GetxController {
  var now = DateTime.now();
  DateTimeRange? dateRange;
  List<DateTime> allDates = [];

  RxList<GlobalList> dateRangeList = (List<GlobalList>.of([])).obs;

  RxList<GlobalList> dateRangeAppointments(String val1, String val2) {
    dateRangeList.clear();
    GlobalList.customList.forEach((element) {
      if (element.date!.contains(val1) || (element.date!.contains(val2))) {
        dateRangeList.add(GlobalList(
            patientName: element.patientName,
            doctname: element.doctname,
            appointmentType: element.appointmentType,
            date: element.date,
            day: element.day,
            time: element.time,
            appointmentStatus: element.appointmentStatus));
      }
      print(dateRangeList.length);
    });
    return dateRangeList;
  }

//RxList<globalList>
  void getDaysInBetween(DateTime startDate, DateTime endDate) {
    print(startDate);
    dateRangeList.clear();
    for (int i = 0; i <= endDate.difference(startDate).inDays; i++) {
      dateRangeList.add(GlobalList(
          patientName: GlobalList.customList[i].patientName,
          doctname: GlobalList.customList[i].doctname,
          appointmentType: GlobalList.customList[i].appointmentType,
          date: GlobalList.customList[i].date,
          day: GlobalList.customList[i].day,
          time: GlobalList.customList[i].time,
          appointmentStatus: GlobalList.customList[i].appointmentStatus));
      print(dateRangeList.length);
    }
  }

  void rangeFunc(DateTime startDate, DateTime endDate) {
    dateRangeList.clear();
    allDates.clear();
    // List<DateTime> allDates = [];
    for (int i = 0; i <= endDate.difference(startDate).inDays; i++) {
      allDates.add(startDate.add(Duration(days: i)));
      if (DateFormat('dd-MM-yyyy')
          .format(allDates.elementAt(i))
          .contains(GlobalList.customList[i].date)) {
        dateRangeList.add(GlobalList(
            patientName: GlobalList.customList[i].patientName,
            doctname: GlobalList.customList[i].doctname,
            appointmentType: GlobalList.customList[i].appointmentType,
            date: GlobalList.customList[i].date,
            day: GlobalList.customList[i].day,
            time: GlobalList.customList[i].time,
            appointmentStatus: GlobalList.customList[i].appointmentStatus));
        print("all dates${allDates.elementAt(i)}");
      }
    }
    print("all dates after loop:${allDates}");
    print("enddate diff startdate${endDate.difference(startDate).inDays}");
  }

  // RxList<GlobalList> startendDate(DateTime startDate, DateTime endDate) {
  //   dateRangeList.clear();
  //   for (int i = 0; i <= endDate.difference(startDate).inDays; i++) {
  //     print("end date diff start date${endDate.difference(startDate).inDays}");
  //     dateRangeList.add(GlobalList(
  //         patientName: GlobalList.customList[i].patientName,
  //         doctname: GlobalList.customList[i].doctname,
  //         appointmentType: GlobalList.customList[i].appointmentType,
  //         date: GlobalList.customList[i].date,
  //         day: GlobalList.customList[i].day,
  //         time: GlobalList.customList[i].time,
  //         appointmentStatus: GlobalList.customList[i].appointmentStatus));
  //   }
  //   return dateRangeList;
  // }

  Rx<String> getFrom() {
    if (dateRange == null) {
      return 'From'.obs;
    } else {
      return DateFormat('dd-MM-yyyy').format(dateRange!.start).obs;
    }
  }

  Rx<String> getTo() {
    if (dateRange == null) {
      return 'To'.obs;
    } else {
      return DateFormat('dd-MM-yyyy').format(dateRange!.end).obs;
    }
  }

  Future pickDateRange(BuildContext context) async {
    final initialDateRange = DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now().add(Duration(hours: 24 * 6)),
    );
    final newDateRange = await showDateRangePicker(
      context: context,
      builder: (context, child) => Theme(
        data: ThemeData().copyWith(
            colorScheme: ColorScheme.light(primary: Style.drawerGreenColor)),
        child: child!,
      ),
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
      initialDateRange: dateRange ?? initialDateRange,
    );
    if (newDateRange == null) return;
    dateRange = newDateRange;
    update();
  }

  void onInit() {
    // dateRangeAppointments(
    //     dateRange!.start.toString(), dateRange!.end.toString());
    super.onInit();
  }
}
