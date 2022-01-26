import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/page/SettingsPage/FAQ.dart';
import 'package:schoolapp/page/SettingsPage/Notifications.dart';
import 'package:schoolapp/page/SettingsPage/Preferences.dart';
import 'package:schoolapp/page/SettingsPage/Feedback.dart';
import 'package:schoolapp/page/SettingsPage/Classes.dart';


class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 70, 0, 10),
              child: Text(
                'Settings',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
            ],
        ),
        Classes(),
        Notifications(),
        DarkMode(),
        FAQ(),
        FeedBack(),
      ],)
    );
  }
}

