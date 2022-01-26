import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/page/HomePage/HomePage.dart';
import 'package:intl/intl.dart';

var time = DateTime.now();
int get_Weekday(){
return time.weekday;
}
int weekday = get_Weekday();

int get_Date(){
  return time.day;
}
int date = get_Date();

var monday = date - weekday +1;
  var tuesday = monday + 1;
  var wednesday = tuesday + 1;
  var thursday = wednesday + 1;
  var friday = thursday + 1;
  var saturday = friday+ 1;
  var sunday = saturday + 1;

class BigCalendar extends StatelessWidget {
  const BigCalendar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(kDefaultPadding, 0, kDefaultPadding, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Container(
            margin: EdgeInsets.fromLTRB(0, 0, kCalendarPadding, 0),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.transparent),
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              color: weekday == 1 ? kCalendarColor : kBackgroundColor,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(6, 8, 6, 6),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                    child: Text(
                      'MO',
                      style: TextStyle(
                        color: weekday == 1 ? kBackgroundColor : kGreyColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Text(
                    '${monday}',
                    style: TextStyle(
                      color: weekday == 1 ? kBackgroundColor : Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
               ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, kCalendarPadding, 0),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.transparent),
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              color: weekday == 2 ? kCalendarColor : kBackgroundColor,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(6, 8, 6, 6),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                    child: Text(
                      'TU',
                      style: TextStyle(
                        color: weekday == 2 ? kBackgroundColor : kGreyColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Text('${tuesday}',
                    style: TextStyle(
                      color: weekday == 2 ? kBackgroundColor: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
               ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, kCalendarPadding, 0),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.transparent),
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              color: weekday == 3 ? kCalendarColor : kBackgroundColor,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(6, 8, 6, 6),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                    child: Text(
                      'WE',
                      style: TextStyle(
                        color: weekday == 3 ? kBackgroundColor : kGreyColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Text(
                    '${wednesday}',
                    style: TextStyle(
                      color: weekday == 3 ? kBackgroundColor : Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
               ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, kCalendarPadding, 0),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.transparent),
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              color: weekday == 4 ? kCalendarColor : kBackgroundColor,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(6, 8, 6, 6),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                    child: Text(
                      'TH',
                      style: TextStyle(
                        color: weekday == 4 ? kBackgroundColor : kGreyColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Text(
                    '${thursday}',
                    style: TextStyle(
                      color: weekday == 4 ? kBackgroundColor : Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
               ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, kCalendarPadding, 0),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.transparent),
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              color: weekday == 5 ? kCalendarColor : kBackgroundColor,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(6, 8, 6, 6),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                    child: Text(
                      'FR',
                      style: TextStyle(
                        color: weekday == 5 ? kBackgroundColor: kGreyColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Text(
                    '${friday}',
                    style: TextStyle(
                      color: weekday == 5 ? kBackgroundColor : Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
               ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, kCalendarPadding, 0),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.transparent),
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              color: weekday == 6 ? kCalendarColor : kBackgroundColor,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(6, 8, 6, 6),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                    child: Text(
                      'SA',
                      style: TextStyle(
                        color: weekday == 6 ? kBackgroundColor : kGreyColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Text(
                    '${saturday}',
                    style: TextStyle(
                      color: weekday == 6 ? kBackgroundColor : Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
               ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, kCalendarPadding, 0),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.transparent),
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              color: weekday == 7 ? kCalendarColor : kBackgroundColor,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(6, 8, 6, 6),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                    child: Text(
                      'SU',
                      style: TextStyle(
                        color: weekday == 7 ? kBackgroundColor : kGreyColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Text(
                    '${sunday}',
                    style: TextStyle(
                      color: weekday == 7 ? kBackgroundColor : Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
               ),
            ),
          ),
        ],
      ),
    );
  }
}