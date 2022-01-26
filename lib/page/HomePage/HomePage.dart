import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/page/HomePage/HomeHeader.dart';
import 'package:schoolapp/page/HomePage/HomeCalendar.dart';
import 'package:schoolapp/page/HomePage/HomeWidget1.dart';
import 'package:schoolapp/page/HomePage/Progress%20bar/HomeWidget2.dart';
import 'package:schoolapp/page/HomePage/HomeBigCalendar.dart';
import 'package:schoolapp/page/HomePage/HomeAnnouncements.dart';
import 'package:schoolapp/page/HomePage/WeatherWidget/weather_api_client.dart';
import 'package:schoolapp/page/HomePage/WeatherWidget/weatherwidget.dart';

import 'WeatherWidget/models.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 55, 0, 0),
            child: HomeCalendar(),
          ),
          HomeHeader(),
          BigCalendar(),
          HomeWidget2(),
          Row(
            children: [
              HomeWidget1(),
              WeatherWidget(),
            ],
          ),
          HomeAnnonucements(),
        ],
      ),
    )
  );
  }
}
