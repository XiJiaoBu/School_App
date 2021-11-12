import 'package:flutter/material.dart';
import 'package:schoolapp/page/InboxPage/Announcement1.dart';
import 'package:schoolapp/widget/NavigationDrawer.dart';
import 'package:schoolapp/constants.dart';

class InboxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
     child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Inbox',
          style: TextStyle(
            color: kTextColor,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent
     ),
     body: Padding(
       padding: const EdgeInsets.fromLTRB(0,  0,  0,  0),
       child: Container(
         child: SingleChildScrollView(
          child: Column(
            children: [
              Announcements1(),
              Announcements2(),
              Announcements3(),
              Announcements4(),
              Announcements5(),
              Announcements6(),
              Announcements7(),
            ],
          ),
       ),
     ),
     )
    )
  );
}
