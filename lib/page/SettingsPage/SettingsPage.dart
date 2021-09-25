import 'package:flutter/material.dart';
import 'package:schoolapp/widget/NavigationDrawer.dart';
import 'package:schoolapp/widget/AppBar.dart';
import 'package:schoolapp/constants.dart';

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
    );
  }
}
