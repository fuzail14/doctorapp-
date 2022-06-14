import 'package:doctor_appointment/screens/Sign_in/view/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Routes/app_pages.dart';

@override
resetPassAlertDialog(BuildContext context) {
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    content: Container(
      height: MediaQuery.of(context).size.height * 0.600, //400
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      // width: MediaQuery.of(context).size.width,
      // color: Colors.red,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.090, //48
            ),
            Image(
              image: AssetImage("images/forgetPasswordkeyimage.png"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025, //25
            ),
            Text(
              "Your password has been reset",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'OpenSansSemiBold',
                fontSize: Get.width * 0.067,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0322, //22
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.057, //57
              child: Text(
                'You’ll shortly receive on email with a code to setup a new password.',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'OpenSansRegular',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.024, //12
            ),
            InkWell(
              onTap: () {
                //Get.offAll(Signin());
                Get.offAllNamed(Routes.sign_in);
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.055, //45
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFfd7670),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Done",
                  style: TextStyle(
                    color: Color(0xFFffffff),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
