import 'package:doctor_appointment/screens/Verify_Phone_Number/dialogeBox_Phone_verification.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpVerification extends StatelessWidget {
  OtpVerification({Key? key}) : super(key: key);
  bool selectval = true;

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: MediaQuery.of(context).size.width * 0.165, //60
      height: MediaQuery.of(context).size.width * 0.165, //64
      textStyle: GoogleFonts.poppins(fontSize: 20, color: Colors.white),
      decoration:
          BoxDecoration(color: Color(0xFF07A385), shape: BoxShape.circle),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.368, //31%
              width: MediaQuery.of(context).size.width,
              child: Image(
                image: AssetImage("images/clipperimage.png"),
                fit: BoxFit.fill,
              ),
            ),
            Text(
              "Phone Verification",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.067,
                  fontFamily: "OpenSans"),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Enter your OTP code here",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.039,
                  fontFamily: "OpenSansRegular"),
            ),
            SizedBox(
              height: 39,
            ),
            Pinput(
              autofocus: true,
              length: 4,
              onCompleted: (String pin) => successMessaegDialogeBox(context),
              separator: SizedBox(
                width: MediaQuery.of(context).size.width * 0.046, //18
              ),
              defaultPinTheme: defaultPinTheme,
              showCursor: true,
              focusedPinTheme: defaultPinTheme.copyWith(
                decoration: BoxDecoration(
                    color: Color(0xFF07A385), shape: BoxShape.circle),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.080, //59
            ),
            Text(
              "Don’t received any code ?",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.039,
                fontFamily: "OpenSansRegular",
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Resend a new code",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.039,
                fontFamily: "OpenSansSemiBold",
                color: Color(0xFF07A385),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
