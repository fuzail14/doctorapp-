import 'package:doctor_appointment/Widgets/appbar.dart';
import 'package:doctor_appointment/screens/Sign_Up/controller/signUpController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utills/style.dart';

class AboutUs extends GetView<SignupController> {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RepeatedAppBar(
        text: "About Us",
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.035, //28
          ),
          Text(
            "About Doc App",
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.055, //20
                color: Style.blackColor,
                fontFamily: "OpenSansSemiBold"),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.048, //39
          ),
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.030, //23
                left: MediaQuery.of(context).size.width * 0.060,
                right: MediaQuery.of(context).size.width * 0.060),
            height: MediaQuery.of(context).size.height * 0.320, //237
            width: MediaQuery.of(context).size.width,
            color: Color(0xffF7F8FA),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.039, //14
                  color: Style.blackColor,
                  fontFamily: "OpenSansRegular"),
            ),
          ),
          Expanded(
            child: Container(
              width: Get.width,
              height: Get.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/aboutUsScreenImage.png"),
                      fit: BoxFit.fill)),
            ),
          ),
        ],
      ),
    );
  }
}
