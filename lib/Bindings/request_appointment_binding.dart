import 'package:doctor_appointment/screens/Request%20An%20Appointment/controller/controller_request_an_appoinment.dart';
import 'package:get/get.dart';
import '../screens/Request An Appointment/controller/request_appointment_controller.dart';

class RequestAppointmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ControllerRequestAnAppointment());
  }
}
