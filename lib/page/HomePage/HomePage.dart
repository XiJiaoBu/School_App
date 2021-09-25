import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/page/HomePage/HomeHeader.dart';
import 'package:schoolapp/page/HomePage/HomeWidget1.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        HomeHeader(),
        HomeWidget1(),
      ],
    )
  );
}
