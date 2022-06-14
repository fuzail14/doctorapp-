import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CardTopDoctors extends StatelessWidget {
  const CardTopDoctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.120, //88
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 14, bottom: 12, left: 12),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.100, //61
                width: MediaQuery.of(context).size.width * 0.185, //70
                color: Color(0xffeaeaea),
                child: Image.asset("images/shakibKhan.png"),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.014,
                      left: 12), //top 14
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Dr. Shakib Khan",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width *
                                  0.044, //16
                              fontFamily: "OpenSansSemiBold"),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Dental",
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    0.033, //12
                                color: Color(0xffAAAAAA),
                                fontFamily: "OpenSansRegular"),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.circle,
                            size: 4,
                            color: Color(0xffAAAAAA),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Columbia Asia Hospital",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.033,
                                color: Color(0xffAAAAAA),
                                fontFamily: "OpenSansRegular"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          RatingBarIndicator(
                            rating: 2.75,
                            itemBuilder: (context, index) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemCount: 5,
                            itemSize: 12.0,
                            direction: Axis.horizontal,
                          ),
                          Text(
                            "(1221)",
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    0.027, //10
                                fontFamily: "OpenSansRegular",
                                color: Color(0xffC4C4C4)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
