import 'package:flutter/material.dart';

@override
successMessaegDialogeBox(BuildContext context) {
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20))),
    scrollable: true,
    content: Container(
      height: MediaQuery.of(context).size.height * 0.600, //433
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.051, //41
          ),
          Image(
            image: AssetImage("images/SuccessIllustration.png"),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.035, //0.0.25=25
          ),
          Text(
            "Your Account has been successfully created",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'OpenSansSemiBold',
              fontSize: MediaQuery.of(context).size.width * 0.067,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.022, //22
          ),
          Text(
            'You are now logged in to Doc App ',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.039,
              fontFamily: 'OpenSansRegular',
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.060, //50
          ),
          InkWell(
            onTap: () {},
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
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
