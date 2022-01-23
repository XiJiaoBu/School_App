import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/page/HomePage/HomePage.dart';
import 'package:intl/intl.dart';



class HomeCalendar extends StatelessWidget {
  const HomeCalendar({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
      child: Row(
        children: <Widget> [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 120, 0),
            child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: kTextColor),
                  borderRadius: const BorderRadius.all(Radius.circular(18)),
                  color: kTextColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]
                ),
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Row(
                  children: <Widget> [
                  Icon(
                    Icons.calendar_today,
                      color: kPrimaryColor,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text(DateFormat("EEEE, MMM. dd").format(DateTime.now()),
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 18
                      ),
                    )
                  ),
                ]
                ),
              ),
            ),
            Icon(
                Icons.notifications_none_rounded,
                color: kTextColor,
                size: 40,
              ),
          ],
      )
    );
  }
}