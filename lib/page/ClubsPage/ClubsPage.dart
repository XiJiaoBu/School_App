import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/page/ClubsPage/School.dart';
import 'package:schoolapp/page/ClubsPage/Contact.dart';
import 'package:schoolapp/page/ClubsPage/Other.dart';


class ClubsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      elevation: 0,
      title: Text(
        'Resources',
        style: TextStyle(
          color: kTextColor,
          fontSize: 25,
        ),
      ),
      centerTitle: true,
      backgroundColor: kPrimaryColor,
   ),
   body: SingleChildScrollView(
     child: Column(
      children: [
        School(),
        Contact(),
        Other(),
   ]),
   )
  );
}
