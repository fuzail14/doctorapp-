import 'package:doctor_appointment/screens/Sign_in/Controller/sign_in_controller.dart';
import 'package:doctor_appointment/screens/Sign_in/Sign_in_Widgets/Signin_Text_Row.dart';
import 'package:doctor_appointment/screens/Sign_in/Sign_in_Widgets/clipper_image.dart';
import 'package:doctor_appointment/utills/constantText.dart';
import 'package:doctor_appointment/utills/customButtonsSigninSignup.dart';
import 'package:doctor_appointment/utills/customtextfield.dart';
import 'package:doctor_appointment/utills/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Routes/app_pages.dart';

class Signin extends StatelessWidget {
  Signin({Key? key}) : super(key: key);
  final _formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SigninController>(
          init: SigninController(),
          builder: (controller) {
            return SingleChildScrollView(
              child: Form(
                key: _formkey,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CLipperImage(), //top image
                        Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.085,
                            top: MediaQuery.of(context).size.height * 0.018,
                            //top: 12
                          ),
                          child: SignInTextRow(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.085,
                            top: MediaQuery.of(context).size.height * 0.012,
                          ),
                          child: Text(
                            ConstantText.CredentialText,
                            style: TextStyle(
                              color: Color(0xFFa6a6a6),
                              fontFamily: 'OpenSansSemiBold',
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.036,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.105,
                            right: MediaQuery.of(context).size.width * 0.105,
                          ), //left 39,right 39
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height *
                                      0.059, //top 59
                                ),
                                child: customTextField(
                                  textFieldController:
                                      controller.emailorPhoneController,
                                  text: ConstantText.EmailOrPhoneText,
                                  validator: (value) {
                                    if (!GetUtils.isEmail(value!)) {
                                      if (!GetUtils.isNum(value))
                                        return "Please enter valid email or phone";
                                    }
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.012), //top 12
                                child: customTextField(
                                  textFieldController:
                                      controller.passwordController,
                                  text: ConstantText.EnterPasswordText,
                                  validator: (value) {
                                    if (!RegExp(
                                            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                        .hasMatch(value!)) {
                                      if (value.length < 8) {
                                        return 'Enter at least 8 characters';
                                      }
                                      return 'Please enter a valid password';
                                    } else {}
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height *
                                      0.015,
                                ), //top 15
                                child: InkWell(
                                  onTap: () {
                                    //Get.to(() => ForgetPassword());
                                    Get.toNamed(Routes.forget_password);
                                  },
                                  child: Text(
                                    ConstantText.forgotPassText,
                                    style: TextStyle(
                                      color: Color(0xFF383e47),
                                      fontSize: Get.width * 0.034, //12
                                      fontFamily: 'OpenSansSemiBold',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.064,
                            left: 39,
                            right: 39,
                          ), //top 64
                          //Sign_In Button
                          child: InkWell(
                            onTap: () {
                              if (_formkey.currentState!.validate()) {
                                //Get.to(() => BottomNavigationBarScreen());
                                Get.toNamed(Routes.bottom_navigation_bar);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    Style.snackbar(
                                        "Please Enter Correct Email or Password"));
                              }
                            },
                            child: buttonStyle(ConstantText.SignText +
                                '' +
                                ConstantText.InText),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.020,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                ConstantText.dontHaveAccountText,
                                style: TextStyle(
                                  color: Color(0xFF383e47),
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.039,
                                  fontFamily: 'OpenSansSemiBold',
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  //Get.to(() => SignUp());
                                  Get.toNamed(Routes.sign_up);
                                },
                                child: Text(
                                  ' ' +
                                      ConstantText.SignText +
                                      '' +
                                      ConstantText.UpText,
                                  style: TextStyle(
                                    color: Color(0xFF4b9d91),
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.039,
                                    fontFamily: 'OpenSansSemiBold',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.021, //16
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
