import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/page/HomePage/HomePage.dart';
import 'dart:async';

class P1 extends StatelessWidget {
  const P1({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
    );
  }
}