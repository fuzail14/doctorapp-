import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:doctor_appointment/screens/Appointment%20History/View/appointment_history.dart';
import 'package:doctor_appointment/screens/Dashboard/View/dashboard_screen.dart';
import 'package:doctor_appointment/screens/My%20Profile/View/my_profile.dart';
import 'package:doctor_appointment/utills/style.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatelessWidget {
  BottomNavigationBarScreen({Key? key}) : super(key: key);
  int page = 0;
  final routes = [
    Dashboard(),
    AppointmentHistory(),
    MyProfile(),
    Dashboard(),
    Dashboard(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: routes[page],
      bottomNavigationBar: CurvedNavigationBar(
        height: 47,
        // animationCurve: Curves.bounceInOut,
        backgroundColor: Colors.transparent,
        color: Style.drawerGreenColor,
        items: <Widget>[
          Image.asset("images/homeBottomBar.png"),
          Image.asset("images/phoneBottomBar.png"),
          Image.asset("images/settingBottomBar.png"),
          Image.asset("images/calendarBottomBar.png"),
          Image.asset("images/profileBottomBar.png"),
        ],
        onTap: (index) {
          page = index;
        },
      ),
    );
  }
}
