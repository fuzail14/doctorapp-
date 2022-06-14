import 'package:doctor_appointment/Widgets/appbar.dart';
import 'package:doctor_appointment/screens/My%20Profile/Widgets/button_container.dart';
import 'package:doctor_appointment/screens/My%20Profile/Widgets/profile_info_row.dart';
import 'package:doctor_appointment/screens/My%20Profile/controller/edit_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Routes/app_pages.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RepeatedAppBar(
        text: "My Profile ",
      ),
      body: GetBuilder<EditAndUpdateProfileController>(
          init: EditAndUpdateProfileController(),
          builder: (controller) {
            return Container(
              height: Get.height,
              width: Get.width,
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.044,
                      right: MediaQuery.of(context).size.width * 0.044,
                      top: 80,
                    ), //16,16
                    child: Container(
                      height: Get.height,
                      // color: Colors.grey,
                      child: SingleChildScrollView(
                        child: Card(
                          elevation: 2,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 97,
                                    left: MediaQuery.of(context).size.width *
                                        0.052,
                                    right: MediaQuery.of(context).size.width *
                                        0.052), //19,19
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Obx(
                                      () => ProfileInfoRow(
                                          leftText: "Name",
                                          rightText: controller.name!.value),
                                    ),
                                    Divider(
                                      color: Color(0xffC4C4C4),
                                    ),
                                    Obx(
                                      () => ProfileInfoRow(
                                          leftText: "Gender",
                                          rightText: controller
                                              .initalvalueGender.value),
                                    ),
                                    Divider(
                                      color: Color(0xffC4C4C4),
                                    ),
                                    Obx(
                                      () => ProfileInfoRow(
                                          leftText: "Age",
                                          rightText:
                                              controller.patientAge.value),
                                    ),
                                    Divider(
                                      color: Color(0xffC4C4C4),
                                    ),
                                    ProfileInfoRow(
                                        leftText: "Reg.Date",
                                        rightText: controller.now.value.year
                                                .toString() +
                                            '-' +
                                            controller.now.value.month
                                                .toString() +
                                            '-' +
                                            controller.now.value.day
                                                .toString()),
                                    Divider(
                                      color: Color(0xffC4C4C4),
                                    ),
                                    Obx(
                                      () => ProfileInfoRow(
                                          leftText: "Phone",
                                          rightText:
                                              controller.phoneNumber!.value),
                                    ),
                                    Divider(
                                      color: Color(0xffC4C4C4),
                                    ),
                                    ProfileInfoRow(
                                        leftText: "Email",
                                        rightText: "abc@gmail.com"),
                                    Divider(
                                      color: Color(0xffC4C4C4),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.130, //100
                                    ),
                                    InkWell(
                                        onTap: () {
                                          Get.toNamed(Routes.edit_profile);
                                        },
                                        child: ButtonContainerMyProfile(
                                            buttonText: "Edit Profile")),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.130, //100
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          elevation: 4,
                          shape: CircleBorder(),
                          child: CircleAvatar(
                            radius: 60,
                            backgroundColor: Colors.white,
                            child: ClipRect(
                              child: Image.asset("images/profileImage.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
