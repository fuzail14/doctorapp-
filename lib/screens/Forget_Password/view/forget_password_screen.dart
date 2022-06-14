import 'package:doctor_appointment/screens/Forget_Password/controller/forgetPasswordController.dart';
import 'package:doctor_appointment/screens/Forget_Password/widgets/password_TextFields.dart';
import 'package:doctor_appointment/screens/Sign_in/Sign_in_Widgets/clipper_image.dart';
import 'package:doctor_appointment/utills/constantText.dart';
import 'package:doctor_appointment/utills/customtextfield.dart';
import 'package:doctor_appointment/utills/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dialogeBox_forgetPassword.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({Key? key}) : super(key: key);
  GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ForgetPassController>(
        init: ForgetPassController(),
        builder: (controller) {
          return Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Container(
                    height: Get.height,
                    width: Get.width,
                    child: Image.asset(
                      "images/bottomimg.png",
                      height: 30,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  Column(
                    children: [
                      CLipperImage(),
                      Text(
                        ConstantText.forgotPasswordText,
                        style: TextStyle(
                          fontFamily: "OpenSans",
                          fontSize:
                              MediaQuery.of(context).size.width * 0.067, //24
                          color: Color(0xFF59615D),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015, //12
                      ),
                      Text(
                        ConstantText.introForgetPasswordText,
                        style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width * 0.039, //14
                          color: Color(0xFFA6A6A6),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.070,
                              left: MediaQuery.of(context).size.width *
                                  0.105, //39
                              right: MediaQuery.of(context).size.width *
                                  0.105), //top 61
                          child: customTextField(
                            textFieldController:
                                controller.phoneNumberController,
                            text: ConstantText.enterPhoneNumberForgetPassText,
                            validator: (value) {
                              if (!GetUtils.isNum(value!))
                                return "Enter Phone Number only";
                              else {}
                            },
                          )),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.012,
                                left: MediaQuery.of(context).size.width * 0.105,
                                right: MediaQuery.of(context).size.width *
                                    0.105), //top 12
                            child: PasswordTextFields(
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
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.012,
                              left: MediaQuery.of(context).size.width * 0.105,
                              right: MediaQuery.of(context).size.width * 0.105,
                            ), //top 12
                            child: PasswordTextFields(
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
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.085,
                          left: MediaQuery.of(context).size.width * 0.105,
                          right: MediaQuery.of(context).size.width * 0.105,
                        ), //top 69
                        child: InkWell(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              resetPassAlertDialog(context);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  Style.snackbar(
                                      "Please Enter valid information to proceed"));
                            }
                          },
                          child: Container(
                            height:
                                MediaQuery.of(context).size.height * 0.055, //45
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFfd7670),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              ConstantText.sendButtonText,
                              style: TextStyle(
                                color: Color(0xFFffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.012, //12
                      ),
                      Text(
                        ConstantText.weHaveSentYou,
                        style: TextStyle(
                          fontSize: Get.width * 0.033,
                          color: Color(0xFFA6A6A6),
                          fontFamily: "OpenSansRegular",
                        ),
                      ),
                      //Images.bottomImage,
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
