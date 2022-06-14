import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ForgetPassController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();
  bool passwordVisible = true;
  bool confirmPassword = true;

  void visibilitypass() {
    passwordVisible = !passwordVisible;
    update();
  }

  void confirmPass() {
    confirmPassword = !confirmPassword;
    update();
  }
}
