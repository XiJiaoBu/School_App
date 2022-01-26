import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/page/HomePage/HomePage.dart';
import 'dart:async';

class HomeWidget2 extends StatefulWidget {
  const HomeWidget2({ Key? key }) : super(key: key);

  @override
  _HomeWidget2State createState() => _HomeWidget2State();
}

class _HomeWidget2State extends State<HomeWidget2> {

  @override
    double _initial = 0.0;
    void update(){
      Timer.periodic(Duration(minutes: 1), (timer){
        setState(() {
          _initial = _initial + 0.006666;
        });
      });
    }
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(kDefaultPadding, 20, kDefaultPadding, 10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.transparent),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: kRedColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]
        ),
        child: Column(
          children: <Widget> [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Container(
                width: 1000,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.transparent),
                  borderRadius: const BorderRadius.all(Radius.circular(32)),
                  color: Colors.transparent,
                ),
                child: Text(
                  'Period 1',
                  style: TextStyle(
                    fontSize: 20, 
                    color: kBackgroundColor
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                width: 350,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: LinearProgressIndicator(
                    backgroundColor: kBackgroundColor,
                    valueColor: AlwaysStoppedAnimation<Color>(kLimeColor),
                    minHeight: 10,
                    value: _initial,
                    ),
                ),
                ),
              ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget> [
                Text(
                  '8:50 - 11:35',
                  style: TextStyle(
                    fontSize: 18,
                    color: kBackgroundColor
                  ),
                )
              ]
            ),
          )
         ]
        ),
      )
    );
  }
}
