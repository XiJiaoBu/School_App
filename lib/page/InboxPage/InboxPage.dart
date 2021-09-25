import 'package:flutter/material.dart';
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
        backgroundColor: kPrimaryColor,
     ),
     body: Container(
       child: Column(),
     ),
    )
  );
}
