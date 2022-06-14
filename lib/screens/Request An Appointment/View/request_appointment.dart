import 'package:doctor_appointment/screens/Request%20An%20Appointment/Widgets/search_patient_textfield.dart';
import 'package:doctor_appointment/screens/Request%20An%20Appointment/controller/controller_request_an_appoinment.dart';
import 'package:doctor_appointment/utills/constantList.dart';
import 'package:get/get.dart';
import 'package:doctor_appointment/Widgets/appbar.dart';
import 'package:flutter/material.dart';
import '../../../Routes/app_pages.dart';
import '../Model/request_appointment_model.dart';
import '../../../utills/style.dart';

class RequestAppointment extends StatelessWidget {
  RequestAppointment({Key? key}) : super(key: key);
  requestAppointmentModel objModel = requestAppointmentModel();

  bool timePicked = false;
  bool datedayPicked = false;
  bool yourAppointment = false;
  int? selectPatientIndex;
  @override
  Widget build(BuildContext context) {
    String patientName = "fuzail";
    String doctorName = "Abdullah";
    String appointmentType = "New";
    String appointmentStatus = "Pending";
    String dateee;

    return Scaffold(
      appBar: RepeatedAppBar(
        text: "Request an Appointment",
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: GetBuilder<ControllerRequestAnAppointment>(
            init: ControllerRequestAnAppointment(),
            builder: (controller) {
              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.044,
                        top: MediaQuery.of(context).size.height * 0.030,
                        right: MediaQuery.of(context).size.width *
                            0.046), //16,22,17
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Select the date",
                          style: TextStyle(
                              fontSize: Get.width * 0.039, //14
                              fontFamily: "OpenSansSemiBold",
                              color: Style.blackColor),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.023, //16
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.1, //70
                          child: GridView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.selectDate.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 1,
                                      mainAxisSpacing: 10,
                                      crossAxisSpacing: 5,
                                      childAspectRatio: 1.2),
                              itemBuilder: (context, index) {
                                dateee = controller.selectDate[index];
                                dateee.split('-');
                                return InkWell(
                                  onTap: () {
                                    controller.changeIndexDateDay(index);
                                    objModel.date =
                                        controller.selectDate[index];
                                    objModel.day = controller.selectDay[index];
                                    datedayPicked = true;
                                  },
                                  child: Container(
                                    // height: MediaQuery.of(context).size.height *
                                    //     0.2, //100
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: (controller.currentDateDayIndex ==
                                              index)
                                          ? Style.drawerGreenColor
                                          : Color(0xffF1F5F9),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          dateee[0] + dateee[1],
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.039,
                                              color: Style.blackColor),
                                        ),
                                        Text(
                                          controller.selectDay[index],
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.039,
                                              color: Style.blackColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.04, //32
                        ),
                        Text(
                          "Available Time Slots",
                          style: TextStyle(
                              fontSize: Get.width * 0.039, //14
                              fontFamily: "OpenSansSemiBold",
                              color: Style.blackColor),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.02, //19
                        ),
                        Container(
                          height:
                              MediaQuery.of(context).size.height * 0.2, //140
                          // color: Colors.amberAccent,
                          child: GridView.builder(
                              itemCount: controller.appointmentTime.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4,
                                      mainAxisSpacing: 7,
                                      crossAxisSpacing: 10,
                                      childAspectRatio: 1.9),
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    controller.changeIndexTimeZone(index);
                                    //print(controller.appointmentTime[index]);
                                    objModel.time =
                                        controller.appointmentTime[index];
                                    print(objModel.time);
                                    objModel.patientName = patientName;
                                    objModel.doctorName = doctorName;
                                    timePicked = true;
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: (controller.currentTimeIndex ==
                                                index)
                                            ? Style.drawerGreenColor
                                            : Colors.white,
                                        border: Border.all(
                                            width: 1,
                                            color: Color(0xff6B779A)
                                                .withOpacity(0.10))),
                                    child: Center(
                                        child: FittedBox(
                                            child: Text(
                                      controller.appointmentTime[index],
                                      style: TextStyle(
                                          fontSize: Get.width * 0.039,
                                          //14
                                          fontFamily: "OpenSansRegular"),
                                    ))),
                                  ),
                                );
                              }),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.07, //52
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: Get.width,
                    height: MediaQuery.of(context).size.height * 0.3, //221
                    color: Color(0xffF9F9FA),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                activeColor: Style.drawerGreenColor,
                                value: controller.value,
                                onChanged: (value) {
                                  controller.checkBoxValue(value!);
                                  yourAppointment = true;
                                }),
                            Text(
                              "Your Appointment!",
                              style: TextStyle(
                                  fontSize: Get.width * 0.039, //14
                                  fontFamily: "OpenSansSemiBold",
                                  color: Style.greyColor),
                            ),
                          ],
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.027, //20
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.044,
                              right: MediaQuery.of(context).size.width *
                                  0.044), //16,16
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              (controller.value == false)
                                  ? Text(
                                      "Select Patient",
                                      style: TextStyle(
                                          fontSize: Get.width * 0.039, //14
                                          fontFamily: "OpenSansSemiBold",
                                          color: Style.greyColor),
                                    )
                                  : Container(),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    0.01, //7
                              ),
                              (controller.value == false)
                                  ? InkWell(
                                      onTap: () {
                                        controller.searchingPatient(controller
                                            .searchController.value.text);
                                        Get.bottomSheet(
                                          Container(
                                            height: 381,
                                            decoration: BoxDecoration(
                                              color: Style.whiteColor,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(30),
                                                  topRight:
                                                      Radius.circular(30)),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.090,
                                                  right: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.090,
                                                  top: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.035), //34,34,26
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      height: 40,
                                                      width: Get.width,
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Color(0xffEFEFEF),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30)),
                                                      child: Obx(
                                                        () => TextFormField(
                                                          controller: controller
                                                              .searchController
                                                              .value,
                                                          onChanged: (value) {
                                                            controller
                                                                .searchingPatient(
                                                                    value);
                                                          },
                                                          autovalidateMode:
                                                              AutovalidateMode
                                                                  .onUserInteraction,
                                                          decoration:
                                                              InputDecoration(
                                                            suffixIcon: Icon(
                                                              Icons.search,
                                                              color: Color(
                                                                  0xffB5B3B6),
                                                            ),
                                                            border: InputBorder
                                                                .none,
                                                            hintText:
                                                                "Search Patients",
                                                            hintStyle: Style
                                                                .customTextFieldStyle
                                                                .copyWith(
                                                              fontSize: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.036,
                                                            ),
                                                            contentPadding:
                                                                EdgeInsets.only(
                                                              top: 5,
                                                              bottom: 10,
                                                              left: 28,
                                                            ), //left 27,0.075
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.037,
                                                    ),
                                                    Obx(
                                                      () => ListView.builder(
                                                          physics:
                                                              NeverScrollableScrollPhysics(),
                                                          shrinkWrap: true,
                                                          itemCount: controller
                                                                  .searchingList
                                                                  .isNotEmpty
                                                              ? controller
                                                                  .searchingList
                                                                  .length
                                                              : 0,
                                                          // controller
                                                          //         .searchController
                                                          //         .value
                                                          //         .text
                                                          //         .isNotEmpty
                                                          //     ? controller
                                                          //         .searchingList
                                                          //         .length
                                                          //     : AddPatientList
                                                          //         .addingPatientList
                                                          //         .length,
                                                          itemBuilder:
                                                              (context, index) {
                                                            print(controller
                                                                .searchController
                                                                .value
                                                                .text);
                                                            print(
                                                                "AddPatientList Length${AddPatientList.addingPatientList.length}");
                                                            print(
                                                                "SearchPatientList Length${controller.searchingList.length}");

                                                            return Column(
                                                              children: [
                                                                InkWell(
                                                                  onTap: () {
                                                                    controller
                                                                        .selectPatientIndex!
                                                                        .value = index;
                                                                  },
                                                                  child: Obx(
                                                                    () => Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Text(
                                                                          "DC-No",
                                                                          style: TextStyle(
                                                                              fontSize: MediaQuery.of(context).size.width * 0.039,
                                                                              fontFamily: "OpenSansSemiBold",
                                                                              color: Style.drawerGreenColor),
                                                                        ),
                                                                        Text(
                                                                          // controller.searchController.value.text.isNotEmpty
                                                                          //     ? controller.searchingList[index].patientname.toString()
                                                                          //     : AddPatientList.addingPatientList[index].patientname.toString(),
                                                                          controller.searchingList.isNotEmpty
                                                                              ? controller.searchingList[index].patientname.toString()
                                                                              : AddPatientList.addingPatientList[index].patientname.toString(),
                                                                          style: TextStyle(
                                                                              fontSize: MediaQuery.of(context).size.width * 0.033,
                                                                              fontFamily: "OpenSansSemiBold",
                                                                              color: Style.blackColor),
                                                                        ),
                                                                        controller.selectPatientIndex ==
                                                                                index
                                                                            ? Icon(Icons.check)
                                                                            : SizedBox(
                                                                                width: 20,
                                                                              ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height: 9,
                                                                ),
                                                                Divider(
                                                                  color: Color(
                                                                      0xffC4C4C4),
                                                                ),
                                                                SizedBox(
                                                                  height: 11,
                                                                ),
                                                              ],
                                                            );
                                                          }),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.050, //37
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Style.whiteColor,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Icon(
                                              Icons.arrow_drop_down,
                                              color: Color(0xff989898),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  : Text(""),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    0.035, //26
                              ),
                              (controller.value == false)
                                  ? InkWell(
                                      onTap: () {
                                        Get.toNamed(Routes.add_new_patient);
                                      },
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.050, //37
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Color(0xffD5EFEA),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.add,
                                              color: Style.drawerGreenColor,
                                            ),
                                            Text(
                                              "Add New Patient",
                                              style: TextStyle(
                                                  fontSize:
                                                      Get.width * 0.039, //14
                                                  fontFamily:
                                                      "OpenSansSemiBold",
                                                  color: Style.greyColor),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  : Text("")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.11,
                        left: MediaQuery.of(context).size.width * 0.11), //41,41
                    child: InkWell(
                      onTap: () {
                        if (datedayPicked == true) {
                          if (timePicked == true) {
                            if (yourAppointment == true) {
                              Get.toNamed(Routes.requested_appointment);
                              GlobalList.customList.add(GlobalList(
                                  patientName: patientName,
                                  appointmentType: appointmentType,
                                  appointmentStatus: appointmentStatus,
                                  date: objModel.date,
                                  day: objModel.day,
                                  doctname: doctorName,
                                  time: objModel.time));
                              // print(globalList.customList[1].doctname);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  Style.snackbar(
                                      "please verify! its your appointment or not"));
                            }
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                Style.snackbar(
                                    "Please select time for appointment"));
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              Style.snackbar(
                                  "Please select any date for appointment"));
                        }
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.055, //40
                        width: Get.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Style.drawerGreenColor,
                        ),
                        child: Center(
                          child: Text(
                            "Continue",
                            style: TextStyle(
                                fontSize: Get.width * 0.039, //14
                                fontFamily: "OpenSansSemiBold",
                                color: Style.whiteColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
