import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/page/HomePage/HomePage.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';


class HomeCalendar extends StatelessWidget {
  const HomeCalendar({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(kDefaultPadding, 5, 0, 0),
      child: Row(
        children: <Widget> [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 120, 0),
            child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.transparent),
                  borderRadius: const BorderRadius.all(Radius.circular(18)),
                  color: kBackgroundColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]
                ),
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: SizedBox(
                  height: 50,
                  width: 215,
                  child: TextButton(
                    onPressed: _launchCalendar,
                    child: Row(
                      children: <Widget> [
                      Icon(
                        Icons.calendar_today,
                          color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Text(DateFormat("EEEE, MMM. dd").format(DateTime.now()),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                          ),
                        )
                      ),
                    ]
                    ),
                  ),
                ),
              ),
            ),
            // Icon(
            //     Icons.notifications_none_rounded,
            //     color: kTextColor,
            //     size: 40,
            //   ),
          ],
      )
    );
  }
}

_launchCalendar() async {
  const url = 'http://www.yrdsb.ca/schools/millikenmills.hs/NewsEvents/Pages/School-Calendar.aspx';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}