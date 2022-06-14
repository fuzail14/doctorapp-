import 'package:doctor_appointment/screens/Verify_Phone_Number/otp_phone_verification.dart';
import 'package:doctor_appointment/utills/style.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:get/get.dart';
import '../../Routes/app_pages.dart';
import '../../utills/constantText.dart';

class VerifyPhoneNumber extends StatelessWidget {
  VerifyPhoneNumber({Key? key}) : super(key: key);
  GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
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
                "Verify your \n phone number",
                style: TextStyle(
                  fontFamily: "OpenSans",
                  fontSize: MediaQuery.of(context).size.width * 0.067,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 18,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.132,
                    right: MediaQuery.of(context).size.width * 0.132), //53,53
                child: Text(
                  "We have sent you an sms with a code to number.",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.039,
                    fontFamily: "OpenSansRegular",
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.070, //51
              ),
              Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.100,
                    right: MediaQuery.of(context).size.width * 0.100), //39,39
                child: Column(
                  children: <Widget>[
                    Container(
                      //color: Style.textFieldContainerColor,
                      //height: MediaQuery.of(context).size.height * 0.080, //60
                      child: IntlPhoneField(
                        // flagsButtonPadding: EdgeInsets.only(
                        //     top: MediaQuery.of(context).size.height * 0.018), //12
                        // validator: ,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height *
                                    0.035), //24
                            errorStyle: TextStyle(fontSize: 10),
                            focusColor: Colors.red,
                            //decoration for Input Field
                            // labelText: 'Phone Number',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Style.drawerGreenColor, width: 1),
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Style.drawerGreenColor, width: 1))),
                        initialCountryCode:
                            'PK', //default contry code, NP for Nepal
                        onChanged: (phone) {
                          //when phone number country code is changed
                          print(phone.completeNumber); //get complete number
                          print(phone.countryCode); // get country code only
                          print(phone.number); // only phone number
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.085,
                  left: MediaQuery.of(context).size.width * 0.100, //39
                  right: MediaQuery.of(context).size.width * 0.100, //39
                ), //top 69
                child: InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      //Get.to(() => OtpVerification());
                      Get.toNamed(Routes.otp_phone_verification);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          Style.snackbar("Please enter your phone number"));
                    }
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.055, //45
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFfd7670),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      ConstantText.sendButtonText,
                      style: TextStyle(
                        color: Color(0xFFffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
