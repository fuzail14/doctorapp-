// import 'package:doctor_appointment/Widgets/appbar.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../controller/add_new_patient_controller.dart';
// import '../../Add New Patient/Widgets/button_submit_container.dart';
// import '../../Sign_Up/controller/signUpController.dart';
// import '../../../utills/customtextfield.dart';
// import '../../../utills/style.dart';
//
// class BookAppointment extends StatelessWidget {
//   const BookAppointment({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: RepeatedAppBar(
//         text: "Add New Patient",
//       ),
//       body: SingleChildScrollView(
//         child: Stack(
//           children: [
//             Padding(
//               padding: EdgeInsets.only(
//                   left: Get.width * 0.053,
//                   right: Get.width * 0.053,
//                   top: Get.height * 0.027,
//                   bottom: Get.height * 0.027), //23,23,19
//               child: Card(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(17),
//                 ),
//                 elevation: 10,
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 12, top: 24, right: 11),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Add Patient",
//                         style: TextStyle(
//                             fontSize: Get.width * 0.042, //15
//                             color: Style.drawerGreenColor,
//                             fontFamily: "OpenSansSemiBold"),
//                       ),
//                       SizedBox(
//                         height: Get.height * 0.018, //13
//                       ),
//                       Text(
//                         "Patient Name",
//                         style: TextStyle(
//                             fontSize: Get.width * 0.039, //14
//                             color: Style.blackColor,
//                             fontFamily: "OpenSansSemiBold"),
//                       ),
//                       SizedBox(
//                         height: 4,
//                       ),
//                       customTextField(
//                         text: "",
//                         validator: (value) {
//                           if (!RegExp(
//                                   r'^([a-zA-Z]{1,}\s[a-zA-Z]{1,}?-?[a-zA-Z]{2,}\s?([a-zA-Z]{1,})?)')
//                               .hasMatch(value!)) {
//                             return "Please enter full name";
//                           } else {}
//                         },
//                       ),
//                       SizedBox(
//                         height: Get.height * 0.023, //16
//                       ),
//                       Text(
//                         "Enter Email ",
//                         style: TextStyle(
//                             fontSize: Get.width * 0.039, //14
//                             color: Style.blackColor,
//                             fontFamily: "OpenSansSemiBold"),
//                       ),
//                       SizedBox(
//                         height: 4,
//                       ),
//                       customTextField(
//                         text: "",
//                         validator: (value) {
//                           if (!GetUtils.isEmail(value!))
//                             return "Please enter valid email";
//                           else {}
//                         },
//                       ),
//                       SizedBox(
//                         height: Get.height * 0.023, //16
//                       ),
//                       Text(
//                         "Enter Phone Number",
//                         style: TextStyle(
//                             fontSize: Get.width * 0.039, //14
//                             color: Style.blackColor,
//                             fontFamily: "OpenSansSemiBold"),
//                       ),
//                       SizedBox(
//                         height: 4,
//                       ),
//                       customTextField(
//                         text: "",
//                         validator: (value) {
//                           if (!GetUtils.isNum(value!))
//                             return "Enter numeric number";
//                           else {}
//                         },
//                       ),
//                       SizedBox(
//                         height: Get.height * 0.023, //16
//                       ),
//                       Text(
//                         "Gender",
//                         style: TextStyle(
//                             fontSize: Get.width * 0.039, //14
//                             color: Style.blackColor,
//                             fontFamily: "OpenSansSemiBold"),
//                       ),
//                       SizedBox(
//                         height: 4,
//                       ),
//                       Container(
//                         color: Style.textFieldContainerColor,
//                         child: GetBuilder<BookAppointmentController>(
//                           init: BookAppointmentController(),
//                           builder: (controller) {
//                             return Row(
//                               children: [
//                                 Expanded(
//                                   child: Padding(
//                                     padding: EdgeInsets.only(
//                                       top: 10,
//                                       bottom: 10,
//                                       left: MediaQuery.of(context).size.width *
//                                           0.075,
//                                     ),
//                                     child: Text(
//                                       "${controller.initalGenderValue}",
//                                       style: TextStyle(
//                                         fontFamily: 'OpenSansSemiBold',
//                                         color: Style.textFieldTextColor,
//                                         fontSize:
//                                             MediaQuery.of(context).size.width *
//                                                 0.036,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 DropdownButton<String>(
//                                   //hint: Text("Gender"),
//                                   items: <String>['Male', 'Female']
//                                       .map((String value) {
//                                     return DropdownMenuItem<String>(
//                                       value: value,
//                                       child: Text(value),
//                                     );
//                                   }).toList(),
//                                   onChanged: (value) {
//                                     controller.changeGenderAppointment(
//                                         value.toString());
//                                     print(value);
//                                     print(controller.initalGenderValue);
//                                   },
//                                 ),
//                               ],
//                             );
//                           },
//                         ),
//                       ),
//                       SizedBox(
//                         height: Get.height * 0.023, //16
//                       ),
//                       Text(
//                         "Appointment Type",
//                         style: TextStyle(
//                             fontSize: Get.width * 0.039, //14
//                             color: Style.blackColor,
//                             fontFamily: "OpenSansSemiBold"),
//                       ),
//                       SizedBox(
//                         height: 4,
//                       ),
//                       Container(
//                         color: Style.textFieldContainerColor,
//                         child: GetBuilder<BookAppointmentController>(
//                           init: BookAppointmentController(),
//                           builder: (controller) {
//                             return Row(
//                               children: [
//                                 Expanded(
//                                   child: Padding(
//                                     padding: EdgeInsets.only(
//                                       top: 10,
//                                       bottom: 10,
//                                       left: MediaQuery.of(context).size.width *
//                                           0.075,
//                                     ),
//                                     child: Text(
//                                       "${controller.initialAppointmentValue}",
//                                       style: TextStyle(
//                                         fontFamily: 'OpenSansSemiBold',
//                                         color: Style.textFieldTextColor,
//                                         fontSize:
//                                             MediaQuery.of(context).size.width *
//                                                 0.036,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 DropdownButton<String>(
//                                   //hint: Text("Gender"),
//                                   items: <String>[
//                                     'Emergency',
//                                     'Routine',
//                                     'Late Evening',
//                                     'Telephone',
//                                   ].map((String value) {
//                                     return DropdownMenuItem<String>(
//                                       value: value,
//                                       child: Text(value),
//                                     );
//                                   }).toList(),
//                                   onChanged: (value) {
//                                     controller.changeAppointmentType(
//                                         value.toString());
//                                     print(value);
//                                     print(controller.initialAppointmentValue);
//                                   },
//                                 ),
//                               ],
//                             );
//                           },
//                         ),
//                       ),
//                       SizedBox(
//                         height: Get.height * 0.023, //16
//                       ),
//                       Text(
//                         "Date",
//                         style: TextStyle(
//                             fontSize: Get.width * 0.039, //14
//                             color: Style.blackColor,
//                             fontFamily: "OpenSansSemiBold"),
//                       ),
//                       SizedBox(
//                         height: 4,
//                       ),
//                       GetBuilder<SignupController>(
//                           init: SignupController(),
//                           builder: (signupcontroller) {
//                             return Container(
//                               height: 40,
//                               color: Style.textFieldContainerColor,
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.only(
//                                       top: 10,
//                                       bottom: 10,
//                                       left: MediaQuery.of(context).size.width *
//                                           0.075,
//                                     ),
//                                     child: (signupcontroller.pickedDate ==
//                                             false)
//                                         ? Text(
//                                             "",
//                                           )
//                                         : Text(
//                                             signupcontroller.now.year
//                                                     .toString() +
//                                                 '-' +
//                                                 signupcontroller.now.month
//                                                     .toString() +
//                                                 '-' +
//                                                 signupcontroller.now.day
//                                                     .toString(),
//                                             style: TextStyle(
//                                               fontFamily: 'OpenSansSemiBold',
//                                               color: Style.textFieldTextColor,
//                                               fontSize: MediaQuery.of(context)
//                                                       .size
//                                                       .width *
//                                                   0.036,
//                                             ),
//                                           ),
//                                   ),
//                                   IconButton(
//                                     onPressed: () {
//                                       signupcontroller.selectDate(context);
//                                     },
//                                     icon: Icon(
//                                       Icons.date_range_outlined,
//                                       color: Color(0xFF8A8A8A),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             );
//                           }),
//                       SizedBox(
//                         height: Get.height * 0.053, //43
//                       ),
//                       InkWell(
//                         onTap: () {
//                           Get.back();
//                         },
//                         child: Center(
//                           child: SubmitButtonContainer(), //Submit Button
//                         ),
//                       ),
//                       SizedBox(
//                         height: Get.height * 0.053, //43
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
