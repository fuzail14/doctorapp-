import 'package:doctor_appointment/utills/constantList.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utills/style.dart';

class SelectPatientBottomSheet extends StatelessWidget {
  SelectPatientBottomSheet({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 381,
      decoration: BoxDecoration(
        color: Style.whiteColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 34, right: 34, top: 26),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 40,
                width: Get.width,
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
                    hintText: "Search Patients",
                    hintStyle: Style.customTextFieldStyle.copyWith(
                      fontSize: MediaQuery.of(context).size.width * 0.036,
                    ), //0.036
                    contentPadding: EdgeInsets.only(
                      top: 5,
                      bottom: 10,
                      left: 28,
                    ), //left 27,0.075
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: AddPatientList.addingPatientList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "DC-No",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.039,
                                    fontFamily: "OpenSansSemiBold",
                                    color: Style.drawerGreenColor),
                              ),
                              Text(
                                AddPatientList
                                    .addingPatientList[index].patientname
                                    .toString(),
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.033,
                                    fontFamily: "OpenSansSemiBold",
                                    color: Style.blackColor),
                              ),
                              Icon(Icons.check)
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Divider(
                          color: Color(0xffC4C4C4),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                      ],
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
