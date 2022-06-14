import 'package:doctor_appointment/screens/Splash_Screen/Splash_Widgets/Splash_Image.dart';
import 'package:doctor_appointment/screens/Splash_Screen/Splash_Widgets/Text_Column.dart';
import 'package:doctor_appointment/utills/constantText.dart';
import 'package:flutter/material.dart';
import '../../../utills/style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).padding.left + 41,
              top: MediaQuery.of(context).padding.top + 60,
            ), //left 41,top 60
            child: WelcomeToDocAppointmentTextColumn(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.018, //18
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).padding.left + 41,
              right: MediaQuery.of(context).padding.right + 40,
            ), //left 41,right 40
            child: Text(
              ConstantText.SplashIntroText,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.036, //13
                fontFamily: 'OpenSansSemiBold',
                color: Style.splashIntroTextColor,
              ),
            ),
          ),
          SplashScreenImage(),
        ],
      ),
    );
  }
}
