import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/page/HomePage/WeatherWidget/models.dart';
import 'package:http/http.dart' as http;
import 'package:schoolapp/page/HomePage/HomePage.dart';
import 'package:schoolapp/page/HomePage/WeatherWidget/PoopRain.dart';
import 'package:schoolapp/page/HomePage/WeatherWidget/weather_api_client.dart';

class WeatherWidget extends StatefulWidget {
  const WeatherWidget({ Key? key }) : super(key: key);

  @override
  _WeatherWidgetState createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget> {
  WeatherApiClient client = WeatherApiClient();
  Weather? data;
  
  Future<void> getData() async{
    data = await client.getCurrentWeather();
  }
  @override
  Widget build(BuildContext context) {
    return 
    Expanded(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, kDefaultPadding, 0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.transparent),
            borderRadius: const BorderRadius.all(Radius.circular(32)),
            color: kPurpleColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 0,
                blurRadius: 10,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ]
          ),
          width: 170,
          height: 160,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                Padding(
                  padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                  child: SizedBox(
                    height: 100,
                    child: FutureBuilder(
                      future: getData(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return Column(
                            children: [
                              CurrentWeather('${data?.temp}', '${data?.high}', '${data?.low}')
                            ],
                          );
                        } else if (snapshot.connectionState == ConnectionState.waiting) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        return Container();
                      }
                    )
                  ),
                 ),
              ]
              ),
            )
          ],
        )
        ),
      ),
    );
  }
}
