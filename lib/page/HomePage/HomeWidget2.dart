import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/page/HomePage/HomePage.dart';

class HomeWidget2 extends StatelessWidget {
  const HomeWidget2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: kTextColor),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: kTextColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              spreadRadius: 5,
              blurRadius: 7,
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
                  border: Border.all(width: 1, color: kTextColor),
                  borderRadius: const BorderRadius.all(Radius.circular(32)),
                  color: kTextColor,
                ),
                child: Text(
                  'Period 1',
                  style: TextStyle(
                    fontSize: 20, 
                    color: kPrimaryColor
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                width: 350,
                height: 10,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: kTextColor),
                  borderRadius: const BorderRadius.all(Radius.circular(32)),
                  color: Colors.red
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
                    color: kPrimaryColor
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