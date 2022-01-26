import 'package:flutter/material.dart';


class Weather{
  double? temp;
  double? high;
  double? low;

  Weather({required this.temp, required this.low, required this.high});

  Weather.fromJson(Map<String, dynamic> json) {
    temp = json['main']['temp'];
    low = json['main']['temp_min'];
    high = json['main']['temp_max'];
  }
}

