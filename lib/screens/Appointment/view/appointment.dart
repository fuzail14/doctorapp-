import 'package:doctor_appointment/Widgets/appbar.dart';
import 'package:doctor_appointment/screens/Appointment/Widgets/TabBarViewItems.dart';
import 'package:doctor_appointment/utills/constantList.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Routes/app_pages.dart';
import '../../../utills/style.dart';

class Appointment extends StatelessWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Style.drawerGreenColor,
        onPressed: () {
          //Get.to(() => RequestAppointment());
          Get.toNamed(Routes.request_an_appointment);
        },
        child: Icon(
          Icons.add,
          size: 37,
        ),
      ),
      appBar: RepeatedAppBar(
        text: "Appointments",
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: Get.width * 0.055,
                  right: Get.width * 0.055,
                  top: Get.height * 0.015), //20,20,15
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total Appointment"),
                  Container(
                      height: Get.height * 0.033, //24
                      width: Get.width * 0.100, //39
                      color: Color(0xff14FF00).withOpacity(0.11),
                      child: Center(child: Text("1"))),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Divider(
              height: 0.1,
              color: Color(0xffC4C4C4),
              // thickness: 0.5,
            ),
            Container(
              height: Get.height * 0.067, //50
              width: MediaQuery.of(context).size.width,
              child: Card(
                elevation: 1,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: Get.width * 0.055, right: Get.width * 0.055),
                  child: TabBar(
                      indicatorColor: Style.drawerGreenColor,
                      labelColor: Style.drawerGreenColor,
                      indicatorSize: TabBarIndicatorSize.tab,
                      unselectedLabelColor: Color(0xff535353),
                      // isScrollable: true,
                      labelPadding: EdgeInsets.only(left: 0, right: 0),
                      tabs: [
                        Text(
                          'Today Appointments',
                          style: TextStyle(
                              fontSize: Get.width * 0.039,
                              fontFamily: "OpenSansSemiBold"),
                        ),
                        Text(
                          'Upcoming App',
                          //textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: Get.width * 0.039,
                              fontFamily: "OpenSansSemiBold"),
                        )
                      ]),
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: Get.width * 0.044,
                          right: Get.width * 0.044,
                          top: Get.height * 0.034), //16,16,24
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              // Get.to(() => PatientAppointmentDetail());
                              Get.toNamed(Routes.patient_appointment_detail);
                            },
                            child: TabBarContainers(
                              appointmentStatus: 'Attended',
                              patientName: 'Patient Name',
                              time: '07:00 PM',
                              appointmentType: 'Type',
                              date: '03 April, 2022',
                              doctorName: 'Doctor Name',
                              day: 'Friday',
                            ),
                          ),
                          SizedBox(height: Get.height * 0.028), //21
                          TabBarContainers(
                            appointmentStatus: 'Attended',
                            patientName: 'Patient Name',
                            time: '07:00 PM',
                            appointmentType: 'Type',
                            date: '03 April, 2022',
                            doctorName: 'Doctor Name',
                            day: 'Friday',
                          ),
                          SizedBox(height: Get.height * 0.028),
                          TabBarContainers(
                            appointmentStatus: 'Attended',
                            patientName: 'Patient Name',
                            time: '07:00 PM',
                            appointmentType: 'Type',
                            date: '03 April, 2022',
                            doctorName: 'Doctor Name',
                            day: 'Friday',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.044,
                          right: MediaQuery.of(context).size.width * 0.044,
                          top: MediaQuery.of(context).size.height *
                              0.032), //16,17,24
                      child: GlobalList.customList.isEmpty
                          ? Container()
                          : ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: GlobalList.customList.length,
                              itemBuilder: (context, index) {
                                GlobalList item =
                                    GlobalList.customList.elementAt(index);
                                return Column(
                                  children: [
                                    TabBarContainers(
                                        appointmentStatus: GlobalList
                                            .customList[index].appointmentStatus
                                            .toString(),
                                        patientName:
                                            item.patientName.toString(),
                                        doctorName: item.doctname.toString(),
                                        appointmentType:
                                            item.appointmentType.toString(),
                                        date: item.date.toString(),
                                        day: item.day.toString(),
                                        time: item.time.toString()),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.020,
                                    ),
                                  ],
                                );
                              }),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
