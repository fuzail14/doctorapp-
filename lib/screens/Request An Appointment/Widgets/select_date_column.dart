import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SelectDateRequestAppointment extends StatelessWidget {
  SelectDateRequestAppointment({Key? key, required this.num}) : super(key: key);
  final _currentDate = DateTime.now();
  final _dateFormatter = DateFormat('d');
  final _dayFormatter = DateFormat('EE');
  int num;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: 47,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffF1F5F9),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_dateFormatter.format(_currentDate.add(Duration(days: num)))),
          Text(_dayFormatter.format(_currentDate.add(Duration(days: num)))),
        ],
      ),
    );
  }
}
