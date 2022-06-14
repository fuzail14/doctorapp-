import 'package:get/get.dart';
import '../screens/Forget_Password/controller/forgetPasswordController.dart';

class ForgetPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgetPassController());
  }
}
