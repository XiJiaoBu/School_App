import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/page/HomePage/HomePage.dart';

class HomeWidget1 extends StatelessWidget {
  const HomeWidget1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget> [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: kTextColor),
                borderRadius: const BorderRadius.all(Radius.circular(32)),
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
              width: 180,
              height: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                    Text(
                        'self',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 22,
                        )
                      ),
                      Text(
                        'screening',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 22,
                        )
                      )
                    ]
                  ),
                )
              ],
            )
          ),
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(27, 15, 0, 0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: kTextColor),
                borderRadius: const BorderRadius.all(Radius.circular(32)),
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
              width: 180,
              height: 180,
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
                      child: Column(
                        children: <Widget> [
                        Text(
                        'Markham ',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 20,
                        )
                      ),
                      Text(
                        '23\u00B0',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 45,
                        )
                      ),
                      Text(
                        'H: 25 L: 20',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 15,
                        ),
                      ),
                      ]
                      )
                     ),
                  ]
                  ),
                )
              ],
            )
          ),
        ),
      ],
    );
  }
}
