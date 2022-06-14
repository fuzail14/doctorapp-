import 'package:doctor_appointment/Widgets/appbar.dart';
import 'package:doctor_appointment/screens/Patients/Widgets/container_patient_info.dart';
import 'package:doctor_appointment/utills/constantText.dart';
import 'package:flutter/material.dart';
import '../../../utills/style.dart';

class Patients extends StatelessWidget {
  const Patients({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RepeatedAppBar(
        text: "Patients",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.026,
                  left: MediaQuery.of(context).size.width * 0.060,
                  right: MediaQuery.of(context).size.width * 0.061), //19,22,24
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Patients List",
                    style: TextStyle(
                        fontSize:
                            MediaQuery.of(context).size.width * 0.039, //14
                        fontFamily: "OpenSansSemiBold",
                        color: Style.blackColor),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.116, //42
                  ),
                  Flexible(
                    child: Container(
                      height: 40,
                      // width: Get.width,
                      decoration: BoxDecoration(
                          color: Color(0xffEFEFEF),
                          borderRadius: BorderRadius.circular(30)),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.search,
                            color: Color(0xffB5B3B6),
                          ),
                          border: InputBorder.none,
                          hintText: "Search...",
                          hintStyle: Style.customTextFieldStyle.copyWith(
                            fontSize: MediaQuery.of(context).size.width * 0.036,
                          ), //0.036
                          contentPadding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.009, //5
                            left: 28,
                          ), //left 27,0.075
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.032, //24
            ),
            Column(
              children: [
                PatientInfoContainer(genderText: ConstantText.maleText),
                PatientInfoContainer(genderText: ConstantText.femaleText),
                PatientInfoContainer(genderText: ConstantText.maleText),
                PatientInfoContainer(genderText: ConstantText.femaleText),
                PatientInfoContainer(genderText: ConstantText.maleText),
                PatientInfoContainer(genderText: ConstantText.femaleText),
                PatientInfoContainer(genderText: ConstantText.maleText),
                PatientInfoContainer(genderText: ConstantText.femaleText),
                PatientInfoContainer(genderText: ConstantText.maleText),
                PatientInfoContainer(genderText: ConstantText.femaleText),
                PatientInfoContainer(genderText: ConstantText.maleText),
                PatientInfoContainer(genderText: ConstantText.femaleText),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
