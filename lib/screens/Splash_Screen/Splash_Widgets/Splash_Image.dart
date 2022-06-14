import 'package:doctor_appointment/screens/Splash_Screen/Splash_Widgets/Next_Button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Routes/app_pages.dart';
import '../../Sign_in/view/sign_in.dart';

class SplashScreenImage extends StatelessWidget {
  const SplashScreenImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.101,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/splashimg.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(bottom: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                NextButton(onpress: () {
                  // Get.to(() => Signin());
                  Get.toNamed(Routes.sign_in);
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
