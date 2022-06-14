import 'package:doctor_appointment/Widgets/appbar.dart';
import 'package:doctor_appointment/screens/Appointment/Widgets/TabBarViewItems.dart';
import 'package:doctor_appointment/utills/style.dart';
import 'package:flutter/material.dart';
import '../../../utills/constantList.dart';

class RequestedAppointments extends StatelessWidget {
  RequestedAppointments({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RepeatedAppBar(
        text: "Requested Appointments",
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.055,
                right: MediaQuery.of(context).size.width * 0.055,
                top: MediaQuery.of(context).size.height * 0.018), //20,20,12
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
                        top: MediaQuery.of(context).size.height * 0.010,
                        bottom: MediaQuery.of(context).size.height * 0.010,
                        left: MediaQuery.of(context).size.width * 0.025,
                        right: MediaQuery.of(context).size.width * 0.025),
                    // height: 24,
                    // width: 39,
                    color: Color(0xff14FF00).withOpacity(0.11),
                    child: Center(
                        child: Text(GlobalList.customList.length.toString()))),
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
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.044,
                    right: MediaQuery.of(context).size.width * 0.044,
                    top: MediaQuery.of(context).size.height * 0.032), //16,17,24
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
                                  patientName: item.patientName.toString(),
                                  doctorName: item.doctname.toString(),
                                  appointmentType:
                                      item.appointmentType.toString(),
                                  date: item.date.toString(),
                                  day: item.day.toString(),
                                  time: item.time.toString()),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.020,
                              ),
                            ],
                          );
                        }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// Card(
//   shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.circular(17),
//   ),
//   elevation: 1,
//   child: Container(
//     padding: EdgeInsets.only(
//         bottom:
//             MediaQuery.of(context).size.height *
//                 0.034), //25
//     decoration: BoxDecoration(
//       image: DecorationImage(
//         image: ExactAssetImage(
//             "images/invoiceBackgroundImg.png"),
//         fit: BoxFit.contain,
//       ),
//     ),
//     //height: MediaQuery.of(context).size.height * 0.215, //156
//     child: Padding(
//       padding: EdgeInsets.only(
//           top: 8,
//           left: Get.width * 0.070,
//           right: Get.width * 0.070),
//       child: Column(
//         crossAxisAlignment:
//             CrossAxisAlignment.start,
//         children: [
//           Text(
//             "DC-NO",
//             style: TextStyle(
//                 fontSize: Get.width * 0.039,
//                 color: Color(0xff25A870)),
//           ),
//           SizedBox(
//             height: 5,
//           ),
//           Row(
//             mainAxisAlignment:
//                 MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 globalList
//                     .customList[index].patientName
//                     .toString(),
//                 style: TextStyle(
//                     fontSize: Get.width * 0.033,
//                     color: Color(0xff535353)),
//               ),
//               Container(
//                 padding: EdgeInsets.only(
//                     top: 5,
//                     bottom: 5,
//                     left: 7,
//                     right: 7),
//                 color: (item.appointmentStatus ==
//                         'Attended'
//                     ? Color(0xff1c14ff00)
//                     : Color(0xffFFF1D9)),
//                 // height: 25,
//                 // width: 66,
//                 child: Center(
//                   child: Text(
//                     item.appointmentStatus
//                         .toString(),
//                     style: TextStyle(
//                       fontSize:
//                           MediaQuery.of(context)
//                                   .size
//                                   .width *
//                               0.033, //12
//                       color:
//                           (item.appointmentStatus ==
//                                   'Attended')
//                               ? Color(0xff4EC018)
//                               : Color(0xffEDB36C),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment:
//                 MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 item.doctname.toString(),
//                 style: TextStyle(
//                     fontSize: Get.width * 0.033,
//                     color: Color(0xff535353)),
//               ),
//               Container(
//                 padding: EdgeInsets.only(
//                     top: 5,
//                     bottom: 5,
//                     left: 7,
//                     right: 7),
//                 // height: 25,
//                 // width: 66,
//                 child: Text(
//                   item.appointmentType.toString(),
//                   style: TextStyle(
//                       fontSize:
//                           MediaQuery.of(context)
//                                   .size
//                                   .width *
//                               0.033, //12
//                       color: Color(0xff828282),
//                       fontFamily:
//                           "OpenSansRegular"),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: Get.height * 0.022, //17
//           ),
//           Container(
//             //height: Get.height * 0.048, //34
//             padding: EdgeInsets.only(
//                 top: 5, bottom: 5),
//             width:
//                 MediaQuery.of(context).size.width,
//             decoration: BoxDecoration(
//               color: Color(0xff0CA386),
//               borderRadius:
//                   BorderRadius.circular(7),
//             ),
//             child: Padding(
//               padding: EdgeInsets.only(
//                   left: 9, right: 9),
//               child: Row(
//                 mainAxisAlignment:
//                     MainAxisAlignment
//                         .spaceBetween,
//                 children: [
//                   Icon(
//                     Icons.date_range_outlined,
//                     color: Style.whiteColor,
//                     size: MediaQuery.of(context)
//                             .size
//                             .width *
//                         0.060,
//                   ),
//                   Text(
//                     item.date.toString(),
//                     style: TextStyle(
//                         color: Style.whiteColor,
//                         fontSize:
//                             Get.width * 0.039),
//                   ),
//                   Text(
//                     item.day.toString(),
//                     style: TextStyle(
//                         color: Style.whiteColor,
//                         fontSize:
//                             Get.width * 0.039),
//                   ),
//                   Text(
//                     item.time.toString(),
//                     style: TextStyle(
//                         color: Style.whiteColor,
//                         fontSize:
//                             Get.width * 0.039),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   ),
// ),
// import 'package:doctor_appointment/Widgets/appbar.dart';
// import 'package:doctor_appointment/utills/style.dart';
// import 'package:flutter/material.dart';
// import '../../Appointment/Widgets/TabBarViewItems.dart';
//
// class RequestedAppointments extends StatelessWidget {
//   const RequestedAppointments({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: RepeatedAppBar(
//         text: "Requested Appointments",
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: EdgeInsets.only(
//                 left: MediaQuery.of(context).size.width * 0.055,
//                 right: MediaQuery.of(context).size.width * 0.055,
//                 top: MediaQuery.of(context).size.height * 0.018), //20,20,12
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "Total Appointment",
//                   style: TextStyle(
//                       fontSize: MediaQuery.of(context).size.width * 0.039,
//                       color: Style.blackColor),
//                 ),
//                 Container(
//                     height: 24,
//                     width: 39,
//                     color: Color(0xff14FF00).withOpacity(0.11),
//                     child: Center(child: Text("3"))),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: MediaQuery.of(context).size.height * 0.017, //12
//           ),
//           Divider(
//             height: 0.1,
//             color: Color(0xffC4C4C4),
//           ),
//           Expanded(
//             child: SingleChildScrollView(
//               child: Padding(
//                 padding: EdgeInsets.only(
//                     left: MediaQuery.of(context).size.width * 0.044,
//                     right: MediaQuery.of(context).size.width * 0.044,
//                     top: MediaQuery.of(context).size.height * 0.032), //16,17,24
//                 child: Column(
//                   children: [
//                     TabBarContainers(
//                       AppointmentStatusText: 'Pending',
//                     ),
//                     SizedBox(
//                         height:
//                         MediaQuery.of(context).size.height * 0.028), //21
//                     TabBarContainers(
//                       AppointmentStatusText: 'Pending',
//                     ),
//                     SizedBox(
//                         height: MediaQuery.of(context).size.height * 0.028),
//                     TabBarContainers(
//                       AppointmentStatusText: 'Pending',
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
