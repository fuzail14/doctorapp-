import 'package:flutter/material.dart';
import '../../../utills/style.dart';
import 'package:get/get.dart';

class TextContainerServiceAndQuantity extends StatelessWidget {
  const TextContainerServiceAndQuantity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 2,
        child: Padding(
          padding: EdgeInsets.only(
              left: Get.width * 0.140, right: Get.width * 0.140),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Services",
                style: TextStyle(
                    fontSize: Get.width * 0.039, //14
                    fontFamily: "OpenSansSemiBold",
                    color: Style.drawerGreenColor),
              ),
              Text(
                "Quantity",
                style: TextStyle(
                    fontSize: Get.width * 0.039, //14
                    fontFamily: "OpenSansSemiBold",
                    color: Style.drawerGreenColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
