import 'package:get/get.dart';
import '../screens/Sign_Up/controller/signUpController.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupController());
  }
}
