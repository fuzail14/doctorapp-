import 'package:doctor_appointment/screens/Sign_Up/controller/signUpController.dart';
import 'package:doctor_appointment/screens/Sign_Up/signup_widgets/Circle_Avatar.dart';
import 'package:doctor_appointment/screens/Sign_Up/signup_widgets/TextSpan.dart';
import 'package:doctor_appointment/utills/constantText.dart';
import 'package:doctor_appointment/utills/customtextfield.dart';
import 'package:doctor_appointment/utills/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Routes/app_pages.dart';
import '../../Forget_Password/widgets/password_TextFields.dart';
import '../../Sign_in/Sign_in_Widgets/clipper_image.dart';

class SignUp extends GetView<SignupController> {
  SignUp({Key? key}) : super(key: key);
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SignupController>(
          init: SignupController(),
          builder: (controller) {
            return Form(
              key: _formkey,
              child: Stack(
                children: [
                  CLipperImage(), //top Image
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.080,
                      left: MediaQuery.of(context).size.width * 0.065,
                    ), //top 62,left 26
                    child: Text(
                      ConstantText.welcomeBackText,
                      style: TextStyle(
                        fontFamily: 'OpenSansSemiBold',
                        fontSize:
                            MediaQuery.of(context).size.width * 0.065, //26
                        color: Color(0xFFffffff),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    width: MediaQuery.of(context).size.width,
                    child: Image(
                      image: AssetImage("images/bottomimg.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.368, //256
                      left: MediaQuery.of(context).size.width * 0.085,
                    ), //top 268,left 34
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Sign Up Text
                          SignUpTextSpan(),
                          Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height *
                                    0.012), //12
                            child: Text(
                              ConstantText.CredentialText,
                              style: TextStyle(
                                color: Color(0xFFa6a6a6),
                                fontSize: MediaQuery.of(context).size.width *
                                    0.033, //13
                                fontFamily: 'OpenSansSemiBold',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.026,
                              left: MediaQuery.of(context).size.width * 0.015,
                              right: MediaQuery.of(context).size.width * 0.100,
                            ), //top 26,left 5,right 39
                            child: Column(
                              children: [
                                customTextField(
                                    textFieldController:
                                        controller.fullNameController,
                                    text: ConstantText.enterNameText,
                                    validator: (value) {
                                      if (!RegExp(
                                              r'^([a-zA-Z]{1,}\s[a-zA-Z]{1,}?-?[a-zA-Z]{2,}\s?([a-zA-Z]{1,})?)')
                                          .hasMatch(value!)) {
                                        return "Please enter full name";
                                      } else {}
                                    }),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.012, //12
                                ),
                                customTextField(
                                    textFieldController:
                                        controller.phoneNumberController,
                                    text: ConstantText.enterPhoneText,
                                    validator: (value) {
                                      if (!GetUtils.isNum(value!))
                                        return "Enter numeric number";
                                      else {}
                                    }),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.012, //12
                                ),
                                customTextField(
                                    textFieldController:
                                        controller.emailController,
                                    text: ConstantText.enterEmailText,
                                    validator: (value) {
                                      if (!GetUtils.isEmail(value!))
                                        return "Please enter valid email";
                                      else {}
                                    }),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.012,
                                ),
                                Container(
                                  height: 45,
                                  color: Style.textFieldContainerColor,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          // top: 10,
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.075,
                                        ),
                                        child: (controller.pickedDate == false)
                                            ? Text(
                                                "Age",
                                                style: TextStyle(
                                                  fontFamily:
                                                      'OpenSansSemiBold',
                                                  color:
                                                      Style.textFieldTextColor,
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          0.036,
                                                ),
                                              )
                                            : Text(
                                                controller.now.year.toString() +
                                                    '-' +
                                                    controller.now.month
                                                        .toString() +
                                                    '-' +
                                                    controller.now.day
                                                        .toString(),
                                                style: TextStyle(
                                                  fontFamily:
                                                      'OpenSansSemiBold',
                                                  color:
                                                      Style.textFieldTextColor,
                                                  fontSize:
                                                      MediaQuery.of(context)
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
                                  height: MediaQuery.of(context).size.height *
                                      0.012,
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
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.075,
                                          ),
                                          child: Text(
                                            "${controller.initalvalueController}",
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
                                        child: Expanded(
                                          child: DropdownButton<String>(
                                            //hint: Text("Gender"),
                                            items: <String>['Male', 'Female']
                                                .map((String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value),
                                              );
                                            }).toList(),
                                            onChanged: (value) {
                                              controller.changeGender(
                                                  value.toString());
                                              print(value);
                                              print(controller
                                                  .initalvalueController);
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.012,
                                ),
                                Column(
                                  children: [
                                    PasswordTextFields(
                                      obscureText: controller.passwordVisible,
                                      validator: (value) {
                                        if (!RegExp(
                                                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                            .hasMatch(value!)) {
                                          return 'Please enter a valid password';
                                        } else {}
                                      },
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          (controller.passwordVisible)
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                        ),
                                        onPressed: () {
                                          controller.visibilitypass();
                                        },
                                      ),
                                      hintText: ConstantText.newPasswordText,
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.012,
                                    ),
                                    PasswordTextFields(
                                      obscureText: controller.confirmPassword,
                                      validator: (value) {
                                        if (!RegExp(
                                                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                            .hasMatch(value!)) {
                                          return 'Please enter a valid password';
                                        } else {}
                                      },
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          (controller.confirmPassword)
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                        ),
                                        onPressed: () {
                                          controller.confirmPass();
                                        },
                                      ),
                                      hintText: ConstantText.confirmPassText,
                                    ),
                                  ],
                                ),
                                // }),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.030, //30
                                ),
                                InkWell(
                                  onTap: () {
                                    if (_formkey.currentState!.validate()) {
                                      if (controller.initalvalueController !=
                                          'Gender') {
                                        if (controller.pickedDate == true) {
                                          //Get.to(() => VerifyPhoneNumber());
                                          Get.toNamed(
                                              Routes.verify_phone_number);
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(Style.snackbar(
                                                  'Please Select your age'));
                                        }
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(Style.snackbar(
                                                'Please select your gender'));
                                      }
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(Style.snackbar(
                                              'Please validate all the form fields'));
                                    }
                                  },
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.055, //40
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xFFfd7670),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      ConstantText.SignText +
                                          " " +
                                          ConstantText.UpText,
                                      style: TextStyle(
                                        color: Color(0xFFffffff),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.027, //27
                                ),
                                Text(
                                  "---------- Or sign in with ----------",
                                  style: TextStyle(
                                    color: Color(0xFF07a385),
                                    fontSize: 10,
                                    fontFamily: 'Nunito',
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.025, //25
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: CircleAvatarSocialApps(
                                        backgroundColor: Colors.transparent,
                                        image: "images/google_original.png",
                                      ),
                                    ),
                                    Expanded(
                                      child: CircleAvatarSocialApps(
                                          backgroundColor: Colors.transparent,
                                          image:
                                              "images/facebook_original.png"),
                                    ),
                                    Expanded(
                                      child: CircleAvatarSocialApps(
                                          backgroundColor: Colors.transparent,
                                          image: "images/apple_original.png"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 65,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
