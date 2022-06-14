import 'package:doctor_appointment/screens/Sign_in/Controller/sign_in_controller.dart';
import 'package:get/get.dart';

class SigninBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SigninController());
  }
}
