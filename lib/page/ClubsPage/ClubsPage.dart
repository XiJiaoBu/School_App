import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/widget/NavigationDrawer.dart';
import 'package:schoolapp/widget/AppBar.dart';

class ClubsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      elevation: 0,
      title: Text(
        'Clubs',
        style: TextStyle(
          color: kTextColor,
          fontSize: 25,
        ),
      ),
      centerTitle: true,
      backgroundColor: kPrimaryColor,
   ),
  );
}
