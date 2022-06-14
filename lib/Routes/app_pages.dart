import 'package:doctor_appointment/Bindings/appointment_history_binding.dart';
import 'package:doctor_appointment/Bindings/edit_profile_binding.dart';
import 'package:doctor_appointment/Bindings/forget_password_binding.dart';
import 'package:doctor_appointment/Bindings/request_appointment_binding.dart';
import 'package:doctor_appointment/Bindings/sign_in_bindings.dart';
import 'package:doctor_appointment/screens/About%20Us/View/about_us.dart';
import 'package:doctor_appointment/screens/Appointment%20History/View/appointment_history.dart';
import 'package:doctor_appointment/screens/Dashboard/View/dashboard_screen.dart';
import 'package:doctor_appointment/screens/Forget_Password/view/forget_password_screen.dart';
import 'package:doctor_appointment/screens/Invoice/View/invoice.dart';
import 'package:doctor_appointment/screens/My%20Profile/View/my_profile.dart';
import 'package:doctor_appointment/screens/Patient%20Appointment%20Detail/view/patient_appointment_detail.dart';
import 'package:doctor_appointment/screens/Patients/View/patients.dart';
import 'package:doctor_appointment/screens/Pending%20Appointments/View/pending_appointments.dart';
import 'package:doctor_appointment/screens/Sign_Up/view/sign_up.dart';
import 'package:doctor_appointment/screens/Terms%20and%20Conditions/View/terms_conditions.dart';
import 'package:doctor_appointment/screens/Treatments/View/treatments.dart';
import 'package:get/get.dart';
import '../Bindings/add_new_patient_binding.dart';
import '../Bindings/sign_up_binding.dart';
import '../Widgets/bottom_navigation_bar.dart';
import '../screens/Add New Patient/View/add_new_patient.dart';
import '../screens/Appointment/view/appointment.dart';
import '../screens/My Profile/View/edit_profile.dart';
import '../screens/Request An Appointment/View/request_appointment.dart';
import '../screens/Sign_in/view/sign_in.dart';
import '../screens/Splash_Screen/view/splash_screen.dart';
import '../screens/Verify_Phone_Number/otp_phone_verification.dart';
import '../screens/Verify_Phone_Number/verify_phone_number.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();
  static const INITIAL = Routes.splashScreen;
  static final routes = [
    GetPage(
      name: _Paths.splashScreen,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: _Paths.sign_in,
      page: () => Signin(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.sign_up,
      page: () => SignUp(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.verify_phone_number,
      page: () => VerifyPhoneNumber(),
    ),
    GetPage(
      name: _Paths.otp_phone_verification,
      page: () => OtpVerification(),
    ),
    GetPage(
      name: _Paths.forget_password,
      page: () => ForgetPassword(),
      binding: ForgetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.bottom_navigation_bar,
      page: () => BottomNavigationBarScreen(),
    ),
    GetPage(
      name: _Paths.appointment,
      page: () => Appointment(),
    ),
    GetPage(
      name: _Paths.request_an_appointment,
      page: () => RequestAppointment(),
      binding: RequestAppointmentBinding(),
    ),
    GetPage(
      name: _Paths.add_new_patient,
      page: () => AddNewPatient(),
      binding: AddNewPatientBinding(),
    ),
    GetPage(
      name: _Paths.requested_appointment,
      page: () => RequestedAppointments(),
    ),
    GetPage(
      name: _Paths.appointment_history,
      page: () => AppointmentHistory(),
      binding: AppointmentHistoryBinding(),
    ),
    GetPage(
      name: _Paths.dashboard,
      page: () => Dashboard(),
    ),
    GetPage(
      name: _Paths.my_profile,
      page: () => MyProfile(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: _Paths.edit_profile,
      page: () => EditProfile(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: _Paths.patients,
      page: () => Patients(),
    ),
    GetPage(
      name: _Paths.terms_and_conditions,
      page: () => TermsAndConditions(),
    ),
    GetPage(
      name: _Paths.about_us,
      page: () => AboutUs(),
    ),
    GetPage(
      name: _Paths.patient_appointment_detail,
      page: () => PatientAppointmentDetail(),
    ),
    GetPage(
      name: _Paths.treatment,
      page: () => Treatments(),
    ),
    GetPage(
      name: _Paths.invoice,
      page: () => Invoice(),
    ),
  ];
}
