import 'package:doctor_appointment/Bindings/sign_in_bindings.dart';
import 'package:doctor_appointment/Bindings/sign_up_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Bindings/all_bindings.dart';
import 'Routes/app_pages.dart';

void main() {
  // SignupBinding().dependencies();
  runApp(
    GetMaterialApp(
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      // initialBinding: AllScreensBindings(),
    ),
  );
}
