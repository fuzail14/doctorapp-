import 'package:doctor_appointment/Widgets/appbar.dart';
import 'package:doctor_appointment/screens/My%20Profile/Widgets/custom_dropdown_editprofile.dart';
import 'package:doctor_appointment/screens/My%20Profile/Widgets/custom_text.dart';
import 'package:doctor_appointment/screens/My%20Profile/Widgets/textfield__edit_profile.dart';
import 'package:doctor_appointment/screens/My%20Profile/controller/edit_profile_controller.dart';
import 'package:doctor_appointment/screens/My%20Profile/Widgets/button_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../utills/style.dart';

class EditProfile extends StatelessWidget {
  EditProfile({Key? key}) : super(key: key);

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
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.044,
                          right: MediaQuery.of(context).size.width * 0.044,
                          top: 80,
                          bottom: 60),
                      child: Container(
                        height: Get.height,
                        // color: Colors.grey,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomEditProfileText(
                                        text: "Name"), //Name text
                                    NameTextFormField(
                                      controller:
                                          controller.nameController.value,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    CustomEditProfileText(text: "Gender"),
//----------------------------------Gender DropDown-------------------------//
                                    Obx(
                                      () => CustomDropDownEditProfile(
                                        text: "${controller.initalvalueGender}",
                                        item: controller.genderList
                                            .map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                        onChanged: (value) {
                                          controller.initalvalueGender.value =
                                              value.toString();
                                          print(value);
                                          print(controller.initalvalueGender);
                                        },
                                      ),
                                    ),

                                    Divider(
                                      color: Style.dividerColor,
                                      thickness: 1,
                                    ),
                                    CustomEditProfileText(text: "Age"),
//--------------------------------------------Age DropDown--------------------------//
                                    Obx(
                                      () => CustomDropDownEditProfile(
                                        text:
                                            "${controller.patientAge.value.obs}",
                                        item:
                                            controller.type.map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                        onChanged: (value) {
                                          controller.patientAge.value =
                                              value.toString();
                                          print(value);
                                        },
                                      ),
                                    ),

                                    Divider(
                                      color: Style.dividerColor,
                                      thickness: 1,
                                    ),
                                    CustomEditProfileText(text: "Reg.Date"),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        controller.selectDate(context);
                                      },
                                      child: Container(
                                        child: (controller.pickedDate.value ==
                                                false.obs)
                                            ? Text("02/23/2022",
                                                style: TextStyle(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.033, //12
                                                    fontFamily:
                                                        "OpenSansRegular"))
                                            : Obx(
                                                () => Text(
                                                  controller.now.value.year
                                                          .toString() +
                                                      '-' +
                                                      controller.now.value.month
                                                          .toString() +
                                                      '-' +
                                                      controller.now.value.day
                                                          .toString(),
                                                  style: TextStyle(
                                                    fontFamily:
                                                        'OpenSansSemiBold',
                                                    color: Style
                                                        .textFieldTextColor,
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.033,
                                                  ),
                                                ),
                                              ),
                                      ),
                                    ),
                                    Divider(
                                      color: Style.dividerColor,
                                      thickness: 1,
                                    ),
                                    CustomEditProfileText(text: "Phone"),
                                    Container(
                                      //padding: EdgeInsets.only(left: 39, right: 39),
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            child: IntlPhoneField(
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.only(top: 15),
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Style.dividerColor,
                                                      width: 1),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Style
                                                          .drawerGreenColor,
                                                      width: 1),
                                                ),
                                              ),
                                              initialCountryCode: 'PK',
                                              //default contry code, NP for Nepal
                                              onChanged: (phone) {
                                                controller.phoneNumber!.value =
                                                    phone.completeNumber;
                                                //when phone number country code is changed
                                                print(phone
                                                    .completeNumber); //get complete number
                                                print(phone
                                                    .countryCode); // get country code only
                                                print(phone
                                                    .number); // only phone number
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.080, //60
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            controller.name!.value = controller
                                                .nameController.value.text;
                                            Get.back();
                                          },
                                          child: ButtonContainerMyProfile(
                                              buttonText: "Update"),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    0.080, //74
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
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
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Change Picture",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.033,
                                  fontFamily: "OpenSansRegular",
                                  color: Color(0xff868686)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
