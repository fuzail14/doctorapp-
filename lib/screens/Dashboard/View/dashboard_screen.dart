import 'package:doctor_appointment/screens/Dashboard/Widgets/Containers_Button.dart';
import 'package:doctor_appointment/screens/Dashboard/Widgets/ListTile_Person_info.dart';
import 'package:doctor_appointment/screens/Dashboard/Widgets/drawer_Row.dart';
import 'package:doctor_appointment/screens/Drawer/view/drawer.dart';
import 'package:flutter/material.dart';
import '../../../Routes/app_pages.dart';
import '../../../utills/style.dart';
import 'package:get/get.dart';
import '../Widgets/card_top_doctors.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: DrawerDashboard(),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.275, //201
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Style.drawerGreenColor,
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(100))),
          ),
          Image.asset(
            "images/dashboardEclipse.png",
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.1,
                top: MediaQuery.of(context).size.height * 0.150), //56
            child: ListTilePersonInfo(), //Person Information
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 61),
                child: AppBarTexTRow(
                  drawerOnPressed: () {
                    scaffoldKey.currentState?.openDrawer();
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.300,
                left: MediaQuery.of(context).size.width * 0.050,
                right: MediaQuery.of(context).size.width * 0.050), //top 224
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "What do you need ?",
                    style: TextStyle(
                        fontSize:
                            MediaQuery.of(context).size.width * 0.055, //20
                        fontFamily: "OpenSansSemiBold",
                        color: Color(0xff000000)),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.035, //25
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          //Get.to(() => Appointment());
                          Get.toNamed(Routes.appointment);
                        },
                        child: ButtonContainersDashboard(
                            text: "Appointment",
                            image: "images/stethoscopeDashboard.png",
                            color: Color(0xff948bff)),
                      ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      InkWell(
                        onTap: () {
                          //Get.to(() => RequestedAppointments());
                          Get.toNamed(Routes.requested_appointment);
                        },
                        child: ButtonContainersDashboard(
                            text: "Requested App.",
                            image: "images/requestApp.png",
                            color: Color(0xffFF7854)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          //Get.to(() => AppointmentHistory());
                          Get.toNamed(Routes.appointment_history);
                        },
                        child: ButtonContainersDashboard(
                            text: "App. History",
                            image: "images/appHistory.png",
                            color: Color(0xffFEA725)),
                      ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      ButtonContainersDashboard(
                          text: "leggers",
                          image: "images/leggers.png",
                          color: Color(0xff68EEBE)),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Top Doctors",
                    style: TextStyle(
                        fontSize:
                            MediaQuery.of(context).size.width * 0.050, //18
                        fontFamily: "OpenSansSemiBold",
                        color: Color(0xff25282B)),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CardTopDoctors(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
