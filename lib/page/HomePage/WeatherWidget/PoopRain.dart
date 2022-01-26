import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';

Widget CurrentWeather(String temp, String high, String low) {
  return Container(
    height: 100,  
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
      Text(
      'Markham ',
      style: TextStyle(
        color: kBackgroundColor,
        fontSize: 20,
      )
    ),
    Text(
      '${temp}\u00B0',
      style: TextStyle(
        color: kBackgroundColor,
        fontSize: 45,
      )
    ),
    Text(
      'H: ${high}\u00B0 L: ${low}\u00B0',
      style: TextStyle(
        color: kBackgroundColor,
        fontSize: 15,
      ),
    ),
    ]
    ),
  );
}