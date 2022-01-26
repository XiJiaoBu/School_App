import 'package:flutter/material.dart';
import 'package:schoolapp/page/InboxPage/Announcements/Day1.dart';
import 'package:schoolapp/page/InboxPage/Announcements/Day2.dart';
import 'package:schoolapp/page/InboxPage/Announcements/Day3.dart';
import 'package:schoolapp/page/InboxPage/Announcements/Day4.dart';
import 'package:schoolapp/page/InboxPage/Announcements/Day5.dart';
import 'package:schoolapp/page/InboxPage/Announcements/Day6.dart';
import 'package:schoolapp/page/InboxPage/Announcements/Day7.dart';
import 'package:schoolapp/page/InboxPage/Announcements/Day8.dart';
import 'package:schoolapp/page/InboxPage/announcementStoring.dart';
import 'package:schoolapp/widget/NavigationDrawer.dart';
import 'package:schoolapp/constants.dart';

class InboxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      body: Row(
        mainAxisAlignment:  MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(kDefaultPadding, 0, kDefaultPadding, 0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 70, 0 ,0),
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          'Inbox',
                          style: TextStyle(
                            fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                            ),
                        ),
                      ),
                    ],
                  ),
                ),
                Day1(),
                Day2(),
                Day3(),
                Day4(),
                Day5(),
                Day6(),
                Day7(),
                Day8(),
              ],
            ),
          ),
        ],
    ),
  );
}
