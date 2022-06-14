import 'package:flutter/material.dart';

class snackBar extends StatelessWidget {
  snackBar({Key? key, required this.snackbarText}) : super(key: key);
  String snackbarText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SnackBar(
        content: Text(snackbarText),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15.0), topLeft: Radius.circular(15.0)),
        ),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
