import 'package:flutter/material.dart';
import '../../../utills/constantText.dart';

class PersonInfoListTile extends StatelessWidget {
  const PersonInfoListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset("images/drawerPerson.png"),
      title: Text(
        ConstantText.drawerPersonNameText,
        style: TextStyle(
          fontFamily: "OpenSansSemiBold",
          color: Color(0xffFFFFFF),
          fontSize: MediaQuery.of(context).size.width * 0.039, //14
        ),
      ),
      subtitle: Text(
        ConstantText.drawerContactNumberText,
        style: TextStyle(
            fontFamily: "OpenSansSemiBold",
            fontSize: MediaQuery.of(context).size.width * 0.033, //12
            color: Color(0xffFFFFFF).withOpacity(0.6)),
      ),
    );
  }
}
