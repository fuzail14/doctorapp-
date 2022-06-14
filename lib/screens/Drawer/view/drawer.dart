import 'package:doctor_appointment/Widgets/bottom_navigation_bar.dart';
import 'package:doctor_appointment/screens/About%20Us/View/about_us.dart';
import 'package:doctor_appointment/screens/Drawer/Widgets/PersonInfoListTile.dart';
import 'package:doctor_appointment/screens/Drawer/Widgets/drawer_items.dart';
import 'package:doctor_appointment/screens/My%20Profile/View/my_profile.dart';
import 'package:doctor_appointment/screens/Patients/View/patients.dart';
import 'package:doctor_appointment/screens/Sign_in/view/sign_in.dart';
import 'package:doctor_appointment/screens/Terms%20and%20Conditions/View/terms_conditions.dart';
import 'package:doctor_appointment/utills/constantText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Dashboard/View/dashboard_screen.dart';

class DrawerDashboard extends StatelessWidget {
  const DrawerDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          //Person Detail
          Container(
            height: MediaQuery.of(context).size.height * 0.200, //113
            color: Color(0xff07A385),
            child: Center(
              child: PersonInfoListTile(),
            ),
          ),
          DrawerItems(
            image: 'images/homeImage.png',
            text: ConstantText.homeDrawerText,
            onTap: () {
              Get.to(() => BottomNavigationBarScreen());
            },
          ),
          DrawerItems(
            image: 'images/myprofileImage.png',
            text: ConstantText.myProfileDrawerText,
            onTap: () {
              Get.to(() => MyProfile());
            },
          ),
          DrawerItems(
            image: 'images/servicesImage.png',
            text: ConstantText.servicesDrawerText,
            onTap: () {
              //Get.to(() => testapp());
            },
          ),
          DrawerItems(
            image: 'images/patientImage.png',
            text: ConstantText.patientDrawerText,
            onTap: () {
              Get.to(() => Patients());
            },
          ),
          DrawerItems(
            image: 'images/termsConditionImage.png',
            text: ConstantText.termConditionsText,
            onTap: () {
              Get.to(() => TermsAndConditions());
            },
          ),
          DrawerItems(
            image: 'images/aboutUsImage.png',
            text: ConstantText.aboutUsText,
            onTap: () {
              Get.to(() => AboutUs());
            },
          ),
          DrawerItems(
            image: 'images/logoutImage.png',
            text: ConstantText.logoutText,
            onTap: () {
              Get.offAll(Signin());
            },
          ),
        ],
      ),
    );
  }
}
