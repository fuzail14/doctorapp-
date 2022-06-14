import 'package:flutter/material.dart';
import '../../../utills/constantText.dart';

class ListTilePersonInfo extends StatelessWidget {
  const ListTilePersonInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        "images/drawerPerson.png",
        height: MediaQuery.of(context).size.height,
      ),
      title: Text(
        "Good Afternoon!",
        style: TextStyle(
            fontFamily: "OpenSansSemiBold",
            color: Color(0xffFFFFFF).withOpacity(0.6),
            fontSize: MediaQuery.of(context).size.width * 0.039),
      ),
      subtitle: Text(
        ConstantText.drawerPersonNameText,
        style: TextStyle(
          fontFamily: "OpenSansSemiBold",
          fontSize: MediaQuery.of(context).size.width * 0.033,
          color: Color(0xffFFFFFF),
        ),
      ),
    );
  }
}
