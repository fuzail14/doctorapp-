import 'package:flutter/material.dart';
import '../../../utills/style.dart';

class CustomDropDownEditProfile extends StatelessWidget {
  CustomDropDownEditProfile(
      {Key? key,
      required this.text,
      required this.item,
      required this.onChanged})
      : super(key: key);
  String text;
  List<DropdownMenuItem<String>>? item;
  void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            child: Text(
              text,
              style: TextStyle(
                fontFamily: 'OpenSansSemiBold',
                color: Style.textFieldTextColor,
                fontSize: MediaQuery.of(context).size.width * 0.036,
              ),
            ),
          ),
        ),
        DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            items: item,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
