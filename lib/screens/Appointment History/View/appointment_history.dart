import 'package:doctor_appointment/Widgets/appbar.dart';
import 'package:doctor_appointment/screens/Appointment%20History/controller/appointment_history.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utills/style.dart';
import '../../Appointment/Widgets/TabBarViewItems.dart';
import '../../../utills/constantList.dart';
import 'package:intl/intl.dart';

class AppointmentHistory extends StatelessWidget {
  AppointmentHistory({Key? key}) : super(key: key);
  // globalList item = globalList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RepeatedAppBar(
        text: "Appointment History",
      ),
      body: GetBuilder<AppointmentHistoryController>(
          init: AppointmentHistoryController(),
          builder: (controller) {
            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.055,
                      right: MediaQuery.of(context).size.width * 0.055,
                      top: MediaQuery.of(context).size.height *
                          0.018), //20,20,12
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Appointment",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.039,
                            color: Style.blackColor),
                      ),
                      Container(
                          padding: EdgeInsets.only(
                              top: 5, bottom: 5, left: 10, right: 10),
                          color: Color(0xff14FF00).withOpacity(0.11),
                          child: Center(child: Text("3"))),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.017, //12
                ),
                Divider(
                  height: 0.1,
                  color: Color(0xffC4C4C4),
                ),
                Card(
                  elevation: 1,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.075, //55
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.055,
                        right: MediaQuery.of(context).size.width * 0.055,
                        // top: 12,
                        // bottom: 12,
                      ), //20,20,12,12
                      child: Obx(
                        () => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                controller.pickDateRange(context).obs;
                                // controller
                                //     .dateRangeAppointments(
                                //         DateFormat('dd-MM-yyyy').format(
                                //             controller.dateRange!.start),
                                //         DateFormat('dd-MM-yyyy')
                                //             .format(controller.dateRange!.end))
                                //     .obs;
                                // controller
                                //     .getDaysInBetween(controller.dateRange!.start,
                                //         controller.dateRange!.end);
                                controller.rangeFunc(
                                    controller.dateRange!.start,
                                    controller.dateRange!.end);
                              },
                              child: Container(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.008,
                                    bottom: MediaQuery.of(context).size.height *
                                        0.008), //5,5
                                width: MediaQuery.of(context).size.width * 0.35,
                                color: Color(0xffF7F8FA),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      controller.getFrom().toString(),
                                      // (controller.dateRange==null)?"From":DateFormat('dd-mm-yyyy').format(controller.dateRange!.start),
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.033, //12
                                          color: Style.blackColor,
                                          fontFamily: "OpenSansSemiBold"),
                                    ),
                                    Icon(
                                      Icons.date_range_outlined,
                                      size: MediaQuery.of(context).size.width *
                                          0.042, //15
                                      color: Color(0xff8A8A8A),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_sharp,
                              size: MediaQuery.of(context).size.width *
                                  0.042, //15
                            ),
                            // Obx(
                            //   () =>
                            InkWell(
                              onTap: () {
                                controller.pickDateRange(context).obs;
                                // controller
                                //     .dateRangeAppointments(
                                //         DateFormat('dd-MM-yyyy').format(
                                //             controller.dateRange!.start),
                                //         DateFormat('dd-MM-yyyy').format(
                                //             controller.dateRange!.end))
                                //     .obs;
                                //   controller.getDaysInBetween(
                                //       controller.dateRange!.start,
                                //       controller.dateRange!.end);
                                controller.rangeFunc(
                                    controller.dateRange!.start,
                                    controller.dateRange!.end);
                              },
                              child: Container(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.008,
                                    bottom: MediaQuery.of(context).size.height *
                                        0.008), //5,5
                                width: MediaQuery.of(context).size.width * 0.35,
                                color: Color(0xffF7F8FA),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      controller.getTo().toString(),
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.033, //12
                                          color: Style.blackColor,
                                          fontFamily: "OpenSansSemiBold"),
                                    ),
                                    Icon(
                                      Icons.date_range_outlined,
                                      size: MediaQuery.of(context).size.width *
                                          0.042, //15
                                      color: Color(0xff8A8A8A),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.044,
                          right: MediaQuery.of(context).size.width * 0.044,
                          top: MediaQuery.of(context).size.height *
                              0.032), //16,17,24
                      child: Obx(
                        () => ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: controller.dateRange == null
                                ? GlobalList.customList.length
                                : controller.dateRangeList.length,
                            itemBuilder: (context, index) {
                              print(controller.dateRangeList.length);
                              GlobalList item =
                                  GlobalList.customList.elementAt(index);
                              return Obx(
                                () => Column(
                                  children: [
                                    TabBarContainers(
                                      appointmentStatus: controller
                                              .dateRangeList.isNotEmpty
                                          ? controller.dateRangeList[index]
                                              .appointmentStatus
                                              .toString()
                                          : item.appointmentStatus.toString(),
                                      patientName:
                                          controller.dateRangeList.isNotEmpty
                                              ? controller.dateRangeList[index]
                                                  .patientName
                                                  .toString()
                                              : item.patientName.toString(),
                                      doctorName:
                                          controller.dateRangeList.isNotEmpty
                                              ? controller
                                                  .dateRangeList[index].doctname
                                                  .toString()
                                              : item.doctname.toString(),
                                      appointmentType:
                                          controller.dateRangeList.isNotEmpty
                                              ? controller.dateRangeList[index]
                                                  .appointmentType
                                                  .toString()
                                              : item.appointmentType.toString(),
                                      date: controller.dateRangeList.isNotEmpty
                                          ? controller.dateRangeList[index].date
                                              .toString()
                                          : item.date.toString(),
                                      day: controller.dateRangeList.isNotEmpty
                                          ? controller.dateRangeList[index].day
                                              .toString()
                                          : item.day.toString(),
                                      time: controller.dateRangeList.isNotEmpty
                                          ? controller.dateRangeList[index].time
                                              .toString()
                                          : item.time.toString(),
                                    ),
                                    // TabBarContainers(
                                    //   appointmentStatus:
                                    //       controller.dateRange == null
                                    //           ? globalList.customList[index]
                                    //               .appointmentStatus
                                    //               .toString()
                                    //           : controller.dateRangeList[index]
                                    //               .appointmentStatus
                                    //               .toString(),
                                    //   patientName: controller.dateRange == null
                                    //       ? item.patientName.toString()
                                    //       : controller
                                    //           .dateRangeList[index].patientName
                                    //           .toString(),
                                    //   doctorName: controller.dateRange == null
                                    //       ? item.doctname.toString()
                                    //       : controller
                                    //           .dateRangeList[index].doctname
                                    //           .toString(),
                                    //   appointmentType:
                                    //       controller.dateRange == null
                                    //           ? item.appointmentType.toString()
                                    //           : controller.dateRangeList[index]
                                    //               .appointmentType
                                    //               .toString(),
                                    //   date: controller.dateRange == null
                                    //       ? item.date.toString()
                                    //       : controller.dateRangeList[index].date
                                    //           .toString(),
                                    //   day: controller.dateRange == null
                                    //       ? item.day.toString()
                                    //       : controller.dateRangeList[index].day
                                    //           .toString(),
                                    //   time: controller.dateRange == null
                                    //       ? item.time.toString()
                                    //       : controller.dateRangeList[index].time
                                    //           .toString(),
                                    // ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.020,
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ),
                  ),
                ),
                // Expanded(
                //   child: SingleChildScrollView(
                //     child: Padding(
                //       padding: EdgeInsets.only(
                //           left: MediaQuery.of(context).size.width * 0.044,
                //           right: MediaQuery.of(context).size.width * 0.044,
                //           top: MediaQuery.of(context).size.height *
                //               0.032), //16,17,24
                //       child: Column(
                //         children: [
                //           TabBarContainers(
                //             appointmentStatus: 'Attended',
                //             patientName: 'Patient Name',
                //             time: '07:00 PM',
                //             appointmentType: 'Type',
                //             date: '03 April, 2022',
                //             doctorName: 'Doctor Name',
                //             day: 'Friday',
                //           ),
                //           SizedBox(
                //               height: MediaQuery.of(context).size.height *
                //                   0.028), //21
                //           TabBarContainers(
                //             appointmentStatus: 'Waiting',
                //             patientName: 'Patient Name',
                //             time: '07:00 PM',
                //             appointmentType: 'Type',
                //             date: '03 April, 2022',
                //             doctorName: 'Doctor Name',
                //             day: 'Friday',
                //           ),
                //           SizedBox(
                //               height: MediaQuery.of(context).size.height *
                //                   0.028), //21
                //           TabBarContainers(
                //             appointmentStatus: 'Attended',
                //             patientName: 'Patient Name',
                //             time: '07:00 PM',
                //             appointmentType: 'Type',
                //             date: '03 April, 2022',
                //             doctorName: 'Doctor Name',
                //             day: 'Friday',
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
              ],
            );
          }),
    );
  }
}
