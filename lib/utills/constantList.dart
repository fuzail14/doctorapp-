import 'package:doctor_appointment/screens/Request%20An%20Appointment/Model/request_appointment_model.dart';
import 'package:get/get.dart';

class GlobalList {
  String? appointmentType;
  String? appointmentStatus;
  String? doctname;
  String? patientName;
  String? date;
  String? day;
  String? time;
  GlobalList(
      {this.appointmentType,
      this.appointmentStatus,
      this.date,
      this.day,
      this.time,
      this.patientName,
      this.doctname});

  static RxList customList = [].obs;
  // static List<globalList> customList = [];
}

class AddPatientList {
  String? patientname;
  String? email;
  String? phoneNumber;
  String? gender;
  String? appointmentType;
  String? date;
  AddPatientList(
      {this.patientname,
      this.email,
      this.phoneNumber,
      this.gender,
      this.appointmentType,
      this.date});
  static RxList addingPatientList = [].obs;
  // static RxList addingPatient = [].obs;
  // static RxList<AddPatientList> addingPatient =
  //     (List<AddPatientList>.of([])).obs;
}

class ListEditProfile {
  String? patientname;

  ListEditProfile({
    this.patientname,
  });
  static RxList listEditProf = [].obs;
// static RxList addingPatient = [].obs;
// static RxList<AddPatientList> addingPatient =
//     (List<AddPatientList>.of([])).obs;
}
