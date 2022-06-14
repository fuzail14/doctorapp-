import 'package:doctor_appointment/Widgets/appbar.dart';
import 'package:doctor_appointment/utills/constantList.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/add_new_patient_controller.dart';
import '../../Add New Patient/Widgets/button_submit_container.dart';
import '../../../utills/customtextfield.dart';
import '../../../utills/style.dart';

class AddNewPatient extends StatelessWidget {
  AddNewPatient({Key? key}) : super(key: key);
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RepeatedAppBar(
        text: "Add New Patient",
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: GetBuilder<AddNewPatientController>(
            init: AddNewPatientController(),
            builder: (controller) {
              return Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: Get.width * 0.053,
                        right: Get.width * 0.053,
                        top: Get.height * 0.027,
                        bottom: Get.height * 0.027), //23,23,19
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      elevation: 10,
                      child: Padding(
                        padding: EdgeInsets.only(left: 12, top: 24, right: 11),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Add Patient",
                              style: TextStyle(
                                  fontSize: Get.width * 0.042, //15
                                  color: Style.drawerGreenColor,
                                  fontFamily: "OpenSansSemiBold"),
                            ),
                            SizedBox(
                              height: Get.height * 0.018, //13
                            ),
                            Text(
                              "Patient Name",
                              style: TextStyle(
                                  fontSize: Get.width * 0.039, //14
                                  color: Style.blackColor,
                                  fontFamily: "OpenSansSemiBold"),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            customTextField(
                              textFieldController:
                                  controller.patientnameController,
                              text: "",
                              validator: (value) {
                                if (!RegExp(
                                        r'^([a-zA-Z]{1,}\s[a-zA-Z]{1,}?-?[a-zA-Z]{2,}\s?([a-zA-Z]{1,})?)')
                                    .hasMatch(value!)) {
                                  return "Please enter full name";
                                } else {}
                              },
                            ),
                            SizedBox(
                              height: Get.height * 0.023, //16
                            ),
                            Text(
                              "Enter Email ",
                              style: TextStyle(
                                  fontSize: Get.width * 0.039, //14
                                  color: Style.blackColor,
                                  fontFamily: "OpenSansSemiBold"),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            customTextField(
                              textFieldController: controller.emailController,
                              text: "",
                              validator: (value) {
                                if (!GetUtils.isEmail(value!))
                                  return "Please enter valid email";
                                else {}
                              },
                            ),
                            SizedBox(
                              height: Get.height * 0.023, //16
                            ),
                            Text(
                              "Enter Phone Number",
                              style: TextStyle(
                                  fontSize: Get.width * 0.039, //14
                                  color: Style.blackColor,
                                  fontFamily: "OpenSansSemiBold"),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            customTextField(
                              textFieldController:
                                  controller.phoneNumberController,
                              text: "",
                              validator: (value) {
                                if (!GetUtils.isNum(value!))
                                  return "Enter numeric number";
                                else {}
                              },
                            ),
                            SizedBox(
                              height: Get.height * 0.023, //16
                            ),
                            Text(
                              "Gender",
                              style: TextStyle(
                                  fontSize: Get.width * 0.039, //14
                                  color: Style.blackColor,
                                  fontFamily: "OpenSansSemiBold"),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Container(
                              color: Style.textFieldContainerColor,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: 10,
                                        bottom: 10,
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.075,
                                      ),
                                      child: Text(
                                        "${controller.initalGenderValue}",
                                        style: TextStyle(
                                          fontFamily: 'OpenSansSemiBold',
                                          color: Style.textFieldTextColor,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.036,
                                        ),
                                      ),
                                    ),
                                  ),
                                  DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      items: <String>['Male', 'Female']
                                          .map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (value) {
                                        controller.changeGenderAppointment(
                                            value.toString());
                                        print(value);
                                        print(controller.initalGenderValue);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.023, //16
                            ),
                            Text(
                              "Appointment Type",
                              style: TextStyle(
                                  fontSize: Get.width * 0.039, //14
                                  color: Style.blackColor,
                                  fontFamily: "OpenSansSemiBold"),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Container(
                              color: Style.textFieldContainerColor,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: 10,
                                        bottom: 10,
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.075,
                                      ),
                                      child: Text(
                                        "${controller.initialAppointmentValue}",
                                        style: TextStyle(
                                          fontFamily: 'OpenSansSemiBold',
                                          color: Style.textFieldTextColor,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.036,
                                        ),
                                      ),
                                    ),
                                  ),
                                  DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      //hint: Text("Gender"),
                                      items: <String>[
                                        'Old',
                                        'New',
                                      ].map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (value) {
                                        controller.changeAppointmentType(
                                            value.toString());
                                        print(value);
                                        print(
                                            controller.initialAppointmentValue);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.023, //16
                            ),
                            Text(
                              "Date",
                              style: TextStyle(
                                  fontSize: Get.width * 0.039, //14
                                  color: Style.blackColor,
                                  fontFamily: "OpenSansSemiBold"),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Container(
                              height: 40,
                              color: Style.textFieldContainerColor,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 10,
                                      bottom: 10,
                                      left: MediaQuery.of(context).size.width *
                                          0.075,
                                    ),
                                    child: (controller.pickedDate == false)
                                        ? Text(
                                            "",
                                          )
                                        : Text(
                                            controller.now.day.toString() +
                                                '-' +
                                                controller.now.month
                                                    .toString() +
                                                '-' +
                                                controller.now.year.toString(),
                                            style: TextStyle(
                                              fontFamily: 'OpenSansSemiBold',
                                              color: Style.textFieldTextColor,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.036,
                                            ),
                                          ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      controller.selectDate(context);
                                    },
                                    icon: Icon(
                                      Icons.date_range_outlined,
                                      color: Color(0xFF8A8A8A),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.053, //43
                            ),
                            InkWell(
                              onTap: () {
                                if (_formkey.currentState!.validate()) {
                                  if (controller.initalGenderValue != "") {
                                    if (controller.initialAppointmentValue !=
                                        "") {
                                      if (controller.pickedDate == true) {
                                        AddPatientList.addingPatientList
                                            .add(AddPatientList(
                                          patientname: controller
                                              .patientnameController.text,
                                          email:
                                              controller.emailController.text,
                                          phoneNumber: controller
                                              .phoneNumberController.text,
                                          gender: controller.initalGenderValue,
                                          appointmentType: controller
                                              .initialAppointmentValue,
                                          date: controller.now.day.toString() +
                                              '-' +
                                              controller.now.month.toString() +
                                              '-' +
                                              controller.now.year.toString(),
                                        ));
                                        print(AddPatientList
                                            .addingPatientList.length);
                                        // print(AddPatientList
                                        //     .addingPatient[0].gender);
                                        Get.back();
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(Style.snackbar(
                                                "Please select date"));
                                      }
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(Style.snackbar(
                                              "Please select appointment type"));
                                    }
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        Style.snackbar(
                                            "Please select your gender"));
                                  }
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      Style.snackbar(
                                          "Please Enter all the required details"));
                                }
                              },
                              child: Center(
                                child: SubmitButtonContainer(), //Submit Button
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.053, //43
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
