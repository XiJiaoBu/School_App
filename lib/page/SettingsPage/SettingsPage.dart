import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/page/SettingsPage/Notifications.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Settings',
          style: TextStyle(
            color: kTextColor,
            fontSize: 25,
          )
        ), 
        centerTitle: true, 
        backgroundColor: kPrimaryColor,
      ),
      body: Column(children: [
        Notifications(),
      ],)
    );
  }
}
