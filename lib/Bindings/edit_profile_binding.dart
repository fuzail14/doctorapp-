import 'package:get/get.dart';
import '../screens/My Profile/controller/edit_profile_controller.dart';

class EditProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditAndUpdateProfileController());
  }
}
