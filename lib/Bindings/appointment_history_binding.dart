import 'package:get/get.dart';
import '../screens/Appointment History/controller/appointment_history.dart';

class AppointmentHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppointmentHistoryController());
  }
}
