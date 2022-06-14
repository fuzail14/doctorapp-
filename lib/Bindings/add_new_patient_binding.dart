import 'package:get/get.dart';
import '../screens/Add New Patient/controller/add_new_patient_controller.dart';

class AddNewPatientBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewPatientBinding());
  }
}
